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
import java.util.*;
import entity.*;

public class ManagePerson extends ActionSupport{
	
	private PersonManage personManage;//Dao类
	private String result;//返回前台的数据，Json格式
	private String test;
	
	public String getTest() {
		return test;
	}
	public void setTest(String test) {
		this.test = test;
	}
	//get set访问器
	public PersonManage getPersonManage() {
		return personManage;
	}
	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	//执行函数
	public String execute(){
		//定义List 接受行政人员，司机，和乘客的所有信息
		//行政人员
		//List<Executives> ExecutivesList=personManage.QueryAllExecutives();
		//乘客
		//List<Passenger> PassengerList=personManage.QueryAllPassenger();
		//司机
		//List<Driver> DiverList=personManage.QueryAllDriver();
		test="1234";
		System.out.println(test);
								
		return SUCCESS;
	
	}

}
