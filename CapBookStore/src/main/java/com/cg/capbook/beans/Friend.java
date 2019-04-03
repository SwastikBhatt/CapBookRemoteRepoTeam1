package com.cg.capbook.beans;

import javax.persistence.Embeddable;

@Embeddable
public class Friend {

	private String name;
	private String emailId;
	private int approvalStatus;
	public Friend() {
		super();
	}
	public Friend(String name, String emailId) {
		super();
		this.name = name;
		this.emailId = emailId;
	}
	
	public Friend(String name, String emailId, int approvalStatus) {
		super();
		this.name = name;
		this.emailId = emailId;
		this.approvalStatus = approvalStatus;
	}
	
	public int getApprovalStatus() {
		return approvalStatus;
	}
	public void setApprovalStatus(int approvalStatus) {
		this.approvalStatus = approvalStatus;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
}

















//package com.cg.capbook.beans;
//import java.util.Map;
//
//import javax.persistence.CascadeType;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.ManyToMany;
//import javax.persistence.MapKey;
//@Entity
//public class Friend {
//	@Id
//	@GeneratedValue(strategy=GenerationType.SEQUENCE)
//	private int friendId;
//	private String fromUserId;
//	private String toUserId;
//	private boolean friendshipStatus;
//	@MapKey
//    @ManyToMany(fetch = FetchType.LAZY,cascade = {CascadeType.PERSIST,CascadeType.MERGE},mappedBy = "friends")
//	private Map<String, Account> accounts;
//	/*
//	 * @ManyToMany
//	 * 
//	 * @MapKey private Map<Integer, Message> messages;
//	 */
//	public Friend() {
//		super();
//	}
//	public Friend(int friendId, String fromUserId, String toUserId) {
//		super();
//		this.friendId = friendId;
//		this.fromUserId = fromUserId;
//		this.toUserId = toUserId;
//	}
//	public Friend(String toUserId, String fromUserId) {
//		this.toUserId=toUserId;
//		this.fromUserId=fromUserId;
//	}
//	public int getFriendId() {
//		return friendId;
//	}
//	public void setFriendId(int friendId) {
//		this.friendId = friendId;
//	}
//	public String getFromUserId() {
//		return fromUserId;
//	}
//	public void setFromUserId(String fromUserId) {
//		this.fromUserId = fromUserId;
//	}
//	public String getToUserId() {
//		return toUserId;
//	}
//	public void setToUserId(String toUserId) {
//		this.toUserId = toUserId;
//	}
//	public boolean isFriendshipStatus() {
//		return friendshipStatus;
//	}
//	public void setFriendshipStatus(boolean friendshipStatus) {
//		this.friendshipStatus = friendshipStatus;
//	}
//	/*public Map<String, Profile> getProfiles() {
//		return profiles;
//	}
//	public void setProfiles(Map<String, Profile> profiles) {
//		this.profiles = profiles;
//	}
//	*/
//	/*
//	 * public Map<Integer, Message> getMessages() { return messages; } public void
//	 * setMessages(Map<Integer, Message> messages) { this.messages = messages; }
//	 */
//	
//	@Override
//	public String toString() {
//		return "Friend [friendId=" + friendId + ", fromUserId=" + fromUserId + ", toUserId=" + toUserId
//				+ ", friendshipStatus=" + friendshipStatus + "]";
//	}
//}
