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
	//删除站点的记录
	
			public void DeleteSite(String SiteID){
				//建立数据库连接
				Session session = sessionFactory.openSession();
				//定义事务
				Transaction trans=session.beginTransaction();
				//删除hql语句
				String hql="delete from Site s where s.SiteID='"+SiteID+"'";
				Query queryupdate=session.createQuery(hql);
				int ret=queryupdate.executeUpdate();
				trans.commit();
				//关闭数据库
				session.close();
			}
	
	//新增站点信息
	public int AddSite(Site site){
		//连接数据库
		Session session = sessionFactory.openSession();
		//定义事物
		Transaction tx= null;
		int i = 0;
		try{
			tx=session.beginTransaction();
			session.save(site);
			i = 1;
			tx.commit();
		}catch(RuntimeException re){
			tx.rollback();
			throw re;
		}
		session.close();
		return i;
	}
	
	//查询司机是否存在
			public boolean QuerySite(String SiteID){
				
				boolean flag = false;
				Session session=null;
				session = sessionFactory.openSession();
				String hql = "from Site as site where site.SiteID = '" +SiteID+ "'";
				List<Driver> DriverList = session.createQuery(hql).list();
				//transaction.commit();
				if(DriverList.size()>0){
					flag = true;			
				}
				session.close();					
				return flag;
				
			}

}
