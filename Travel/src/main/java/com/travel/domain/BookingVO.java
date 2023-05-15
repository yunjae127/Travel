package com.travel.domain;



public class BookingVO {
	private String booking_Id;
	private String booking_Tel;
	private String booking_Name;
	private String booking_Email;
	private String booking_Date;
	private String booking_BirthDate;
	private Integer companion_Num;
	private String booking_Content;
	private Integer booking_Price;
	private String member_Id;
	
	
	
	
	public String getMember_Id() {
		return member_Id;
	}
	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}
	public Integer getBooking_Price() {
		return booking_Price;
	}
	public void setBooking_Price(Integer booking_Price) {
		this.booking_Price = booking_Price;
	}

	public String getBooking_Content() {
		return booking_Content;
	}
	public void setBooking_Content(String booking_Content) {
		this.booking_Content = booking_Content;
	}
	public String getBooking_Id() {
		return booking_Id;
	}
	public void setBooking_Id(String booking_Id) {
		this.booking_Id = booking_Id;
	}
	public String getBooking_Tel() {
		return booking_Tel;
	}
	public void setBooking_Tel(String booking_Tel) {
		this.booking_Tel = booking_Tel;
	}
	public String getBooking_Name() {
		return booking_Name;
	}
	public void setBooking_Name(String booking_Name) {
		this.booking_Name = booking_Name;
	}
	public String getBooking_Email() {
		return booking_Email;
	}
	public void setBooking_Email(String booking_Email) {
		this.booking_Email = booking_Email;
	}
	public String getBooking_Date() {
		return booking_Date;
	}
	public void setBooking_Date(String booking_Date) {
		this.booking_Date = booking_Date;
	}
	public String getBooking_BirthDate() {
		return booking_BirthDate;
	}
	public void setBooking_BirthDate(String booking_BirthDate) {
		this.booking_BirthDate = booking_BirthDate;
	}
	public Integer getCompanion_Num() {
		return companion_Num;
	}
	public void setCompanion_Num(Integer companion_Num) {
		this.companion_Num = companion_Num;
	}
	@Override
	public String toString() {
		return "BookingVO [booking_Id=" + booking_Id + ", booking_Tel=" + booking_Tel + ", booking_Name=" + booking_Name
				+ ", booking_Email=" + booking_Email + ", booking_Date=" + booking_Date + ", booking_BirthDate="
				+ booking_BirthDate + ", companion_Num=" + companion_Num + ", booking_Content=" + booking_Content
				+ ", booking_Price=" + booking_Price + ", member_Id=" + member_Id + "]";
	}


	
	
}
