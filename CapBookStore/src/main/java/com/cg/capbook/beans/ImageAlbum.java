
package com.cg.capbook.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import
javax.persistence.ManyToOne;

@Entity 
public class ImageAlbum {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int imageId;
	private String emailId;
	@ManyToOne 
	private Account account; 
	private String imageContent;
	private int	noOfLikes;
	private int noOfDislikes; 
	public ImageAlbum() { super(); }



	public Account getAccount() { return account; }

	public void setAccount(Account account) { this.account = account; }


	public int getNoOfLikes() { return noOfLikes; } public void setNoOfLikes(int
			noOfLikes) { this.noOfLikes = noOfLikes; } public int getNoOfDislikes() {
				return noOfDislikes; } public void setNoOfDislikes(int noOfDislikes) {
					this.noOfDislikes = noOfDislikes; }

				public String getImageContent() { return imageContent; }

				public void setImageContent(String imageContent) { this.imageContent =
						imageContent; }
				public String getEmailId() {
					return emailId;
				}
				public void setEmailId(String emailId) {
					this.emailId = emailId;
				}



				public ImageAlbum(String emailId, Account account, String imageContent, int noOfLikes,
						int noOfDislikes) {
					super();
					this.emailId = emailId;
					this.account = account;
					this.imageContent = imageContent;
					this.noOfLikes = noOfLikes;
					this.noOfDislikes = noOfDislikes;
				}



				public ImageAlbum(int imageId, String emailId, Account account, String imageContent, int noOfLikes,
						int noOfDislikes) {
					super();
					this.imageId = imageId;
					this.emailId = emailId;
					this.account = account;
					this.imageContent = imageContent;
					this.noOfLikes = noOfLikes;
					this.noOfDislikes = noOfDislikes;
				}



				@Override
				public String toString() {
					return "ImageAlbum [imageId=" + imageId + ", emailId=" + emailId + ", account=" + account
							+ ", imageContent=" + imageContent + ", noOfLikes=" + noOfLikes + ", noOfDislikes="
							+ noOfDislikes + "]";
				}




}
