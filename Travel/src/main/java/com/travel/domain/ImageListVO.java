package com.travel.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

//@Data
public class ImageListVO {
	private String image_Name;
	private String image_New_Name;
	private String image_Route;
	private String image_Pixel;
	private long image_Size;
	private String image_Date;
	
	
	
	public String getImage_Name() {
		return image_Name;
	}



	public void setImage_Name(String image_Name) {
		this.image_Name = image_Name;
	}



	public String getImage_New_Name() {
		return image_New_Name;
	}



	public void setImage_New_Name(String image_New_Name) {
		this.image_New_Name = image_New_Name;
	}



	public String getImage_Route() {
		return image_Route;
	}



	public void setImage_Route(String image_Route) {
		this.image_Route = image_Route;
	}



	public String getImage_Pixel() {
		return image_Pixel;
	}



	public void setImage_Pixel(String image_Pixel) {
		this.image_Pixel = image_Pixel;
	}



	public long getImage_Size() {
		return image_Size;
	}



	public void setImage_Size(long image_Size) {
		this.image_Size = image_Size;
	}



	public String getImage_Date() {
		return image_Date;
	}



	public void setImage_Date(String image_Date) {
		this.image_Date = image_Date;
	}



	@Override
	public String toString() {
		return "ImageListVO [image_Name=" + image_Name + ", image_New_Name=" + image_New_Name   
				 + "]";
	}
	
	 
}
