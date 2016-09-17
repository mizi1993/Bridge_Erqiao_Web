<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link href="images/css.css" rel="stylesheet" type="text/css" />

</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form id="form1" method="post" action="SpecialEdit">
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">特殊事件详细记录表</td>
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
<%-- 								<s:hidden name="ZIPname"></s:hidden>
								<s:hidden name="datetime"></s:hidden>
								<s:hidden name="MACid"></s:hidden> --%>
								<s:hidden name="s.id"></s:hidden>
								<td height="25" align="right" class="style2">日期：</td>
								<td height="25" align="left" class="style1">
								<s:label>
									<s:param name="value"><s:date name="s.datetime" format="yyyy-MM-dd HH:mm:ss"/></s:param>
								</s:label>
								</td>
								<td height="25" width="20%" align="right">地点：</td>
								<td height="25" width="30%" align="left">
								<s:label name="s.position"></s:label>
								</td>
							</tr>
							<tr>
								<td height="25" align="right" class="style2">事件：</td>
								<td height="25" align="left" class="style1">
								<s:label name="s.events"></s:label></td>
								<td height="25" align="right" class="style2">描述：</td>
								<td height="25" align="left" class="style1">
								<s:label name="s.detail"></s:label></td>
							</tr>
							<tr>
								<td align="right" class="style2">照片：</td>
								<td width="30%" colspan="3" align="center">
									<img id="img1" src="<s:property value="s.img1"/>" style="width: 164px; height: 167px" />&nbsp;&nbsp;
									<img id="img2" src="<s:property value="s.img2"/>" style="width: 164px; height: 167px" />&nbsp;&nbsp; 
									<img id="img3" src="<s:property value="s.img3"/>" style="width: 164px; height: 167px" />&nbsp;&nbsp;
									<img id="img4" src="<s:property value="s.img4"/>" style="width: 164px; height: 167px" />&nbsp;&nbsp; 
									<img id="img5" src="<s:property value="s.img5"/>" style="width: 164px; height: 167px" />
									<br /> <br /> 
									<img id="img6" src="<s:property value="s.img6"/>" style="width: 164px; height: 167px" />&nbsp;&nbsp; 
									<img id="img7" src="<s:property value="s.img7"/>" style="width: 164px; height: 167px" />&nbsp;&nbsp;
									<img id="img8" src="<s:property value="s.img8"/>" style="width: 164px; height: 167px" />&nbsp;&nbsp; 
									<img id="img9" src="<s:property value="s.img9"/>" style="width: 164px; height: 167px" />&nbsp;&nbsp;
									<img id="img10" src="<s:property value="s.img10"/>" style="width: 164px; height: 167px" />
								</td>
							</tr>
						</table>
					</div> <br />
					<div>
						<input type="submit" name="btnEdit" value="编辑" class="Button">
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="button" name="btnBack" value="返回" class="Button"
							onclick="window.location.href='Special'">
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>