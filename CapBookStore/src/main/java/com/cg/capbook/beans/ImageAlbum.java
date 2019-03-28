package com.cg.capbook.beans;

import java.util.List;

public class ImageAlbum {
	private List<String> imageContent;
	private int noOfLikes;
	private int noOfDislikes;
	public ImageAlbum() {
		super();
		// TODO Auto-generated constructor stub
	}
	public List<String> getImageContent() {
		return imageContent;
	}
	public void setImageContent(List<String> imageContent) {
		this.imageContent = imageContent;
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
	public ImageAlbum(List<String> imageContent, int noOfLikes, int noOfDislikes) {
		super();
		this.imageContent = imageContent;
		this.noOfLikes = noOfLikes;
		this.noOfDislikes = noOfDislikes;
	}
	@Override
	public String toString() {
		return "ImageAlbum [noOfLikes=" + noOfLikes + ", noOfDislikes=" + noOfDislikes + "]";
	}
	
}
