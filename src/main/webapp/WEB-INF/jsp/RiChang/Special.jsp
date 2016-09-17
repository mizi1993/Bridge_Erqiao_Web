<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%@ taglib prefix="s" uri="/struts-tags"%> 

<link href="images/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Calendar/WdatePicker.js"></script>
<script type="text/javascript">
	function SelectAll(checkbox) {
		var state = checkbox.checked;
		var elem = document.getElementsByTagName('input');
		for (i = 0; i < elem.length; i++) {
			if (elem[i].type == 'checkbox' && elem[i].id != checkbox.id
					&& elem[i].checked != state) {
				elem[i].checked = state;
			}
		}
	}
	function GetIndex() {
		document.all.txthidden.value = "";
		for (var i = 1; i < gridView.rows.length; i++) {
			var elem = gridView.rows[i].cells[0].getElementsByTagName('input');
			if (elem[0].type == 'checkbox' && elem[0].checked == true) {
				document.all.txthidden.value += "'" + elem[0].value + "',";
			}
		}
		if (document.all.txthidden.value != "") {
			document.all.txthidden.value = document.all.txthidden.value.substr(
					0, document.all.txthidden.value.length - 1);
		}
	}

	function SetCheckBox() {
		var elem = document.getElementsByTagName('input');
		for (var i = 0; i < elem.length; i++) {
			if (elem[i].type == 'checkbox'
					&& document.all.txthidden.value.indexOf(elem[i].value) != -1) {
				elem[i].checked = true;
			}
		}
	}

	function Show3D(positions) {
		win = window
				.open(
						'http://59.175.212.66:10001/ZcmIC?AQJGDF=`q&positions='
								+ positions,
						'ZcmICWindow',
						'height=600,width=800,toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no');
		window.opener = null;
		window.open('', '_self');
		window.close();
	}

	function detail(url,id){		
		window.location.href=url + "?id=" + id;
	}
	
	function Del(url,id) {
		if (confirm('确定删除信息？')) {
			window.location.href = url + "?id=" + id;
		}
	}
	
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">				
				 特殊事件管理				
				</td>
			</tr>
		</table>
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0" >
			<tr>
				<td height="30"><fieldset>
						<legend class="GroupboxTitle">查询选项</legend>
						<table width="100%" cellspacing="0" cellpadding="5"
							class="tableFrom">
							<tr>
								<td style="font-size: 13px; text-align: left">
								<form id="day" name="day" method="post" action="Special_byDay">
								按日查询: 
								<s:textfield name="edtFromDate" onfocus="WdatePicker({dateFmt:'yyyy年MM月dd日'})"
									cssClass="InputText"></s:textfield>-
								<s:textfield name="edtToDate" onfocus="WdatePicker({dateFmt:'yyyy年MM月dd日'})"
									cssClass="InputText"></s:textfield>
								<s:submit value="查询" cssClass="Button"></s:submit> 
								</form>
								<form id="month" name="month" method="post" action="Special_byMonth">
									按月查询：				
								<s:select name="ddlMonth" list="#ddlMonthList" listKey="id"
										listValue="dateString" value="ddlMonth" headerKey="-1" 
										headerValue="全部" cssClass="InputText" >
										<s:param name="value"><s:date name="datetime" format="yyyy-MM"/></s:param>
								</s:select>
								<s:submit value="查询" cssClass="Button"></s:submit> 
								</form>
								</td>
							</tr>
						</table>
					</fieldset></td>
			</tr>
		</table>
		<br> 
		&nbsp;&nbsp; 
		<input type="hidden" id="txthidden"/>

		<table align="center" border="1" width="98%" CellPadding="3">
			<tr align="center" class="TdTitle">
				<td width="10%">序号</td>
				<td width="35%">日期</td>
				<td width="15%">事件</td>
				<td width="15%">地点</td>
				<td width="25%">操作</td>
			</tr>
		 	<s:iterator  value="#specialList" var="al" status="st">
			<tr align="center" Class="GVRow">
				<td align="center"><s:property value="#p+#st.index"/></td>
				<td><s:date name="#al.datetime" format="yyyy-MM-dd HH:mm:ss"/></td> 
				<td><s:property value="#al.events"/></td>
				<td><s:property value="#al.position"/></td>
				<td align="center">
				    <input name="btnDetail" type="button" value="详细" class="Button" 
				    onclick="detail('SpecialDetail','<s:property value="#al.id"/>')">&nbsp;
					<input name="btnEdit" type="button" value="编辑" class="Button"
					onclick="detail('SpecialEdit','<s:property value="#al.id"/>')">&nbsp;
					<input name="btn3D" type="button" value="打印" class="Button"
					onclick="window.location.href='Word?id=<s:property value="#al.id"/>'">&nbsp;
					<input name="btnDelete" type="button" value="删除" class="Button"
					onclick="Del('Special_del','<s:property value="#al.id"/>')">&nbsp; 
				</td>
			</tr>
			</s:iterator> 
			<tr>
				<td colspan="10">${bar}</td>
			</tr>
		</table>
	


</body>
</html>