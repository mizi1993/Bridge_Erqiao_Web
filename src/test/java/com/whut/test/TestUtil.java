package com.whut.test;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.whut.erqiao.action.TaskAction;
import com.whut.erqiao.entity.Form;


public class TestUtil {
	private  ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");

	public  SessionFactory testSessionFactory(){
		System.out.println("hello1");
		SessionFactory sf = (SessionFactory) ac.getBean("sessionFactory");
		System.out.println("hello2");
		System.out.println("sessionFactory"+sf);
		return sf;
	}

//	@Test
//	public void testSession(){
//		Form form=new Form();
//		form.setInfoName("hell0");
//		form.setName("mizi");
//		SessionFactory sf = testSessionFactory();
//		sf.getCurrentSession().save(form);
//	}
	
	@Test
	public void testAction(){
		TaskAction testAction=(TaskAction) ac.getBean("taskAction");
		System.out.println(testAction);
	}
}
