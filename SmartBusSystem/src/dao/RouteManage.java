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

public class RouteManage {
	
			//sessioFactory 类
			private SessionFactory sessionFactory;
			
			
			public SessionFactory getSessionFactory() {
				return sessionFactory;
			}

			public void setSessionFactory(SessionFactory sessionFactory) {
				this.sessionFactory = sessionFactory;
			}

			//查询所有路线的信息
			public List<Route> QueryAllRoute(){
				//建立数据库连接
				Session session=null;
				session=sessionFactory.openSession();
				//查询hql语句
				String hql="from Route";
				List<Route> RouteList=null;
				try{
					RouteList=session.createQuery(hql).list();
				}
				catch(Exception e){
					e.printStackTrace();
				}
				session.close();	
				return RouteList;
			}
			
			

			//删除路线的记录
			
			public void DeleteRoute(String RouteID){
				//建立数据库连接
				Session session = sessionFactory.openSession();
				//定义事务
				Transaction trans=session.beginTransaction();
				//删除hql语句
				String hql="delete from Route r where r.RouteID='"+RouteID+"'";
				Query queryupdate=session.createQuery(hql);
				int ret=queryupdate.executeUpdate();
				trans.commit();
				//关闭数据库
				session.close();
			}
			
			//新增线路信息
			
			public int AddRoute(Route route){
				//连接数据库
				Session session = sessionFactory.openSession();
				//定义事物
				Transaction tx= null;
				int i = 0;
				try{
					tx=session.beginTransaction();
					session.save(route);
					i = 1;
					tx.commit();
				}catch(RuntimeException re){
					tx.rollback();
					throw re;
				}
				session.close();
				return i;
			}
			
			//查询路线是否存在
			public boolean QueryRoute(String RouteID){
				
				boolean flag = false;
				Session session=null;
				session = sessionFactory.openSession();
				String hql = "from Route as route where route.RouteID = '" +RouteID+ "'";
				List<Driver> DriverList = session.createQuery(hql).list();
				//transaction.commit();
				if(DriverList.size()>0){
					flag = true;			
				}
				session.close();					
				return flag;
				
			}


}
