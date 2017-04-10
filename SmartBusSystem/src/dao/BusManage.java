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

public class BusManage {
	
	//sessioFactory 类
	private SessionFactory sessionFactory;
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//查询所有车辆的信息
	public List<ScheduledBus> QueryAllBus(){
		//建立数据库连接
		Session session=null;
		session=sessionFactory.openSession();
		//查询hql语句
		String hql="from ScheduledBus";
		List<ScheduledBus> ScheduledBusList=null;
		try{
			ScheduledBusList=session.createQuery(hql).list();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		session.close();	
		return ScheduledBusList;
	}
	
	//删除车辆的记录
	
	public void DeleteBus(String BusID){
		//建立数据库连接
		Session session = sessionFactory.openSession();
		//定义事务
		Transaction trans=session.beginTransaction();
		//删除hql语句
		String hql="delete from ScheduledBus s where s.CarID='"+BusID+"'";
		Query queryupdate=session.createQuery(hql);
		int ret=queryupdate.executeUpdate();
		trans.commit();
		//关闭数据库
		session.close();
	}
	
	//增加车辆的记录
	public int AddBus(ScheduledBus bus){
		//连接数据库
		Session session = sessionFactory.openSession();
		//定义事物
		Transaction tx= null;
		int i = 0;
		try{
			tx=session.beginTransaction();
			session.save(bus);
			i = 1;
			tx.commit();
		}catch(RuntimeException re){
			tx.rollback();
			throw re;
		}
		session.close();
		return i;
	}
	
	//查询BusID是否存在
			public boolean QueryBus(String BusID){
				
				boolean flag = false;
				Session session=null;
				session = sessionFactory.openSession();
				String hql = "from ScheduledBus as bus where bus.CarID = '" +BusID+ "'";
				List<Driver> DriverList = session.createQuery(hql).list();
				//transaction.commit();
				if(DriverList.size()>0){
					flag = true;			
				}
				session.close();					
				return flag;
				
			}
	

}
