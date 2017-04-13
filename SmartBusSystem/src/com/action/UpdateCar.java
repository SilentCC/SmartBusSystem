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
import java.sql.Date;

public class UpdateCar extends ActionSupport{
	

     //车辆ID
     private String busID;
     //品牌
     private String brand;
     //注册时间
     private Date dateOfRegistration;
     //到期时间
 	private Date dateOfInsurance;
	//驾驶证
 	private String driverLicense;
 	//行驶证
	private String carLicense;
	//行驶路线ID
	private String routeID;
	private String seats;
	
	public String getSeats() {
		return seats;
	}
	public void setSeats(String seats) {
		this.seats = seats;
	}

	//Dao类
	private BusManage busManage;
	private ScheduledBus bus;
	public String getBusID() {
		return busID;
	}
	public void setBusID(String busID) {
		this.busID = busID;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
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
	public BusManage getBusManage() {
		return busManage;
	}
	public void setBusManage(BusManage busManage) {
		this.busManage = busManage;
	}
	public ScheduledBus getBus() {
		return bus;
	}
	public void setBus(ScheduledBus bus) {
		this.bus = bus;
	}
	
	public String execute(){
		
		try{
			bus=busManage.QueryOneBus(busID);
			bus.setBrand(brand);
			bus.setCarLicense(carLicense);
			bus.setDateOfInsurance(dateOfInsurance);
			bus.setDateOfRegistration(dateOfRegistration);
			bus.setDriverLicense(driverLicense);
			bus.setRouteID(routeID);
			bus.setSeats(seats);
			
			busManage.UpdateBus(bus);
		}
		catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	

}
