package com.travel.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;


public class ProductLisVO {
	private String product_Id;
	private String product_Name;
	private String product_Content;
	private String product_Place;
	private Integer product_Price;
	private Integer product_Count;
	private String product_Depature;
	private String product_Array;
	private String product_AirLine;
	private String image_Name;
	private String real_file_name;
	
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		
	    this.file = file; 
	    
	     // 업로드 파일이 있는 경우 
	     if(!file.isEmpty()) { 
	           
	        this.image_Name = file.getOriginalFilename();
	        
	     
	     System.out.println("image_Name:" + image_Name);
	     
	     // 실제로 저장된 파일을 만들기
	     
	     UUID uuid = UUID.randomUUID();
	     //ivo.setImage_New_Name(String.valueOf(uuid.toString()+"_"+image_Name));
	     real_file_name = uuid.toString()+"_"+image_Name;
	     System.out.println("real_file_name:"+real_file_name);
	    // 해당 경로에 저장 // ===> 추후에 서버 경로를 얻어서 상대적 경로 지정 
	     File f = new File(
	    "C:\\Users\\kosmo\\git\\Travel\\Travel\\src\\main\\webapp\\resources\\upload\\"+ real_file_name);
	     
	     try { 
	        file.transferTo(f); 
	     } catch (IllegalStateException e) {
	        e.printStackTrace();
	     } catch (IOException e) {
	        e.printStackTrace(); 
	     }
	     
	     }

		
	}


	public String getProduct_Id() {
		return product_Id;
	}

	public void setProduct_Id(String product_Id) {
		this.product_Id = product_Id;
	}

	public String getProduct_Name() {
		return product_Name;
	}

	public void setProduct_Name(String product_Name) {
		this.product_Name = product_Name;
	}

	public String getProduct_Content() {
		return product_Content;
	}

	public void setProduct_Content(String product_Content) {
		this.product_Content = product_Content;
	}

	public String getProduct_Place() {
		return product_Place;
	}

	public void setProduct_Place(String product_Place) {
		this.product_Place = product_Place;
	}

	public Integer getProduct_Price() {
		return product_Price;
	}

	public void setProduct_Price(Integer product_Price) {
		this.product_Price = product_Price;
	}

	public Integer getProduct_Count() {
		return product_Count;
	}

	public void setProduct_Count(Integer product_Count) {
		this.product_Count = product_Count;
	}

	public String getProduct_Depature() {
		return product_Depature;
	}

	public void setProduct_Depature(String product_Depature) {
		this.product_Depature = product_Depature;
	}

	public String getProduct_Array() {
		return product_Array;
	}

	public void setProduct_Array(String product_Array) {
		this.product_Array = product_Array;
	}

	public String getProduct_AirLine() {
		return product_AirLine;
	}

	public void setProduct_AirLine(String product_AirLine) {
		this.product_AirLine = product_AirLine;
	}

	public String getImage_Name() {
		return image_Name;
	}

	public void setImage_Name(String image_Name) {
		this.image_Name = image_Name;
	}


	@Override
	public String toString() {
		return "ProductLisVO [product_Id=" + product_Id + ", product_Name=" + product_Name + ", product_Content="
				+ product_Content + ", product_Place=" + product_Place + ", product_Price=" + product_Price
				+ ", product_Count=" + product_Count + ", product_Depature=" + product_Depature + ", product_Array="
				+ product_Array + ", product_AirLine=" + product_AirLine + ", image_Name=" + image_Name + ", file="
				+ file + "]";
	} 
	
	
}
