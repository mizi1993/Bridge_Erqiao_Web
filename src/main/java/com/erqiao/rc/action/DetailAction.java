package com.erqiao.rc.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.domain.Record;
import com.erqiao.rc.domain.RecordPlus;
import com.erqiao.rc.server.IRecordServer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller("DetailAction")
@Scope("prototype")
public class DetailAction extends ActionSupport implements ModelDriven<RecordPlus>{

	private static final long serialVersionUID = 1L;
	
	@Resource
	private IRecordServer recordServer;
	
	private RecordPlus recordPlus;
	
	@Override
	public RecordPlus getModel() {
		if(recordPlus == null){
			recordPlus = new RecordPlus();
		}
		return recordPlus;
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println(recordPlus.getZipname()+"---------->"+recordPlus.getMacid()+".....execute");
		
		List<Attendance> atdList = recordServer.getAttendances(recordPlus.getZipname(), recordPlus.getMacid());
		List<Record> rdList = recordServer.getRecords(recordPlus.getZipname(), recordPlus.getMacid());	
		ActionContext.getContext().put("atdList", atdList);
		ActionContext.getContext().put("rdList", rdList);
		List<String> gpsStrings = recordServer.getGps(recordPlus.getZipname(), recordPlus.getMacid());
		String lon,lat;
		lon = gpsStrings.get(0);
		lat = gpsStrings.get(1);
		ActionContext.getContext().put("lon", lon);
		ActionContext.getContext().put("lat", lat);
		
		recordPlus = recordServer.getRecordPlus(recordPlus.getZipname(), recordPlus.getMacid());

		return SUCCESS;
	}
	
	public String save() throws Exception{
		
		RecordPlus recordPlusTemp = recordServer.getRecordPlus(recordPlus.getZipname(), recordPlus.getMacid());
		if(recordPlusTemp==null){
			recordServer.setRecordPlus(recordPlus);
		}else{
			Object[] objects = {recordPlus.getRepair(),recordPlus.getEnsure(),recordPlus.getOther(),recordPlusTemp.getId()};
			recordServer.updateRecordPlus(objects);
		}
		
		return "save";
	}
	
	public RecordPlus getRecordPlus() {
		return recordPlus;
	}

	public void setRecordPlus(RecordPlus recordPlus) {
		this.recordPlus = recordPlus;
	}

	public IRecordServer getRecordServer() {
		return recordServer;
	}

	public void setRecordServer(IRecordServer recordServer) {
		this.recordServer = recordServer;
	}
	
	public String delAttendance(){
		
//		recordServer.
//		rDao.delAtd(record2.getZIPname(),DateTime,MACid);

		return "save";
	}

	public String delRecord(){
		
//		rDao.delRd(record2.getZIPname(),DateTime,MACid);
		
		return "save";
	}

	
}
