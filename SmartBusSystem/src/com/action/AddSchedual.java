package com.action;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import entity.Executives;
import entity.Employee;
import entity.Driver;
import entity.Route;
import dao.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import entity.*;


public class AddSchedual extends ActionSupport{
	
	//排班的属性
	private String dutyRosterID;
	private String carID;
	private String routeID;
	private String driverID;
	private String driverName;
	private String week;
	private String dayOfWeek;
	private String startTime;
	private String endTime;
	
	//Dao类
	private SchedualManage schedualManage;

	public String getDutyRosterID() {
		return dutyRosterID;
	}

	public void setDutyRosterID(String dutyRosterID) {
		this.dutyRosterID = dutyRosterID;
	}

	public String getCarID() {
		return carID;
	}

	public void setCarID(String carID) {
		this.carID = carID;
	}

	public String getRouteID() {
		return routeID;
	}

	public void setRouteID(String routeID) {
		this.routeID = routeID;
	}

	public String getDriverID() {
		return driverID;
	}

	public void setDriverID(String driverID) {
		this.driverID = driverID;
	}

	public String getDriverName() {
		return driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
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
	
	public String execute() throws IOException {
		

		ArrangeSchedual schedual;
		schedual=new ArrangeSchedual(dutyRosterID,carID,routeID,driverID,driverName,week,dayOfWeek,
				startTime,endTime);
		
		//向前台
		HttpServletResponse response=ServletActionContext.getResponse();
		//设置弹出的格式
		response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        //防止弹出的信息出现乱码
        PrintWriter out = response.getWriter();
	
		//根据数据库返回结果，弹出相应的界面
        
        //如果已经存在ExecutivesID
        if(schedualManage.QuerySchedual(dutyRosterID)==true){
        	
        	out.print("<script>alert('添加失败！')</script>");
			out.flush();
			
			
			return INPUT;
        }
        else if(schedualManage.AddSchedual(schedual)==1)
			return SUCCESS;
		else
			return ERROR;
		
		
	}
	

}
