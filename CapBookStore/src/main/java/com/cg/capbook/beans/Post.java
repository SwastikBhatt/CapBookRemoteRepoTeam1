package com.cg.capbook.beans;

import java.util.HashMap;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
@Entity
public class Post {
	@Id
	private String profilePost;
	private HashMap<String, String> comments;
	private int likes,dislikes;
	@ManyToOne
	private Account account;
	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Post(String profilePost, HashMap<String, String> comments, int likes, int dislikes, Account account) {
		super();
		this.profilePost = profilePost;
		this.comments = comments;
		this.likes = likes;
		this.dislikes = dislikes;
		this.account = account;
	}
	public String getProfilePost() {
		return profilePost;
	}
	public void setProfilePost(String profilePost) {
		this.profilePost = profilePost;
	}
	public HashMap<String, String> getComments() {
		return comments;
	}
	public void setComments(HashMap<String, String> comments) {
		this.comments = comments;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public int getDislikes() {
		return dislikes;
	}
	public void setDislikes(int dislikes) {
		this.dislikes = dislikes;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	@Override
	public String toString() {
		return "Post [profilePost=" + profilePost + ", comments=" + comments + ", likes=" + likes + ", dislikes="
				+ dislikes + ", account=" + account + "]";
	}
	
	
}
