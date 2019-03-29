package com.cg.capbook.services;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.cg.capbook.beans.Account;
import com.cg.capbook.beans.ImageAlbum;
import com.cg.capbook.beans.Post;
import com.cg.capbook.daoservices.AccountDAO;
import com.cg.capbook.daoservices.ImageAlbumDAO;
import com.cg.capbook.daoservices.PostDAO;
import com.cg.capbook.exceptions.AccountExistingException;
import com.cg.capbook.exceptions.AccountNotFoundException;
import com.cg.capbook.exceptions.ChangePasswordException;
import com.cg.capbook.exceptions.CheckPasswordException;
import com.cg.capbook.exceptions.CheckSecurityQandA;
import com.cg.capbook.exceptions.LoggedOutException;
import com.cg.capbook.exceptions.SecurityProfileQandAException;

@Component("capBookServices")
public class CapBookServicesImpl implements CapBookServices {
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	ImageAlbumDAO imageAlbumDAO;
	@Autowired
	PostDAO postDAO;
	static String getLocation="C:\\Users\\ADM-IG-HWDLAB1D\\git\\CapBookLocalRepoTeam1\\CapBookStore\\src\\main\\resources\\static\\images\\";
	static String sessionEmailId;
	static String sessionPassword;
	public String getSessionEmailId() throws LoggedOutException
	{
//		System.out.println(sessionEmailId);
//		if(sessionEmailId.equals(null)) 
//			throw new LoggedOutException("You have already logged out");
		return sessionEmailId;
	}
	@Override
	public Account openAccount(Account account) throws  AccountExistingException {

		List<Account> accountList=accountDAO.findAll();
		for (Account account2 : accountList) {
			if(account2.getEmailId().equals(account.getEmailId()))
				throw new AccountExistingException("Account Already Exists");
		}
		//sessionEmailId=account.getEmailId();
		account.setPassword(encryptPassword(account.getPassword()));
		 return accountDAO.save(account);
		 
	}
	@Override
	public Account getAccount(String emailId, String password) throws AccountNotFoundException {

		Account account= accountDAO.findById(emailId).orElseThrow(()->new AccountNotFoundException("Invalid emailId"));
		sessionEmailId=account.getEmailId();
		if (account.getPassword().equals(encryptPassword(password))) {
			return account;
		}
		else {
			throw new AccountNotFoundException("Incorrect Password");
		}
	}
	@Override
	public Account getAccount(String emailId) throws AccountNotFoundException {
		Account account= accountDAO.findById(emailId).orElseThrow(()->new AccountNotFoundException("Invalid emailId"));
		sessionEmailId=account.getEmailId();
		return account;
	}
	public String encryptPassword(String password) {
		StringBuffer newPassword= new StringBuffer();
		for(int i=0;i<password.length();i++) 
		{
			newPassword.append((int)password.charAt(i));
		}
		String newPassword1= newPassword.toString() + newPassword.reverse().toString();
		return newPassword1;	
	}
	@Override
	public Account changePassword(String emailId,String securityQuestion,String securityAnswer,String newPass) throws AccountNotFoundException, CheckSecurityQandA, CheckPasswordException {
		Account account= accountDAO.findById(emailId).orElseThrow(()->new AccountNotFoundException("Invalid emailId"));
		if(checkNewWithOld(encryptPassword(newPass), account.getPassword())==false) {
			if(securityQuestion.equals(account.getSecurityQuestion())) {
				if(securityAnswer.equals(account.getSecurityAnswer())) {
					account.setPassword(encryptPassword(newPass)); 
					accountDAO.save(account);
				}
				else
					throw new CheckSecurityQandA("Incorrect Security Answer ");		
			}
			else
				throw new CheckSecurityQandA("Incorrect Security Question ");
		}
		return account;
	}
	@Override
	public Account changePasswordInProfile(String emailId,String securityQuestion,String securityAnswer,String newPass) throws AccountNotFoundException,ChangePasswordException, SecurityProfileQandAException {
		Account account= accountDAO.findById(emailId).orElseThrow(()->new AccountNotFoundException("Invalid emailId"));
		if(checkNewWithOldProfile(encryptPassword(newPass), account.getPassword())==false) {
			if(securityQuestion.equals(account.getSecurityQuestion())) {
				if(securityAnswer.equals(account.getSecurityAnswer())) {
					account.setPassword(encryptPassword(newPass)); 
					accountDAO.save(account);
				}
				else
					throw new SecurityProfileQandAException("Incorrect Security Answer ");		
			}
			else
				throw new SecurityProfileQandAException("Incorrect Security Question ");
		}
		return account;
	}
	@Override
	public boolean checkNewPass(String newPass, String rNewPass) throws CheckPasswordException {
		if(newPass.equals(rNewPass))
			return true;
		throw new CheckPasswordException("Passwords don't match");
	}
	@Override
	public boolean checkNewPassProfile(String newPass, String rNewPass) throws ChangePasswordException{
		if(newPass.equals(rNewPass))
			return true;
		throw new ChangePasswordException("Passwords don't match");
	}
	@Override
	public boolean checkNewWithOld(String newPass, String oldPass) throws CheckPasswordException {
		if(newPass.equals(oldPass))
			throw new CheckPasswordException("New Password Is Same as Previous One");
		return false;
	}
	@Override
	public boolean checkNewWithOldProfile(String newPass, String oldPass) throws ChangePasswordException  {
		if(newPass.equals(oldPass))
			throw new ChangePasswordException("New Password Is Same as Previous One");
		return false;
	}
	public Account updateProfile(Account profile) throws AccountNotFoundException {	
		Account profile1=accountDAO.findById(sessionEmailId).orElseThrow(()->new AccountNotFoundException());
		if(!profile.getFirstName().isEmpty())
			profile1.setFirstName(profile.getFirstName());
		if(!profile.getLastName().isEmpty())
			profile1.setLastName(profile.getLastName());
		if(!(profile.getGender()=='\u0000'))
			profile1.setGender(profile.getGender());
		if(!profile.getDateOfBirth().isEmpty())
			profile1.setDateOfBirth(profile.getDateOfBirth());
		if(!profile.getCountry().isEmpty())
			profile1.setCountry(profile.getCountry());
		if(!profile.getDesignation().isEmpty())
			profile1.setDesignation(profile.getDesignation());
		if(!profile.getRelationshipStatus().isEmpty())
			profile1.setRelationshipStatus(profile.getRelationshipStatus());
		if(!profile.getUserBio().isEmpty())
			profile1.setUserBio(profile.getUserBio());
		if(!profile.getCurrentCity().isEmpty())
			profile1.setCurrentCity(profile.getCurrentCity());
		
		return accountDAO.save(profile1);
	}
	@Override
	public Account logout() {
		sessionEmailId=null;
		System.out.println("Logged Out");
		return null;
	}
	@Override
	public Post createPost(Post post) {
		post.setEmailId(sessionEmailId);
		postDAO.save(post);
		return post;
	}
	@Override
	public Post updatePostLikes(Post post) {
		Post oldPost=postDAO.findById(post.getPostId()).get();
		post.setNoOfLikes(oldPost.getNoOfLikes()+1);
		return postDAO.save(post);
	}
	@Override
	public Post updatePostDislikes(Post post) {
		Post oldPost=postDAO.findById(post.getPostId()).get();
		post.setNoOfDislikes(oldPost.getNoOfDislikes()+1);
		return postDAO.save(post);
	}
	public Account updateProfilePicture(MultipartFile file) throws AccountNotFoundException, IllegalStateException, IOException {	
		Account profile=accountDAO.findById(sessionEmailId).orElseThrow(()->new AccountNotFoundException());
		Path path=Paths.get(getLocation+file.getOriginalFilename());
		file.transferTo(path);
		profile.setData("/images/"+file.getOriginalFilename());
		return accountDAO.save(profile);
	}
	public Account createImagePost(MultipartFile file) throws AccountNotFoundException, IllegalStateException, IOException {	
		Account profile=accountDAO.findById(sessionEmailId).orElseThrow(()->new AccountNotFoundException());
		Path path=Paths.get(getLocation+file.getOriginalFilename());
		file.transferTo(path);
		Map<String, Post> postsProfile=profile.getPost();
		System.out.println("haa");
		Post post=new Post();
		System.out.println("haa2");
		post.setImageContent("/images/"+file.getOriginalFilename());
		post.setPostContent("Has posted an image");
		post.setEmailId(sessionEmailId);
		post.setNoOfLikes(0);
		post.setNoOfDislikes(0);
		postsProfile.put(sessionEmailId,post);
		profile.setPost(postsProfile);
		postDAO.save(post);
		return accountDAO.save(profile);
	}
	public Account createAlbum(MultipartFile file) throws AccountNotFoundException, IllegalStateException, IOException, LoggedOutException {	
		Account profile= getAccount(sessionEmailId);
		System.out.println(sessionEmailId);
		Path path=Paths.get(getLocation+file.getOriginalFilename());
		file.transferTo(path);
		Map<String, ImageAlbum> imageAlbum=profile.getImages();
		System.out.println("haa");
		ImageAlbum album=new ImageAlbum();
		album.setNoOfDislikes(0);
		album.setNoOfLikes(0);
		album.setAccount(profile);
		album.setEmailId(sessionEmailId);
		album.setImageContent("/images/"+file.getOriginalFilename());
		imageAlbum.put(sessionEmailId, album);
		imageAlbumDAO.save(album);
		profile.setImages(imageAlbum);
		return accountDAO.save(profile);
	}
	@Override
	public List<Account> searchAllUsersByName(String userName) throws AccountNotFoundException{
		List<Account> listUser=accountDAO.searchAllUserByName(userName.toLowerCase());
//		for (Account profile : listUser) 
//			profile.setData(null);
		if(listUser.isEmpty())
			throw new AccountNotFoundException("Account Not Found");
		return listUser;
	}
	public Account incrementLike(Post post) throws AccountNotFoundException, IllegalStateException, IOException, LoggedOutException {
		return null;	
//		Account profile= getAccount(sessionEmailId);
//		Map<String, Post> posts=profile.getPost();
//		System.out.println("haa");
//		
//		imageAlbum.put(sessionEmailId, album);
//		imageAlbumDAO.save(album);
//		profile.setImages(imageAlbum);
//		return accountDAO.save(profile);

	}
	
	public List<Account> birthdayAll() throws AccountNotFoundException
	{
		List<Account> listUser=accountDAO.findAll();
//		for (Account profile : listUser) 
//			profile.setData(null);
		if(listUser.isEmpty())
			throw new AccountNotFoundException("Account Not Found");
		return listUser;
	}
	
	
	
	
	
	
}
