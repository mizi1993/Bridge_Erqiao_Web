package com.whut.erqiao.entity;

import java.util.List;

public class PageBean {
	
	private int currentPage;//当前页
	private int pageSize;//每页的记录数.
	private int pageCount;//总页数.
	private List recordList;//本页的数据列表。
	private int recordCount;//总记录数
	private int beginPageIndex;//页码列表
	private int endPageIndex;//页码列表的结束索引。
	
	//只用接受4个必要属性的值，就会自动计算出其他3个属性的值。
	public PageBean(int currentPage, int pageSize, int recordCount,
			List recordList) {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.recordCount = recordCount;
		this.recordList = recordList;
		//计算总页码。
		pageCount=(recordCount+pageSize-1)/pageSize;
		//计算beginPageIndex、endPageIndex
		//总页数不多于10页。
		if(pageCount<=10){
			beginPageIndex=1;
			endPageIndex=pageCount;
		}else{
		//总页数多于10页。显示当前页附近的共10个页码。
			//当前附近共10个页码。（前4个+后5个）
			beginPageIndex=currentPage-4;
			endPageIndex=currentPage+5;
			//当前面的页码不足4个时，则显示前10个页码。
			if(beginPageIndex<1){
				beginPageIndex=1;
				endPageIndex=10;
			}
			//当后面页码不足5个时,则显示后10个页码.
			if(endPageIndex>pageCount){
				endPageIndex=pageCount;
				beginPageIndex=pageCount-9;
			}
		}
		
			
			
			
	}
	public List getRecordList() {
		return recordList;
	}
	public void setRecordList(List recordList) {
		this.recordList = recordList;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
	public int getBeginPageIndex() {
		return beginPageIndex;
	}
	public void setBeginPageIndex(int beginPageIndex) {
		this.beginPageIndex = beginPageIndex;
	}
	public int getEndPageIndex() {
		return endPageIndex;
	}
	public void setEndPageIndex(int endPageIndex) {
		this.endPageIndex = endPageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	@Override
	public String toString() {
		return "PageBean [currentPage=" + currentPage + ", pageSize="
				+ pageSize + ", pageCount=" + pageCount + ", recordList="
				+ recordList + ", recordCount=" + recordCount
				+ ", beginPageIndex=" + beginPageIndex + ", endPageIndex="
				+ endPageIndex + "]";
	}
	
	
}
