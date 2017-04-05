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

@SuppressWarnings("serial")
public class ManagePerson extends ActionSupport{
	
	private PersonManage personManage;//Dao类
	private String result;//返回前台的数据，Json格式
	private String test;
	//行政人员列表
	private List<Executives> ExecutivesList=null;
	//司机列表
	private List<Driver> DriverList=null;
	//乘客列表
	private List<Passenger> PassengerList=null;
	
	
	public List<Executives> getExecutivesList() {
		return ExecutivesList;
	}
	public void setExecutivesList(List<Executives> executivesList) {
		ExecutivesList = executivesList;
	}
	public List<Driver> getDriverList() {
		return DriverList;
	}
	public void setDriverList(List<Driver> driverList) {
		DriverList = driverList;
	}
	public List<Passenger> getPassengerList() {
		return PassengerList;
	}
	public void setPassengerList(List<Passenger> passengerList) {
		PassengerList = passengerList;
	}

	
	
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
		
		 ExecutivesList=personManage.QueryAllExecutives();
		//乘客
		PassengerList=personManage.QueryAllPassenger();
		//司机
		DriverList=personManage.QueryAllDriver();	
								
		return SUCCESS;
	
	}

}
