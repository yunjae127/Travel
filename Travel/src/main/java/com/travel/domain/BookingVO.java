package com.travel.domain;

import java.sql.Date;


public class BookingVO {
	private String booking_Id;
	private String booking_Tel;
	private String booking_Name;
	private String booking_Email;
	private String booking_Date;
	private String booking_BirthDate;
	private Integer companion_Num;
	private String event_Name;
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
	public String getEvent_Name() {
		return event_Name;
	}
	public void setEvent_Name(String event_Name) {
		this.event_Name = event_Name;
	}
	@Override
	public String toString() {
		return "BookingVO [booking_Id=" + booking_Id + ", booking_Tel=" + booking_Tel + ", booking_Name=" + booking_Name
				+ ", booking_Email=" + booking_Email + ", booking_Date=" + booking_Date + ", booking_BirthDate="
				+ booking_BirthDate + ", companion_Num=" + companion_Num + ", event_Name=" + event_Name + "]";
	}
	
	
	
}
