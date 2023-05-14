package com.travel.dto;

public class MemberInformation {

	/*
	 * private String booking_Date; private String booking_Content; private Integer
	 * booking_Price;
	 */
	
	private String review_Title; // 리뷰 제목
	private String review_Date; // 리뷰 날짜 
	
	
	public String getReview_Title() {
		return review_Title;
	}
	public void setReview_Title(String review_Title) {
		this.review_Title = review_Title;
	}
	public String getReview_Date() {
		return review_Date;
	}
	public void setReview_Date(String review_Date) {
		this.review_Date = review_Date;
	}
	
	
}
