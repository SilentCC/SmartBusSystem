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

public class UserExitAction extends ActionSupport {
	
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(session.getAttribute("identity")==null||session.getAttribute("name")==null)
			return ERROR;
		else{
			session.removeAttribute("identity");
			session.removeAttribute("name");
			return SUCCESS;
		}
		
		
	}

}
