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

public class UpdateSchedual extends ActionSupport{
	
	
     
     private String schedualID;
     private String busID;
     private String driverID;
     private String routeID;
     private String week;
     private String dayOfWeek;
     private String startTime;
     private String endTime;
     
     //Dao类
     private SchedualManage schedualManage;
     
     private ArrangeSchedual arrangeSchedual;

	public String getSchedualID() {
		return schedualID;
	}

	public void setSchedualID(String schedualID) {
		this.schedualID = schedualID;
	}

	public String getBusID() {
		return busID;
	}

	public void setBusID(String busID) {
		this.busID = busID;
	}

	public String getDriverID() {
		return driverID;
	}

	public void setDriverID(String driverID) {
		this.driverID = driverID;
	}

	public String getRouteID() {
		return routeID;
	}

	public void setRouteID(String routeID) {
		this.routeID = routeID;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getDayOfWeek() {
		return dayOfWeek;
	}

	public void setDayOfWeek(String dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public SchedualManage getSchedualManage() {
		return schedualManage;
	}

	public void setSchedualManage(SchedualManage schedualManage) {
		this.schedualManage = schedualManage;
	}

	public ArrangeSchedual getArrangeSchedual() {
		return arrangeSchedual;
	}

	public void setArrangeSchedual(ArrangeSchedual arrangeSchedual) {
		this.arrangeSchedual = arrangeSchedual;
	}
     
	
	public String execute(){
		
		try{
			
			arrangeSchedual=schedualManage.QueryOneSchedual(schedualID);
			arrangeSchedual.setCarID(busID);
			arrangeSchedual.setDayOfWeek(dayOfWeek);
			arrangeSchedual.setDriverID(driverID);
			arrangeSchedual.setStartTime(startTime);
			arrangeSchedual.setEndTime(endTime);
			arrangeSchedual.setWeek(week);
			arrangeSchedual.setDayOfWeek(dayOfWeek);
			
			schedualManage.UpdateSchedual(arrangeSchedual);
		}
		catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		
		return SUCCESS;
		
	}

}
