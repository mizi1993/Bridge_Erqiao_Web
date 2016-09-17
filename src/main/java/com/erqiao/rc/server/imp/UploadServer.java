package com.erqiao.rc.server.imp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.erqiao.rc.dao.IAttendanceDao;
import com.erqiao.rc.dao.IGpsDao;
import com.erqiao.rc.dao.IRecordDao;
import com.erqiao.rc.dao.IScanDao;
import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.domain.Gps;
import com.erqiao.rc.domain.Record;
import com.erqiao.rc.domain.Scan;
import com.erqiao.rc.server.IUploadServer;

@Service("uploadService")
public class UploadServer implements IUploadServer {

	@Resource
	private IScanDao scanDao;
	
	@Resource
	private IAttendanceDao attendanceDao;
	
	@Resource
	private IRecordDao recordDao;
	
	@Resource
	private IGpsDao gpsDao;
	
	@Override
	public void add(Attendance attendance) {
		attendanceDao.add(attendance);
	}

	@Override
	public void add(Gps gps) {
		gpsDao.add(gps);
	}

	@Override
	public void add(Record record) {
		recordDao.add(record);
	}

	@Override
	public void add(Scan scan) {
		// TODO Auto-generated method stub
		scanDao.add(scan);
	}

}
