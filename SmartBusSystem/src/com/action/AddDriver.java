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

public class AddDriver extends ActionSupport{
	
	//司机属性
	private String driverID;
	private String driverName;
	//Dao类
	
	private PersonManage personManage;
	
	public PersonManage getPersonManage() {
		return personManage;
	}
	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}
	public String getDriverName() {
		return driverName;
	}
	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	private String pwd;
	private String phone;
	private String sex;
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDriverID() {
		return driverID;
	}
	public void setDriverID(String driverID) {
		this.driverID = driverID;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String execute() throws IOException{
		
		Driver driver;
		driver=new Driver(driverID,pwd,driverName,sex,phone);
		
		
		//向前台
				HttpServletResponse response=ServletActionContext.getResponse();
				//设置弹出的格式
				response.setContentType("text/html;charset=UTF-8");
		        response.setCharacterEncoding("UTF-8");
		        //防止弹出的信息出现乱码
		        PrintWriter out = response.getWriter();
			
				//根据数据库返回结果，弹出相应的界面
		        System.out.println("ok");
		        //如果已经存在ExecutivesID
		        if(personManage.QueryDriver(driverID)==true){
		        	
		        	out.print("<script>alert('添加失败！该司机ID已经存在')</script>");
					out.flush();
					System.out.println("ok");
					
					return ERROR;
		        }
		        else if(personManage.AddDriver(driver)==1)
		        	return SUCCESS;
		        else
		        	return ERROR;
	}

}
