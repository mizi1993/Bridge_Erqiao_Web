<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Function</title>
<%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.css"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.fancybox.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/show.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.fancybox.pack.js"></script>
<script type="text/javascript">
var newName=new Array();
var tuxiangliangJson;
var tuxiangliangImg;
	$(function(){
		if(!($("#tuxiangliangJson").val())){
			$("#tuxiangliangJson").val("{'id':0,'level':'0'}");
		}
		initJson();//初始化Json以及img数组。
	    for(var i=0;i<6;i++){
	    	document.getElementById("imgPre"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+tuxiangliangImg[i];
	    }
	});
	function initJson(){
		   tuxiangliangJson=eval('('+$("#tuxiangliangJson").val()+')');//因为是同一个Json中的多张img改变，每次都将根据当前json重置img数组。
	  	   tuxiangliangImg=new Array(tuxiangliangJson.img1,tuxiangliangJson.img2,tuxiangliangJson.img3,tuxiangliangJson.img4,tuxiangliangJson.img5,tuxiangliangJson.img6);
		}
 </script>
 </head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form method="post" action="infoTuxiangliang_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}" id="form1"
		enctype="multipart/form-data">
		<s:textfield id="tuxiangliangJson" name="tuxiangliangJson"/>
		<s:hidden name="id"/>
		<s:hidden id="imgPre1Index"/>
		<s:hidden id="imgPre2Index"/>
		<s:hidden id="imgPre3Index"/>
		<s:hidden id="imgPre4Index"/>
		<s:hidden id="imgPre5Index"/>
		<s:hidden id="imgPre6Index"/>
		<s:hidden name="newName" id="newName"/>
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">混凝土箱梁数据详细&编辑
</td>
			</tr>
		</table>

		<table style="width: 100%;" cellpadding="2" cellspacing="1"
			class="border" align="center">
			<tr>
				<td align="center">
					<div>
						<table style="width: 98%;" cellSpacing="0" cellPadding="5"
							border="1" class="tableFrom">
							 <tr>
            <td height="25" width="20%" align="right">
		        选择表名：</td>
            <td height="25" width="30%" align="left">
                <s:textfield name="#task.name" readonly="readonly" cssStyle="color:Red;" />
                <font color="gold">(不可修改)</font></td>
            <td height="25" width="20%" align="right">
		        时间：
	        </td>
            <td height="25" width="30%" align="left">
                <input name="dateTime" value="${date} ${time}" onfocus="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" />
            </td>
        </tr>
        <tr>
            <td height="25" width="20%" align="right">
                梁段位置：
	        </td>
            <td height="25" width="30%" align="left">
                <div style="position:relative;"> 
                   <s:textfield name="position" cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" /> 
               </div>
            </td>
            <td height="25" width="20%" align="right">
                &nbsp;缺陷位置：
            </td>
            <td height="25" width="30%" align="left">
                <s:textfield name="defect_position" />
            </td>
        </tr>
        <tr>
            <td height="25" width="20%" align="right">
                缺陷类型：</td>
            <td height="25" width="30%" align="left">
                <div style="position:relative;"> 
                   <s:textfield name="defect" cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;"  /> 
               </div>
            </td>
            <td height="25" width="20%" align="right">
                缺陷范围：
            </td>
            <td height="25" width="30%" align="left">
                <s:textfield name="data"/>
            </td>
        </tr>
        <tr>
            <td height="25" width="20%" align="right">
                等级：
            </td>
            <td height="25" width="30%" align="left">
                <s:textfield name="level" />
            </td>
            <td height="25" width="20%" align="right">
                养护意见:</td>
            <td height="25" width="30%" align="left">
                <s:textfield name="advice"  />
            </td>
        </tr>

							<tr>
								<td width="20%" align="right">照片：</td>
								<td colspan="3" align="center">
									<table style="width: 100%;">
										<tr>
											<td align="center"><img
												src=""
												id="imgPre1" width="200" height="150" /> <br /><s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'tuxiangliang',1)"
												cssClass="InputText" /></td>
											<td align="center"><img
												src="" id="imgPre2"
												width="200" height="150" /> <br /> <s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'tuxiangliang',2)"
												cssClass="InputText" /></td>
											<td align="center"><img
												src="" id="imgPre3"
												width="200" height="150" /> <br /> <s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'tuxiangliang',3)"
												cssClass="InputText" /></td>
										</tr>
										<tr>
											<td align="center"><img
												src="" id="imgPre4"
												width="200" height="150" /> <br /><s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'tuxiangliang',4)"
												cssClass="InputText" /></td>
											<td align="center"><img
												src=""  id="imgPre5"
												width="200" height="150" /> <br /> <s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'tuxiangliang',5)"
												cssClass="InputText" /></td>
											<td align="center"><img
												src="" id="imgPre6"
												width="200" height="150" /> <br /> <s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'tuxiangliang',6)"
												cssClass="InputText" /></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div> <br />
					<div>
						<input type="submit" name="btnSave" value="保存" id="btnSave"
							class="Button" /> &nbsp;&nbsp;&nbsp;&nbsp; <input type="Button"
							name="btnBack" value="返回" id="btnBack" class="Button" />
					</div>
				</td>
			</tr>
		</table>
	</s:form>
</body>

</html>