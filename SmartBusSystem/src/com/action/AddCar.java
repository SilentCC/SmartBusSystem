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

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

public class AddCar extends ActionSupport{
	
	//车辆信息
	private String carID;
	private String brand;
	private String seats;
	private Date dateOfRegistration;
	private Date dateOfInsurance;
	

	private String driverLicense;
	private String carLicense;
	private String routeID;
	//Dao类
	private BusManage busManage;
	
	
	public BusManage getBusManage() {
		return busManage;
	}

	public void setBusManage(BusManage busManage) {
		this.busManage = busManage;
	}

	public Date getDateOfRegistration() {
		return dateOfRegistration;
	}

	public void setDateOfRegistration(Date dateOfRegistration) {
		this.dateOfRegistration = dateOfRegistration;
	}

	public Date getDateOfInsurance() {
		return dateOfInsurance;
	}

	public void setDateOfInsurance(Date dateOfInsurance) {
		this.dateOfInsurance = dateOfInsurance;
	}

	public String getCarID() {
		return carID;
	}

	public void setCarID(String carID) {
		this.carID = carID;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getSeats() {
		return seats;
	}

	public void setSeats(String seats) {
		this.seats = seats;
	}

	

	public String getDriverLicense() {
		return driverLicense;
	}

	public void setDriverLicense(String driverLicense) {
		this.driverLicense = driverLicense;
	}

	public String getCarLicense() {
		return carLicense;
	}

	public void setCarLicense(String carLicense) {
		this.carLicense = carLicense;
	}

	public String getRouteID() {
		return routeID;
	}

	public void setRouteID(String routeID) {
		this.routeID = routeID;
	}

	
	public String execute() throws IOException{
		
		ScheduledBus car;
		car=new ScheduledBus(carID,brand,seats,dateOfRegistration,dateOfInsurance,driverLicense,carLicense,routeID);
		

		//向前台
		HttpServletResponse response=ServletActionContext.getResponse();
		//设置弹出的格式
		response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        //防止弹出的信息出现乱码
        PrintWriter out = response.getWriter();
        System.out.println(carID);
		//根据数据库返回结果，弹出相应的界面
      //如果已经存在ExecutivesID
        if(busManage.QueryBus(carID)==true){
        	
        	out.print("<script>alert('添加失败！')</script>");
			out.flush();
		
			
			return INPUT;
        }
        	
        
        else if(busManage.AddBus(car)==1)
			return SUCCESS;
		else
			return ERROR;
		
		
	}

}
