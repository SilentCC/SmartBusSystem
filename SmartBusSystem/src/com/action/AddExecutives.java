package com.action;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import entity.Executives;
import entity.Employee;
import entity.Driver;
import dao.*;

import java.util.*;

import entity.*;

public class AddExecutives extends ActionSupport{
	
	//行政人员信息
	private String executiveID;
	private String pwd;
	private String executiveName;
	private String sex;
	private String phone;
	private String address;
	//Dao类
	
	private PersonManage personManage;

	public String getExecutiveID() {
		return executiveID;
	}

	public void setExecutiveID(String executiveID) {
		this.executiveID = executiveID;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getExecutiveName() {
		return executiveName;
	}

	public void setExecutiveName(String executiveName) {
		this.executiveName = executiveName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public PersonManage getPersonManage() {
		return personManage;
	}

	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}
	
	public String execute(){
		
		Executives executives;
		executives= new Executives(executiveID,pwd,executiveName,sex,phone,address);
		
		if(personManage.AddExecutives(executives)==1)
			return SUCCESS;
		else
			return ERROR;
	}

}
