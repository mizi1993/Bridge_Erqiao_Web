package com.erqiao.rc.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.erqiao.rc.domain.Special;
import com.erqiao.rc.server.ISpecialService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller("SpecialDetailAction")
@Scope("prototype")
public class SpecialDetailAction  extends ActionSupport implements ModelDriven<Special>{

	private static final long serialVersionUID = 1L;
	
	private Special s;
	
	@Override
	public Special getModel() {
		if(s==null)s = new Special();
		return s;
	}
	
	@Resource
	private ISpecialService specialService;
	
	public String execute() throws Exception{
		
//		System.out.println(s.getId());
		s = specialService.getSpecial(s.getId());
		
		return SUCCESS;
	}

	public Special getS() {
		return s;
	}

	public void setS(Special s) {
		this.s = s;
	}

	public ISpecialService getSpecialService() {
		return specialService;
	}

	public void setSpecialService(ISpecialService specialService) {
		this.specialService = specialService;
	}

	

}

