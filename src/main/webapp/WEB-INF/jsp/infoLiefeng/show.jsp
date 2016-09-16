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
var liefengJson;
var liefengImg;	
	$(function(){
		if(!($("#liefengJson").val())){
			$("#liefengJson").val("{'id':0,'level':'0'}");
		}
		initJson();//初始化Json以及img数组。
	    for(var i=0;i<6;i++){
	    	document.getElementById("imgPre"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+liefengImg[i];
	    }
	});	
	function initJson(){
	   liefengJson=eval('('+$("#liefengJson").val()+')');//因为是同一个Json中的多张img改变，每次都将根据当前json重置img数组。
  	   liefengImg=new Array(liefengJson.img1,liefengJson.img2,liefengJson.img3,liefengJson.img4,liefengJson.img5,liefengJson.img6);
	}
 </script>
 </head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form method="post" action="infoLiefeng_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}" id="form1"
		enctype="multipart/form-data">
		<s:hidden id="liefengJson" name="liefengJson"/>
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
				<td height="40" align="center" class="GridTitle">典型裂缝数据详细&编辑</td>
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
                <s:textfield name="#task.name"  readonly="readonly" style="color:Red;" />
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
                位置：
	        </td>
            <td height="25" width="30%" align="left">
                <div style="position:relative;"> 
                   <s:textfield name="position" style="position:absolute;left:-2px; top: 0px; right: 243px;"  /> 
               </div>
            </td>
            <td height="25" width="20%" align="right">
                &nbsp;长度（mm）：
            </td>
            <td height="25" width="30%" align="left">
                <s:textfield name="length" />
            </td>
        </tr>
        <tr>
            <td height="25" width="20%" align="right">
                前端伸量（mm）：</td>
            <td height="25" width="30%" align="left">
                <s:textfield name="l1"/>
            </td>
            <td height="25" width="20%" align="right">
                后端伸量（mm）：
            </td>
            <td height="25" width="30%" align="left">
                <s:textfield name="l2" />
            </td>
        </tr>
        <tr>
            <td height="25" width="20%" align="right">
                宽度（mm）：
            </td>
            <td height="25" width="30%" align="left">
                <s:textfield name="width" />
            </td>
            <td height="25" width="20%" align="right">
                编号:</td>
            <td height="25" width="30%" align="left">
                <s:textfield name="no" />
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
												onchange="simplePreImg(this.id,'liefeng',1)"
												cssClass="InputText" /></td>
											<td align="center"><img
												src="" id="imgPre2"
												width="200" height="150" /> <br /> <s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'liefeng',2)"
												cssClass="InputText" /></td>
											<td align="center"><img
												src="" id="imgPre3"
												width="200" height="150" /> <br /> <s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'liefeng',3)"
												cssClass="InputText" /></td>
										</tr>
										<tr>
											<td align="center"><img
												src="" id="imgPre4"
												width="200" height="150" /> <br /><s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'liefeng',4)"
												cssClass="InputText" /></td>
											<td align="center"><img
												src=""  id="imgPre5"
												width="200" height="150" /> <br /> <s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'liefeng',5)"
												cssClass="InputText" /></td>
											<td align="center"><img
												src="" id="imgPre6"
												width="200" height="150" /> <br /> <s:file name="image" label="选择文件"
												onchange="simplePreImg(this.id,'liefeng',6)"
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