//首页 上一页 [1][2][3][4][5]下一页 尾页
package com.erqiao.rc.util;

public class Pages {

	public static StringBuffer getBar(String action,Integer pageNow,Integer pageCount,Integer ddlMonth,
			String edtFromDate,String edtToDate) {
		
		StringBuffer sbBuffer= new StringBuffer();
		if(pageCount==0){
			pageCount =1;
		}
		sbBuffer.append("第"+pageNow+"页/共"+pageCount+"页");
		sbBuffer.append(" ");
		//首页
		sbBuffer.append("<a href="+action+
				"?pageNow="+1+"&ddlMonth="+ddlMonth+
				"&edtFromDate="+edtFromDate+"&edtToDate="+edtToDate+">首页</a>");
		sbBuffer.append(" ");
		//上一页
		if(pageNow!=1){
			sbBuffer.append("<a href="+action+
				"?pageNow="+(pageNow-1)+"&ddlMonth="+ddlMonth+
					"&edtFromDate="+edtFromDate+"&edtToDate="+edtToDate+">上一页</a>");
		}
		sbBuffer.append(" ");
		//显示超链接
		//可操作页数 只有5个
		int j;
		//当前页码pageNow大于等于第四页，小于倒数第二页时,可操作页码跟随变化
		if(pageCount>4 && pageNow>=4 && pageNow<pageCount-1){
			for(j =pageNow-2;j<pageNow+3;j++){
				if(j==pageNow){
					sbBuffer.append(" "+j+" ");
				}else {
					sbBuffer.append("<a href="+action+
							"?pageNow="+j+"&ddlMonth="+ddlMonth+
							"&edtFromDate="+edtFromDate+"&edtToDate="+edtToDate+">["+j+"]</a>");
				}
				
			}
		//当前页码pageNow大于等于倒数第二页时，可操作页码不再变化
		}else if (pageCount>4 && pageNow>=pageCount-1) {		
			for(j = pageCount-4;j<=pageCount;j++){
				if(j==pageNow){
					sbBuffer.append(" "+j+" ");
				}else {
				sbBuffer.append("<a href="+action+
						"?pageNow="+j+"&ddlMonth="+ddlMonth+
						"&edtFromDate="+edtFromDate+"&edtToDate="+edtToDate+">["+j+"]</a>");
				}
				}
			}else if(pageCount>4){
				for(j =1;j<=5;j++){
					if(j==pageNow){
						sbBuffer.append(" "+j+" ");
					}else {
					sbBuffer.append("<a href="+action+
							"?pageNow="+j+"&ddlMonth="+ddlMonth+
							"&edtFromDate="+edtFromDate+"&edtToDate="+edtToDate+">["+j+"]</a>");
					}
				}
			}else {
				for(j =1;j<=pageCount;j++){
					if(j==pageNow){
						sbBuffer.append(" "+j+" ");
					}else {
					sbBuffer.append("<a href="+action+
							"?pageNow="+j+"&ddlMonth="+ddlMonth+
							"&edtFromDate="+edtFromDate+"&edtToDate="+edtToDate+">["+j+"]</a>");
					}
				}
			}

		sbBuffer.append(" ");
		//下一页
		if(pageNow!=pageCount){
			sbBuffer.append("<a href="+action+
					"?pageNow="+(pageNow+1)+"&ddlMonth="+ddlMonth+
					"&edtFromDate="+edtFromDate+"&edtToDate="+edtToDate+">下一页</a>");
		}
		sbBuffer.append(" ");
		//尾页
		sbBuffer.append("<a href="+action+
				"?pageNow="+pageCount+"&ddlMonth="+ddlMonth+
				"&edtFromDate="+edtFromDate+"&edtToDate="+edtToDate+">尾页</a>");
		
		return sbBuffer;
	}
	
}

