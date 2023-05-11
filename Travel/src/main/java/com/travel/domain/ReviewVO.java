package com.travel.domain;

import java.util.Date;

public class ReviewVO {

	private String review_Num;
	private String review_title;
	private String review_Writer;
	private String review_Content;
	private Integer review_Count;
	private Date review_Date;
	private String image_Name;
	
	
	public String getReview_Num() {
		return review_Num;
	}
	public void setReview_Num(String review_Num) {
		this.review_Num = review_Num;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_Writer() {
		return review_Writer;
	}
	public void setReview_Writer(String review_Writer) {
		this.review_Writer = review_Writer;
	}
	public String getReview_Content() {
		return review_Content;
	}
	public void setReview_Content(String review_Content) {
		this.review_Content = review_Content;
	}
	public Integer getReview_Count() {
		return review_Count;
	}
	public void setReview_Count(Integer review_Count) {
		this.review_Count = review_Count;
	}
	public Date getReview_Date() {
		return review_Date;
	}
	public void setReview_Date(Date review_Date) {
		this.review_Date = review_Date;
	}
	public String getImage_Name() {
		return image_Name;
	}
	public void setImage_Name(String image_Name) {
		this.image_Name = image_Name;
	}
	
}
