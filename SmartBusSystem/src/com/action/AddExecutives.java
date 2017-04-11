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
import java.io.*;

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
	
	public String execute() throws IOException{
		
		System.out.println("yy");
		//增加行政人员
		Executives executives;
		System.out.println(executiveID);
		System.out.println(pwd);
		System.out.println(executiveName);
		
		executives= new Executives(executiveID,pwd,executiveName,sex,phone,address);
		System.out.println(executives.getExecutiveID());
		
		//向前台
		HttpServletResponse response=ServletActionContext.getResponse();
		//设置弹出的格式
		response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        //防止弹出的信息出现乱码
        PrintWriter out = response.getWriter();
	
		//根据数据库返回结果，弹出相应的界面
        
        //如果已经存在ExecutivesID
        if(personManage.QueryExecutives(executiveID)==true){
        	
        	out.print("<script>alert('添加失败！行政人员ID已存在')</script>");
            
			out.flush();
			
			
			return ERROR;
        	
        }
        else if(personManage.AddExecutives(executives)==1){
         
			return SUCCESS;
			
		}
		else{
		
			return ERROR;
		}
	}

}
