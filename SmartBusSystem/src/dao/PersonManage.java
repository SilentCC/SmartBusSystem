package dao;
import java.util.*;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.common.HibernateSessionFactory;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import entity.*;
public class PersonManage {
	
	private SessionFactory sessionFactory;
	
	private HttpServletRequest request;//requset对象
	private HttpSession session2;//创建Session对象 这个是浏览器的Session和Hibernate的Session不一样
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//告诉编译器忽略指定的警告，不用在编译完成后出现警告信息。֤
		@SuppressWarnings("unchecked")
	//验证行人员登陆
	public boolean checkExecutives(String ExecutiveID,String pwd){		
			boolean flag = false;
			Session session=null;
			session = sessionFactory.openSession();
			String hql = "from Executives as executive where executive.ExecutiveID = '" +ExecutiveID+ "' and executive.pwd = '"+pwd+"'";
			List<Executives> ExecutivesList = session.createQuery(hql).list();
			//transaction.commit();
			if(ExecutivesList.size()>0){
				flag = true;
				//设置session的属性，方便前台页面显示姓名
				session2=ServletActionContext.getRequest().getSession();
				session2.setAttribute("name", ExecutivesList.get(0).getExecutiveName());
			}
			session.close();					
			return flag;
		}
	//验证普通员工登陆
	public boolean checkPassenger(String PassengerID,String pwd){
		
		boolean flag = false;
		Session session=null;
		session = sessionFactory.openSession();
		String hql = "from Passenger as passenger where passenger.PassengerID = '" +PassengerID+ "' and passenger.Pwd = '"+pwd+"'";
		List<Passenger> PassengerList = session.createQuery(hql).list();
		//transaction.commit();
		if(PassengerList.size()>0){
			flag = true;
			//设置session的属性，方便前台页面显示姓名
			session2=ServletActionContext.getRequest().getSession();
			session2.setAttribute("name", PassengerList.get(0).getName());
		}
		session.close();					
		return flag;
		
	}
	//验证司机登陆
	public boolean checkDriver(String DriverID,String pwd){
		
		boolean flag = false;
		Session session=null;
		session = sessionFactory.openSession();
		System.out.println(DriverID+"  "+pwd);
		String hql = "from Driver as driver where driver.DriverID = '" +DriverID+ "' and driver.Pwd = '"+pwd+"'";
		List<Driver> DriverList = session.createQuery(hql).list();
		//transaction.commit();
		if(DriverList.size()>0){
			flag = true;
			//设置session的属性，方便前台页面显示姓名
			session2=ServletActionContext.getRequest().getSession();
			session2.setAttribute("name", DriverList.get(0).getDriverName());
			
		}
		session.close();					
		return flag;
		
	}
	//验证管理员登陆
	public boolean checkAdmini(String AdminiID,String pwd){
		
		boolean flag = false;
		Session session=null;
		session = sessionFactory.openSession();
		String hql = "from Admini as admin where admin.AdminID = '" +AdminiID+ "' and admin.Pwd = '"+pwd+"'";
		List<Admini> AdminiList = session.createQuery(hql).list();
		//transaction.commit();
		if(AdminiList.size()>0){
			flag = true;
			//设置session的属性，方便前台页面显示姓名
			session2=ServletActionContext.getRequest().getSession();
			session2.setAttribute("name", AdminiList.get(0).getAdminID());
		}
		session.close();					
		return flag;
		
	}
	
	//查询行政人员的所有信息
	public  List<Executives> QueryAllExecutives(){
		//建立数据库连接
		Session session=null;
		session =sessionFactory.openSession();
		//查询hql语句
		String hql="from Executives";
		List<Executives> ExecutivesList =session.createQuery(hql).list();
		session.close();	
		return ExecutivesList;
	}
	
	//查询司机的所有信息
	
	public List<Driver> QueryAllDriver(){
		//建立数据库连接
		Session session=null;
		session=sessionFactory.openSession();
		//查询hql语句
		String hql="from Driver";
		List<Driver> DriverList =session.createQuery(hql).list();
		session.close();	
		return DriverList;
	}
	
	//查询乘客的所有信息
	
	public List<Passenger> QueryAllPassenger(){
		//建立数据库连接
		Session session=null;
		session=sessionFactory.openSession();
		//查询hql语句
		String hql="from Passenger";
		List<Passenger> PassengerList =session.createQuery(hql).list();
		session.close();	
		return PassengerList;
	}
	
			

}
