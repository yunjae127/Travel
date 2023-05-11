package com.travel.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

//@Data
public class HotelVO {
	private String hotel_Name;		// 호텔이름
	private String hotel_Address;	// 호텔주소 
	private String hotel_Content;	// 호텔설명 
	private String image_Name; // 파일이름
	private String image_New_Name;
	private long image_Size; // 파일크기
	private String hotel_Lat; // 위도
	private String hotel_Lng; // 경도
	
	
	
	// 이미지업로드 객체
	 MultipartFile file;  
	 
	  public void setFile(MultipartFile file) { 
		  


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
	
	  
	 
	public long getImage_Size() {
		return image_Size;
	}



	public void setImage_Size(long image_Size) {
		this.image_Size = image_Size;
	}



	public MultipartFile getFile() {
		return file;
	}
	public String getHotel_Name() {
		return hotel_Name;
	}
	public void setHotel_Name(String hotel_Name) {
		this.hotel_Name = hotel_Name;
	}
	public String getHotel_Address() {
		return hotel_Address;
	}
	public void setHotel_Address(String hotel_Address) {
		this.hotel_Address = hotel_Address;
	}
	 
	public String getHotel_Content() {
		return hotel_Content;
	}
	public void setHotel_Content(String hotel_Content) {
		this.hotel_Content = hotel_Content;
	}
	 
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



	public String getHotel_Lat() {
		return hotel_Lat;
	}  
	public void setHotel_Lat(String hotel_Lat) {
		this.hotel_Lat = hotel_Lat;
	}  
	public String getHotel_Lng() {
		return hotel_Lng;
	} 

	public void setHotel_Lng(String hotel_Lng) {
		this.hotel_Lng = hotel_Lng;
	} 

	@Override
	public String toString() {
		return "HotelVO [hotel_Name=" + hotel_Name + ", hotel_Address=" + hotel_Address + ", hotel_Content="
				+ hotel_Content + ", image_Name=" + image_Name + ", image_New_Name=" + image_New_Name + ", file=" + file
				+ "]";
	}
	
	
}
