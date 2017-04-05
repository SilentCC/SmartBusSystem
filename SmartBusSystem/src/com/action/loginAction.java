package com.action;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import entity.Executives;
import entity.Employee;
import entity.Driver;
import dao.PersonManage;

public class loginAction extends ActionSupport {
	
	private PersonManage personManage;//Dao类
	private String name;//姓名
	private String password;//密码
	private String identity;//身份
	

	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}
	public PersonManage getPersonManage() {
		return personManage;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	private String result;//����
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String execute()
	{
	
		
		//name=request.getParameter("name");
		//password=request.getParameter("password");

		boolean ans=false;
		if(identity.charAt(0)=='A')
			ans=personManage.checkAdmini(name, password);
		else if(identity.charAt(0)=='P')
			ans=personManage.checkPassenger(name, password);
		else if(identity.charAt(0)=='E')
			ans=personManage.checkExecutives(name, password);
		else if(identity.charAt(0)=='D')
		{
			System.out.println("ok");
			ans=personManage.checkDriver(name, password);
		}
	     if(ans==true)
			result = "{\"login\":\"success\"}";    
		else
			result = "{\"login\":\"fail\"}";    
		//result = "{\"login\":\"success\"}";  
		return SUCCESS;
		
	}
	

}
