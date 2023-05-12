package com.travel.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {

	private String review_Num; // 리뷰 번호
	private String review_title; // 리뷰 제목
	private String review_Writer; // 리뷰 작성자
	private String review_Content; // 리뷰 내용
	private Integer review_Count; // 리뷰 조회수 
	private Date review_Date; // 리뷰 날짜 
	private String image_Name;  // 리뷰 이미지
	private String image_New_Name;
	private long image_Size;
	
	MultipartFile file;
	
	
	
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		
		this.file = file;
		

		  this.file = file; 
		 
		  // 업로드 파일이 있는 경우 
		  if(!file.isEmpty()) { 
			  	
			  this.image_Name = file.getOriginalFilename(); 
			  this.image_Size = file.getSize();


			  
		//  System.out.println("image_Name:" + image_Name);
		//  System.out.println("image_Size:" + image_Size);
		  
		  // 실제로 저장된 파일을 만들기
		  
		  UUID uuid = UUID.randomUUID();
		  //ivo.setImage_New_Name(String.valueOf(uuid.toString()+"_"+image_Name));
		  this.image_New_Name = uuid.toString()+"_"+image_Name; 

		  
		   
		 // 해당 경로에 저장 // ===> 추후에 서버 경로를 얻어서 상대적 경로 지정 
		  File f = new File(
		 "C:\\Users\\kosmo\\git\\Travel\\Travel\\src\\main\\webapp\\resources\\upload\\"+ image_New_Name);
		  
		  try { 
			  file.transferTo(f); 
		  } catch (IllegalStateException e) {
			  e.printStackTrace();
		  } catch (IOException e) {
			  e.printStackTrace(); 
		  }
		  
		  }
	  }    
		 
	 
	public String getImage_New_Name() {
		return image_New_Name;
	}
	public void setImage_New_Name(String image_New_Name) {
		this.image_New_Name = image_New_Name;
	}
	public long getImage_Size() {
		return image_Size;
	}
	public void setImage_Size(long image_Size) {
		this.image_Size = image_Size;
	}
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
	
	@Override
	public String toString() {
		return "ReviewVO [review_Num=" + review_Num + ", review_title=" + review_title + ", review_Writer="
				+ review_Writer + ", review_Content=" + review_Content + ", review_Count=" + review_Count
				+ ", review_Date=" + review_Date + ", image_Name=" + image_Name + ", image_New_Name=" + image_New_Name
				+ ", image_Size=" + image_Size + ", file=" + file + "]";
	}
	
	
	
	
}
