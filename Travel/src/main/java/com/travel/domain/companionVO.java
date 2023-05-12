package com.travel.domain;

import java.sql.Date;



public class companionVO {
	private Integer companion_Num;
	private String companion_Name;
	private String companion_Efname;
	private String companion_Elname;
	private String companion_Gender;
	private Date companion_Birthdate;
	
	
	public Integer getCompanion_Num() {
		return companion_Num;
	}
	public void setCompanion_Num(Integer companion_Num) {
		this.companion_Num = companion_Num;
	}
	public String getCompanion_Name() {
		return companion_Name;
	}
	public void setCompanion_Name(String companion_Name) {
		this.companion_Name = companion_Name;
	}
	public String getCompanion_Efname() {
		return companion_Efname;
	}
	public void setCompanion_Efname(String companion_Efname) {
		this.companion_Efname = companion_Efname;
	}
	public String getCompanion_Elname() {
		return companion_Elname;
	}
	public void setCompanion_Elname(String companion_Elname) {
		this.companion_Elname = companion_Elname;
	}
	public String getCompanion_Gender() {
		return companion_Gender;
	}
	public void setCompanion_Gender(String companion_Gender) {
		this.companion_Gender = companion_Gender;
	}
	public Date getCompanion_Birthdate() {
		return companion_Birthdate;
	}
	public void setCompanion_Birthdate(Date companion_Birthdate) {
		this.companion_Birthdate = companion_Birthdate;
	}
	@Override
	public String toString() {
		return "companionVO [companion_Num=" + companion_Num + ", companion_Name=" + companion_Name
				+ ", companion_Efname=" + companion_Efname + ", companion_Elname=" + companion_Elname
				+ ", companion_Gender=" + companion_Gender + ", companion_Birthdate=" + companion_Birthdate + "]";
	}
	
	
	
}
