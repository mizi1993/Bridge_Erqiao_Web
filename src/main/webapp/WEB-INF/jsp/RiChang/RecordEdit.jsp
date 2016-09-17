<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link href="images/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//每次进入此页面赋值为将图片标记为""
		$("#flag1").val(""); 
		$("#flag2").val(""); 
		$("#flag3").val(""); 
		$("#flag4").val(""); 
		$("#flag5").val(""); 
		$("#flag6").val("");  
		
		/* 根据class获取item */
		$("#ddlClass").change(function() {
			$.post("RecordEdit_getItemName", {
				classId : $("#ddlClass").val()
			}, function(data) {
				/* 清空item*/
				$("#ddlItem option[value!=-1]").remove();
				/* 清空defect */
				$("#ddlDefect option[value!=-1]").remove();
				var jsonObj = eval("(" + data + ")");
				for (var i = 0; i < jsonObj.length; i++) {
					var $option = $("<option></option>");
					$option.attr("value", jsonObj[i].itemId);
					$option.text(jsonObj[i].itemName);
					$("#ddlItem").append($option);
				}
			}); 
		});
		/* 根据item获取defect */
		$("#ddlItem").change(function() {
			$.post("RecordEdit_getPositionDefect", {
				itemId : $("#ddlItem").val()
			}, function(data) {
				/* 清空defect */
				$("#ddlDefect option[value!=-1]").remove();
				/* 清空ddlPosition */
				$("#ddlPosition option[value!=-1]").remove();
				var tmp = data.split("?");
				var jsonObj1 = eval("(" + tmp[0] + ")"); 
				var jsonObj2 = eval("(" + tmp[1] + ")");
				for (var i = 0; i < jsonObj1.length; i++) {
					var $option = $("<option></option>");
					$option.attr("value", jsonObj1[i].defectId);
					$option.text(jsonObj1[i].defectName);
					$("#ddlDefect").append($option);
				} 
			 	for (var i = 0; i < jsonObj2.length; i++) {
					var $option = $("<option></option>");
					$option.attr("value", jsonObj2[i].positionId);
					$option.text(jsonObj2[i].positionName);
					$("#ddlPosition").append($option);
				} 
			}); 
		});
		
	});
	
	function ShowImg1(){
		$("#flag1").val("1"); 
	}
	function ShowImg2(){
		$("#flag2").val("2"); 
	}
	function ShowImg3(){
		$("#flag3").val("3"); 
	}
	function ShowImg4(){
		$("#flag4").val("4"); 
	}
	function ShowImg5(){
		$("#flag5").val("5"); 
	}
	function ShowImg6(){
		$("#flag6").val("6"); 
	}
	
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form id="form1" action="RecordEdit_save" method="post" enctype="multipart/form-data"
		onsubmit="javascript:return confirm('您确认要保存吗？')">
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">巡查记录编辑</td>
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
								<%-- <s:hidden name="ZIPname"></s:hidden>
								<s:hidden name="MACid"></s:hidden> --%>
								<s:hidden name="r.id"></s:hidden>
								<td height="25" width="20%" align="right">时间：</td>
								<td height="25" width="30%" align="left">
									<s:textfield readonly="true">
										<s:param name="value">
											<s:date name="r.datetime" format="yyyy-MM-dd HH:mm:ss" />
										</s:param>
									</s:textfield></td>
								<td height="25" width="20%" align="right">位置1：</td>
								<td height="25" width="30%" align="left">
									<s:select id="ddlPosition" name="ddlPosition" list="#position" listKey="positionId" 
											listValue="positionName" value="#Pselected" headerKey="-1" 
											headerValue="请选择">
									</s:select>
								</td>
							</tr>
							<tr>
								<td height="25" width="20%" align="right">巡检类别：</td>
								<td height="25" width="30%" align="left">
								<s:select id="ddlClass" name="ddlClass" list="#class" listKey="classId"
										listValue="className" value="#Cselected" headerKey="-1"
										headerValue="请选择" >
								</s:select>
								</td>
								<td height="25" width="20%" align="right">位置2：</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="r.position2"></s:textfield></td>
								
							</tr>
							<tr>
								<td height="25" width="20%" align="right">项目：</td>
								<td height="25" width="30%" align="left">
								<s:select id="ddlItem" name="ddlItem" list="#item" listKey="itemId"
										listValue="itemName" value="#Iselected" headerKey="-1"
										headerValue="请选择" >
								</s:select>
								<!-- <input id="hiddenItem" type="hidden"/> -->
								</td>
								<td height="25" width="20%" align="right">位置3：</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="r.position3"></s:textfield></td>
							</tr>
							<tr>
								<td height="25" width="20%" align="right">缺损：</td>
								<td height="25" width="30%" align="left">
								<s:select id="ddlDefect" name="ddlDefect" list="#defect" listKey="defectId" 
										listValue="defectName" value="#Dselected" headerKey="-1" 
										headerValue="请选择">
								</s:select> 
									<!-- <input id="hiddenDefect" type="hidden"/> -->
								</td>
								<td height="25" width="20%" align="right">数据：</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="r.data"></s:textfield>
								</td>
							</tr>
							<tr>
								<td width="20%" align="right">照片：</td>
								<td colspan="3" align="center">
									<table style="width: 100%;">
										<tr>
											<td align="center">
												<img src="<s:property value="r.img1"/>" height="150" /> <br />
												<s:file name="image" onchange="ShowImg1()"></s:file>
												<s:hidden id="flag1" name="flag1"></s:hidden>
											</td>
											<td align="center">
												<img src="<s:property value="r.img2"/>" height="150" /> <br />
												<s:file name="image" onchange="ShowImg2()"></s:file>
												<s:hidden id="flag2" name="flag2"></s:hidden>
											</td>
											<td align="center">
												<img src="<s:property value="r.img3"/>" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg3()"></s:file>
												<s:hidden id="flag3" name="flag3"></s:hidden>
											</td>
										</tr>
										<tr>
											<td align="center">
												<img src="<s:property value="r.img4"/>" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg4()"></s:file>
												<s:hidden id="flag4" name="flag4"></s:hidden>
											</td>
											<td align="center">
												<img src="<s:property value="r.img5"/>" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg5()"></s:file>
												<s:hidden id="flag5" name="flag5"></s:hidden>
											</td> 
											<td align="center">
												<img src="<s:property value="r.img6"/>" height="150" /> <br />
												<s:file name="image" onchange="ShowImg6()"></s:file>
												<s:hidden id="flag6" name="flag6"></s:hidden>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div> 
					<br/>
					<div>
						<s:submit name="btnSave" value="保存" cssClass="Button"/>
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="button" name="btnBack" value="返回" class="Button"
						onclick="window.location.href='Detail?zipname=<s:property value="r.zipname"/>&macid=<s:property value="r.macid"/>'">
					</div>
				</td>
			</tr>
		</table>

	</form>
</body>
</html>