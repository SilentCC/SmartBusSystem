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
import entity.*;

public class SchedualManage {
	
		//sessioFactory 类
		private SessionFactory sessionFactory;
		
		
		public SessionFactory getSessionFactory() {
			return sessionFactory;
		}

		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

		//查询所有排班的信息
		public List<ArrangeSchedual> QueryAllArrangeSchedual(){
			//建立数据库连接
			Session session=null;
			session=sessionFactory.openSession();
			//查询hql语句
			String hql="from ArrangeSchedual";
			List<ArrangeSchedual> ArrangeSchedualList=null;
			try{
				ArrangeSchedualList=session.createQuery(hql).list();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			session.close();	
			return ArrangeSchedualList;
		}
		

		//删除排班的记录
		
		public void DeleteSchedual(String DutyRosterID){
			//建立数据库连接
			Session session = sessionFactory.openSession();
			//定义事务
			Transaction trans=session.beginTransaction();
			//删除hql语句
			String hql="delete from ArrangeSchedual s where s.DutyRosterID='"+DutyRosterID+"'";
			Query queryupdate=session.createQuery(hql);
			int ret=queryupdate.executeUpdate();
			trans.commit();
			//关闭数据库
			session.close();
		}
		
		//新增排班信息
		
		public int AddSchedual(ArrangeSchedual schedual){
			//连接数据库
			Session session = sessionFactory.openSession();
			//定义事物
			Transaction tx= null;
			int i = 0;
			try{
				tx=session.beginTransaction();
				session.save(schedual);
				i = 1;
				tx.commit();
			}catch(RuntimeException re){
				tx.rollback();
				throw re;
			}
			session.close();
			return i;
		}
		
		//查询排班是否存在
		public boolean QuerySchedual(String schedualID){
			
			boolean flag = false;
			Session session=null;
			session = sessionFactory.openSession();
			String hql = "from ArrangeSchedual as schedual where schedual.DutyRosterID = '" +schedualID+ "'";
			List<Driver> DriverList = session.createQuery(hql).list();
			//transaction.commit();
			if(DriverList.size()>0){
				flag = true;			
			}
			session.close();					
			return flag;
			
		}

}
