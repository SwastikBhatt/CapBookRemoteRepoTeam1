package com.cg.capbook.controller;


import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cg.capbook.beans.Account;
import com.cg.capbook.beans.Post;
import com.cg.capbook.exceptions.AccountExistingException;
import com.cg.capbook.exceptions.AccountNotFoundException;
import com.cg.capbook.exceptions.ChangePasswordException;
import com.cg.capbook.exceptions.CheckPasswordException;
import com.cg.capbook.exceptions.CheckSecurityQandA;
import com.cg.capbook.exceptions.LoggedOutException;
import com.cg.capbook.exceptions.NoFriendRequestReceivedException;
import com.cg.capbook.exceptions.SecurityProfileQandAException;
import com.cg.capbook.services.CapBookServices;

@Controller
public class CapBookServicesController {
	@Autowired
	CapBookServices services;

	@RequestMapping("/registerSuccess")
	public ModelAndView openAccount(Account account) throws AccountExistingException, AccountNotFoundException{
		account = services.openAccount(account);
		return new ModelAndView("registrationSuccessPage","account",account);
	}


	@RequestMapping("/homepageURI")
	public ModelAndView login(@RequestParam String emailId,String password) throws AccountNotFoundException {
		Account account = services.getAccount(emailId,password);
		if(account!=null)
			return new ModelAndView("loginSuccess","account",account);
		else
			return new ModelAndView("login","account",account);
	}
	@RequestMapping("/myProfile")
	public ModelAndView myProfile() throws AccountNotFoundException, LoggedOutException {
		Account account = services.getAccount(services.getSessionEmailId());
			return new ModelAndView("myProfilePage","account",account);
	}

	@RequestMapping("/changePassword")
	public ModelAndView changePassword(@RequestParam String emailId,String securityQuestion,String securityAnswer,String newPass,String rNewPass) throws AccountNotFoundException, CheckPasswordException, CheckSecurityQandA {
		if(services.checkNewPass(newPass, rNewPass)) {
			Account account = services.changePassword(emailId, securityQuestion, securityAnswer,newPass);
			if(account!=null)
				return new ModelAndView("loginSuccess","account",account);
			else
				return new ModelAndView("resetPasswordPage");
		}
		throw new CheckPasswordException("Passwords don't match"); 
	}
	
	@RequestMapping("/createPost")
	public ModelAndView createPost(@RequestParam String postContent) throws AccountNotFoundException, CheckPasswordException, ChangePasswordException, SecurityProfileQandAException, LoggedOutException {
		Account account= services.getAccount(services.getSessionEmailId());
		Post post= new Post();
		post.setAccount(account);
		post.setPostContent(postContent);
		post.setNoOfLikes(0);
		post.setNoOfDislikes(0);
		post=services.createPost(post);
		Map<String, Post> accountPost=account.getPost();
		accountPost.put(services.getSessionEmailId(),post);
		
		account.setPost(accountPost);
		
		System.out.println(account);
		return new ModelAndView("myProfilePage","account",account);
	}
	@RequestMapping("/changePasswordProfile")
	public ModelAndView changePasswordProfile(@RequestParam String emailId,String securityQuestion,String securityAnswer,String newPass,String rNewPass) throws AccountNotFoundException, CheckPasswordException, ChangePasswordException, SecurityProfileQandAException {
		if(services.checkNewPassProfile(newPass, rNewPass)) {
			Account account = services.changePasswordInProfile(emailId, securityQuestion, securityAnswer,newPass);
			if(account!=null)
				return new ModelAndView("loginSuccess","account",account);
			else {
				return new ModelAndView("allSettingsPage");
			}
		}
		throw new ChangePasswordException("Passwords don't match"); 
	}
	@RequestMapping("/searchAccounts")
	public ModelAndView searchAllUsersByNameInAccount(@RequestParam String firstName) throws AccountNotFoundException {
		List<Account> accounts=services.searchAllUsersByName(firstName);
		return new ModelAndView("searchResultPage","accounts",accounts);
	}
	
