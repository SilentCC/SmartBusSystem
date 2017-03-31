package dao;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.common.HibernateSessionFactory;

import entity.*;
public class PersonManage {
	
	private SessionFactory sessionFactory;
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//����Ա��¼��֤
		@SuppressWarnings("unchecked")
	public boolean checkExecutives(String ExecutiveID,String pwd){

			boolean flag = false;
			Session session=null;
			session = sessionFactory.openSession();
			String hql = "from Executives as executive where executive.ExecutiveID = '" +ExecutiveID+ "' and executive.pwd = '"+pwd+"'";
			List<Executives> ExecutivesList = session.createQuery(hql).list();
			//transaction.commit();
			if(ExecutivesList.size()>0){
				flag = true;
			}
			session.close();					
			return flag;
		}
	public boolean checkPassenger(String PassengerID,String pwd){
		
		boolean flag = false;
		Session session=null;
		session = sessionFactory.openSession();
		String hql = "from Passenger as passenger where passenger.PassengerID = '" +PassengerID+ "' and passenger.Pwd = '"+pwd+"'";
		List<Passenger> PassengerList = session.createQuery(hql).list();
		//transaction.commit();
		if(PassengerList.size()>0){
			flag = true;
		}
		session.close();					
		return flag;
		
	}
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
		}
		session.close();					
		return flag;
		
	}
	public boolean checkAdmini(String AdminiID,String pwd){
		
		boolean flag = false;
		Session session=null;
		session = sessionFactory.openSession();
		String hql = "from Admini as admin where admin.AdminID = '" +AdminiID+ "' and admin.Pwd = '"+pwd+"'";
		List<Admini> AdminiList = session.createQuery(hql).list();
		//transaction.commit();
		if(AdminiList.size()>0){
			flag = true;
		}
		session.close();					
		return flag;
		
	}
			

}
