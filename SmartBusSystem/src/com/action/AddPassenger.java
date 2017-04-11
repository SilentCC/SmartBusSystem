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

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import entity.*;
public class AddPassenger extends ActionSupport{
	
	//定义要乘客的信息
	
	private String passengerID;
	
	private String location;
	private String name;
	private String pwd;
	private String sex;
	
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




	private String phone;
	
	//Dao类
	private PersonManage personManage;
	
	
	public PersonManage getPersonManage() {
		return personManage;
	}



	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPassengerID() {
		return passengerID;
	}


	public void setPassengerID(String passengerID) {
		this.passengerID = passengerID;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}




	public String execute() throws IOException{
		
		Passenger passenger;
		passenger=new Passenger(passengerID,location,pwd,name,sex,phone);
		
		//向前台
		HttpServletResponse response=ServletActionContext.getResponse();
				//设置弹出的格式
				response.setContentType("text/html;charset=UTF-8");
		        response.setCharacterEncoding("UTF-8");
		        //防止弹出的信息出现乱码
		        PrintWriter out = response.getWriter();
			
				//根据数据库返回结果，弹出相应的界面
		        
		        //如果已经存在ExecutivesID
		        System.out.println("ok");
		if(personManage.QueryPassenger(passengerID)==true){
			
			out.print("<script>alert('添加失败！改乘客ID已经存在')</script>");
			out.flush();
			
			
			return ERROR;
        	
		}
		else if(personManage.AddPassenger(passenger)==1)
			return SUCCESS;
		else
			return ERROR;	
	}	

}
