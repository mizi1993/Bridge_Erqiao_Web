<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Function</title>
<%@ taglib prefix="s" uri="/struts-tags"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<%-- <font color="red"><s:fielderror/></font> --%>
<form id="form1" action="AttendanceEdit_save" method="post" enctype="multipart/form-data"
onsubmit="javascript:return confirm('您确认要保存吗？')">
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">考勤记录编辑</td>
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
								<s:hidden name="atd.id"></s:hidden>
								<td height="25" width="20%" align="right">巡检日期：</td>
								<td height="25" width="30%" align="left">
								<s:textfield readonly="true">
									<s:param name="value">
									<s:date name="atd.datetime" format="yyyy-MM-dd HH:mm:ss"/>
									</s:param>
								</s:textfield>
								</td>
								<td height="25" width="20%" align="right">上/下桥：</td>
								<td height="25" width="30%" align="left">
								<s:select name="ddlUpDown" list="#updown" listKey="key"
										listValue="value" value="#UpDselected" label="上/下桥"
										headerKey="-1" headerValue="请选择"></s:select>
								</td>
							</tr>
							<tr>
								<td height="25" width="20%" align="right">巡检人：
								</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="atd.staff"></s:textfield> 
								</td>
								<td height="25" width="20%" align="right">天气：
								</td>
								<td height="25" width="30%" align="left">
								<s:select name="ddlWeather" list="#weather" listKey="key"
										listValue="value" value="#selected" label="Weather"
										headerKey="-1" headerValue="请选择"></s:select> 
								</td>
							</tr>
							<tr>
								<td height="25" width="20%" align="right">温度(℃)：
								</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="atd.temp"></s:textfield> 
								</td>
								<td height="25" width="20%" align="right">湿度(%)：
								</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="atd.hum"></s:textfield> 
								</td>
							</tr>
							<tr>
								<td height="25" width="20%" align="right">详细：
								</td>
								<td height="25" align="left" colspan="3">
								<s:textfield name="atd.detail"></s:textfield> 
								</td>
							</tr>
							<tr>
								<td width="20%" align="right">照片：</td>
								<td width="30%" colspan="3" align="center">
								<img src="<s:property value="atd.img"/>" width="200" height="250" /> <br /> 
								<s:file name="image" ></s:file>
								</td>
							</tr>
						</table>
					</div>
			<br />
			<div>
				<input type="submit" name="btnSave" value="保存" class="Button">
				&nbsp;&nbsp;&nbsp;&nbsp; 
				<input type="button" name="btnBack" value="返回" class="Button"
					onclick="window.location.href='Detail?zipname=<s:property 
					value="atd.zipname"/>&macid=<s:property value="atd.macid"/>'">
			</div>
			</td>
			</tr>
		</table>
	</form>
</body>
</html>