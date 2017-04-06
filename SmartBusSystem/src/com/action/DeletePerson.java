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
		
		//判断身份条件
		if(identity.equals("Executives")){
			//遍历ID列表，一个一个删除
			for(String s:name){
				
				personManage.DeleteExecutives(s);
			}
			
			
		}
		else if(identity.equals("Driver")){
			//遍历ID列表，一个一个删除
			for(String s:name){
				personManage.DeleteDriver(s);
			}
			
			
		}
		else if(identity.equals("Passenger")){
			//遍历ID列表，一个一个删除
			for(String s:name){
				personManage.DeletePassenger(s);
			}
			
			
		}
		
		return SUCCESS;
	
	}
	

}
