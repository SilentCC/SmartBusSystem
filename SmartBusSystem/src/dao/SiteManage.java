package dao;
import java.util.*;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.common.HibernateSessionFactory;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import entity.*;
public class SiteManage {
	
	//sessioFactory 类
	private SessionFactory sessionFactory;
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//查询所有路线的信息
	public List<Site> QueryAllSite(){
		//建立数据库连接
		Session session=null;
		session=sessionFactory.openSession();
		//查询hql语句
		String hql="from Site";
		List<Site> SiteList=null;
		try{
			SiteList=session.createQuery(hql).list();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		session.close();	
		return SiteList;
	}

}
