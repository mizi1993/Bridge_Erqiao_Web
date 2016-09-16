package com.whut.erqiao.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;


public class FreemakerHandler {
  private Configuration cfg=null;
  public FreemakerHandler() {
		cfg=new Configuration();
		cfg.setDefaultEncoding("utf-8");	
	}
	public void createDoc(Map<String,Object> dataMap,String tempName,String outFileName){//list里面都是plan.
		cfg.setClassForTemplateLoading(this.getClass(), "/template");//
		Template t=null;
		String outPath=null;
		try {
			t=cfg.getTemplate(tempName+".ftl");
		    outPath=ServletActionContext.getServletContext().getRealPath("/download/"+outFileName);
			System.out.println("outPath="+outPath);
			File outFile=new File(outPath);
			FileOutputStream fos=new FileOutputStream(outFile);
//			out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile
			BufferedWriter out=new BufferedWriter(new OutputStreamWriter(fos,"utf-8"));
//			out = new BufferedWriter(new OutputStreamWriter(response.getOutputStream(),"UTF
			t.process(dataMap,out);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (TemplateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
}
