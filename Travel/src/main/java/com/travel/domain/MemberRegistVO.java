package com.travel.domain;

import lombok.Data;

//@Data
public class MemberRegistVO {
	private String member_Id;
	private String member_Password;
	private String member_Name;
	private String member_Tel;
	private String member_Address;
	private String member_Price;
	private String member_Email;
	private String member_BirthDate;
	private String member_Grade;
	public String getMember_Price() {
		return member_Price;
	}
	public void setMember_Price(String member_Price) {
		this.member_Price = member_Price;
	}
	private String member_Hint;
	public String getMember_Id() {
		return member_Id;
	}
	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}
	public String getMember_Password() {
		return member_Password;
	}
	public void setMember_Password(String member_Password) {
		this.member_Password = member_Password;
	}
	public String getMember_Name() {
		return member_Name;
	}
	public void setMember_Name(String member_Name) {
		this.member_Name = member_Name;
	}
	public String getMember_Tel() {
		return member_Tel;
	}
	public void setMember_Tel(String member_Tel) {
		this.member_Tel = member_Tel;
	}
	public String getMember_Address() {
		return member_Address;
	}
	public void setMember_Address(String member_Address) {
		this.member_Address = member_Address;
	}
	public String getMember_Email() {
		return member_Email;
	}
	public void setMember_Email(String member_Email) {
		this.member_Email = member_Email;
	}
	public String getMember_BirthDate() {
		return member_BirthDate;
	}
	public void setMember_BirthDate(String member_BirthDate) {
		this.member_BirthDate = member_BirthDate;
	}
	public String getMember_Grade() {
		return member_Grade;
	}
	public void setMember_Grade(String member_Grade) {
		this.member_Grade = member_Grade;
	}
	public String getMember_Hint() {
		return member_Hint;
	}
	public void setMember_Hint(String member_Hint) {
		this.member_Hint = member_Hint;
	}
	@Override
	public String toString() {
		return "MemberRegistVO [member_Id=" + member_Id + ", member_Password=" + member_Password + ", member_Name="
				+ member_Name + ", member_Tel=" + member_Tel + ", member_Address=" + member_Address + ", member_Email="
				+ member_Email + ", member_BirthDate=" + member_BirthDate + ", member_Grade=" + member_Grade
				+ ", member_Hint=" + member_Hint + "]";
	}
	
	
}
