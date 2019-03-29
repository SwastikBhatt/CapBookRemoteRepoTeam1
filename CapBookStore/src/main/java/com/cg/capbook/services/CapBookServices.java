package com.cg.capbook.services;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cg.capbook.beans.Account;
import com.cg.capbook.beans.Post;
import com.cg.capbook.exceptions.AccountExistingException;
import com.cg.capbook.exceptions.AccountNotFoundException;
import com.cg.capbook.exceptions.ChangePasswordException;
import com.cg.capbook.exceptions.CheckPasswordException;
import com.cg.capbook.exceptions.CheckSecurityQandA;
import com.cg.capbook.exceptions.LoggedOutException;
import com.cg.capbook.exceptions.SecurityProfileQandAException;

public interface CapBookServices {

	Account openAccount(Account account) throws AccountExistingException, AccountNotFoundException;
	public String encryptPassword(String password);
	Account getAccount(String emailId,String password) throws AccountNotFoundException;
	Account changePassword(String emailId,String securityQuestion,String securityAnswer, String newPass) throws AccountNotFoundException, CheckSecurityQandA, CheckPasswordException;
	boolean checkNewPass(String newPass,String rNewPass) throws CheckPasswordException;
	boolean checkNewWithOld(String newPass, String oldPass) throws CheckPasswordException;
	public boolean checkNewPassProfile(String newPass, String rNewPass) throws ChangePasswordException;
	Account changePasswordInProfile(String emailId, String securityQuestion, String securityAnswer, String newPass)
			throws AccountNotFoundException, ChangePasswordException, SecurityProfileQandAException;
	public boolean checkNewWithOldProfile(String newPass, String oldPass) throws ChangePasswordException;
	public Account updateProfile(Account profile) throws AccountNotFoundException ;
	Account logout();
	public String getSessionEmailId() throws LoggedOutException;
	Account getAccount(String emailId) throws AccountNotFoundException;
	Post createPost(Post post);
	Post updatePostLikes(Post post);
	Post updatePostDislikes(Post post);
	public Account updateProfilePicture(MultipartFile file) throws AccountNotFoundException, IllegalStateException, IOException;
	public Account createImagePost(MultipartFile file) throws AccountNotFoundException, IllegalStateException, IOException;
	public Account createAlbum(MultipartFile file) throws AccountNotFoundException, IllegalStateException, IOException, LoggedOutException ;
	public List<Account> searchAllUsersByName(String userName) throws AccountNotFoundException;
	public List<Account> birthdayAll() throws AccountNotFoundException;
}