	@RequestMapping("/updateProfile")
	public ModelAndView updateProfile(@ModelAttribute Account account/* ,@RequestParam MultipartFile file */) throws AccountNotFoundException, LoggedOutException, IllegalStateException, IOException  {
		System.out.println("Haa");
		//		if(services.getSessionEmailId().isEmpty())
//			throw new AccountNotFoundException("You have already logged out");
	//	services.getSessionEmailId();
		Account account1=services.updateProfile(account);

		return new ModelAndView("allSettingsPage","account1",account1);
	}
	@RequestMapping("/logout")
	public ModelAndView userLogout() throws AccountNotFoundException  {
		services.logout();
		return new ModelAndView("login","account",null);
		
	}
	@RequestMapping("/updateProfilePic")
	public ModelAndView updateProfilePic(@RequestParam MultipartFile file ) throws AccountNotFoundException, LoggedOutException, IllegalStateException, IOException  {
		Account account1= services.getAccount(services.getSessionEmailId());
		account1=services.updateProfilePicture(file);
		return new ModelAndView("allSettingsPage","account1",account1);
	}
	
	@RequestMapping("/createImagePost")
	public ModelAndView createImagePost(@RequestParam MultipartFile file ) throws AccountNotFoundException, LoggedOutException, IllegalStateException, IOException  {
		System.out.println("Haa");
		Account account1= services.getAccount(services.getSessionEmailId());
		account1=services.createImagePost(file);
		return new ModelAndView("myProfilePage","account1",account1);
	}
	
	@RequestMapping("/updateAlbum")
	public ModelAndView updateAlbum(@RequestParam MultipartFile file ) throws AccountNotFoundException, LoggedOutException, IllegalStateException, IOException  {
		System.out.println("Haa");
		Account account1= services.getAccount(services.getSessionEmailId());
		account1=services.createAlbum(file);
		return new ModelAndView("imageAlbum","account1",account1);
	}
	
	
	@RequestMapping("/likeCounter")
	public ModelAndView likeCounter(@RequestParam Post post) throws AccountNotFoundException, LoggedOutException, IllegalStateException, IOException  {
		System.out.println("Haa");
		Account account1= services.getAccount(services.getSessionEmailId());
		//account1=services.(file);
		return new ModelAndView("imageAlbum","account1",account1);
	}
	@RequestMapping("/searchBirthdays")
	public ModelAndView searchBirthdaysAll() throws AccountNotFoundException {
		List<Account> accounts=services.birthdayAll();
		return new ModelAndView(/*"myProfilePage"*/"birthdayPage","accounts",accounts);
	}
	@RequestMapping("/viewProfile")
	public ModelAndView viewProfile() throws AccountNotFoundException, LoggedOutException {
		Account account = services.getAccount(services.getSessionEmailId());
			return new ModelAndView("myProfilePage","account",account);
	}
	@RequestMapping("/uploadStatus")
	public ModelAndView uploadStatusProfile(@RequestParam String userBio) throws AccountNotFoundException {
		Account account=services.uploadStatusPro(userBio);
		return new ModelAndView("loginSuccess","account",account);
	}
	@RequestMapping("/viewAllPosts")
	public ModelAndView viewAllPostsProfile() {
		return new ModelAndView("loginSuccess","posts",services.viewAllPost());
	}
	
@RequestMapping("/sendRequest")
	public ModelAndView sendRequestToAFriend(@RequestParam String emailIdTo) throws AccountNotFoundException, LoggedOutException {
		return new ModelAndView("sendFriendRequest", "successMessage", services.sendRequest(services.getSessionEmailId(),emailIdTo));
	}
	
	@RequestMapping("/viewPendingReq")
	public ModelAndView viewPendingReq() throws AccountNotFoundException, NoFriendRequestReceivedException{
		return new ModelAndView("viewAndApprove", "pendingFriends", services.viewPendingRequestList());
	}
	
	@RequestMapping("/acceptPendingReq")
	public ModelAndView acceptPendingReq(@RequestParam String emailIdTo) throws AccountNotFoundException, LoggedOutException   {
		return new ModelAndView("viewAndApprove", "a_status",services.acceptRequest(services.getSessionEmailId(),emailIdTo));
	}
	
	
	@RequestMapping("/rejectPendingReq")
	public ModelAndView rejectPendingReq(@RequestParam String emailIdTo) throws AccountNotFoundException, LoggedOutException   {
		return new ModelAndView("viewAndApprove", "r_status",services.rejectRequest(services.getSessionEmailId(),emailIdTo));
	}
	
	@RequestMapping("/viewFriendList")
	public ModelAndView viewFriendListOfAUser() throws AccountNotFoundException  {
		return new ModelAndView("viewAndApprove","friends",services.viewFriendList());
	}
	
	
	
}