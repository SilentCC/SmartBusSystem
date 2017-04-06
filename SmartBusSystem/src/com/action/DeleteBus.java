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


public class DeleteBus extends ActionSupport {
	
	//删除的汽车的ID 列表
	private String idList;
	//Dao类
	private BusManage busManage;

	public BusManage getBusManage() {
		return busManage;
	}

	public void setBusManage(BusManage busManage) {
		this.busManage = busManage;
	}

	public String getIdList() {
		return idList;
	}

	public void setIdList(String idList) {
		this.idList = idList;
	}
	
	public String execute(){
		
		System.out.println("ok");
		//定义List存储ID
		List<String> name=new ArrayList<String>();
		//正则表达式，分解idList
		int l=idList.length();
		//临时字符串
		String na="";
		for(int i=0;i<l;i++)
		{
			if(idList.charAt(i)=='?'){
				name.add(na);
				na="";
			}
			else{
				na+=idList.charAt(i);
			}
		}
		if(na!="")
			name.add(na);
		//遍历列表一个一个删除
		
		for(String s:name){
			
			busManage.DeleteBus(s);
		}
		
		
		return SUCCESS;
		
	}

}
