package com.cg.capbook.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
@Entity
public class Post {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int postId;
	private String emailId;
	private String postContent;
	private String imageContent;
	private int noOfLikes,noOfDislikes;
	@ManyToOne
	private Account account;
	public Post() {}
	
	public Post(int postId, String emailId, String postContent, String imageContent, int noOfLikes, int noOfDislikes,
			Account account) {
		super();
		this.postId = postId;
		this.emailId = emailId;
		this.postContent = postContent;
		this.imageContent = imageContent;
		this.noOfLikes = noOfLikes;
		this.noOfDislikes = noOfDislikes;
		this.account = account;
	}

	public Post(int postId, String emailId, String postContent, int noOfLikes, int noOfDislikes, Account account) {
		super();
		this.postId = postId;
		this.emailId = emailId;
		this.postContent = postContent;
		this.noOfLikes = noOfLikes;
		this.noOfDislikes = noOfDislikes;
		this.account = account;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public int getNoOfLikes() {
		return noOfLikes;
	}

	public void setNoOfLikes(int noOfLikes) {
		this.noOfLikes = noOfLikes;
	}

	public int getNoOfDislikes() {
		return noOfDislikes;
	}

	public void setNoOfDislikes(int noOfDislikes) {
		this.noOfDislikes = noOfDislikes;
	}

	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}

	public String getImageContent() {
		return imageContent;
	}

	public void setImageContent(String imageContent) {
		this.imageContent = imageContent;
	}

	@Override
	public String toString() {
		return "Post [postId=" + postId + ", emailId=" + emailId + ", postContent=" + postContent + ", imageContent="
				+ imageContent + ", noOfLikes=" + noOfLikes + ", noOfDislikes=" + noOfDislikes + ", account=" + account
				+ "]";
	}

}