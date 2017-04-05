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

public class DeletePerson extends ActionSupport{
	
	private String identity;//删除哪种类型的人
	private String idList;//要删除的人群的ID列表
	public String getIdList() {
		return idList;
	}
	public void setIdList(String idList) {
		this.idList = idList;
	}
	private PersonManage personManage;//Dao类
	
	public PersonManage getPersonManage() {
		return personManage;
	}
	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	
	
	public String execute(){
		
		boolean ans=true;
		
		//正则表达式，分解idList
		System.out.println(identity);
		int l=idList.length();
		System.out.println(idList);
		System.out.println(l);
		//判断身份条件
		if(identity=="Executives"){
			//遍历ID列表，一个一个删除
			
			
		}
		else if(identity=="Driver"){
			//遍历ID列表，一个一个删除
			
			
		}
		else if(identity=="Passenger"){
			//遍历ID列表，一个一个删除
			
			
		}
		
		return SUCCESS;
	
	}
	

}
