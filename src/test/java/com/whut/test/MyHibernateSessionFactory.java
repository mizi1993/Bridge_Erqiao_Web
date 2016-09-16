package com.whut.test;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.whut.erqiao.entity.Form;


@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class MyHibernateSessionFactory {
	@Resource
	private  SessionFactory sessionFactory;
	
	public  MyHibernateSessionFactory() {
		
	}
	
//	public static SessionFactory getSessionFactory(){
//		if(sessionFactory==null){
//			Configuration config=new Configuration().configure();
//			ServiceRegistry serviceRegistry=new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
//			sessionFactory=config.buildSessionFactory(serviceRegistry);
//			return sessionFactory;
//		}else{
//			return sessionFactory;
//		}
//	}
	
	@Test
	public void testSession(){
		Form form = new Form();
		form.setInfoName("mizi");
		form.setName("hellname");
		sessionFactory.getCurrentSession().save(form);
	}
	
}

