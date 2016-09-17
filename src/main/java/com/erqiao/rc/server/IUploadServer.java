package com.erqiao.rc.server;

import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.domain.Gps;
import com.erqiao.rc.domain.Record;
import com.erqiao.rc.domain.Scan;

public interface IUploadServer {

	void add(Attendance attendance);
	void add(Gps gps);
	void add(Record record);
	void add(Scan scan);
}
