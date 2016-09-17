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
	$(document).ready(function(){
		//每次进入此页面赋值为将图片标记为""
		$("#flag1").val(""); 
		$("#flag2").val(""); 
		$("#flag3").val(""); 
		$("#flag4").val(""); 
		$("#flag5").val(""); 
		$("#flag6").val(""); 
		$("#flag7").val(""); 
		$("#flag8").val(""); 
		$("#flag9").val(""); 
		$("#flag10").val(""); 
	});
	
	function ShowImg1(){
		$("#flag1").val("1"); 
	}
	function ShowImg2(){
		$("#flag2").val("2"); 
	}
	function ShowImg3() {
		$("#flag3").val("3");
	}
	function ShowImg4() {
		$("#flag4").val("4");
	}
	function ShowImg5() {
		$("#flag5").val("5");
	}
	function ShowImg6() {
		$("#flag6").val("6");
	}
	function ShowImg7() {
		$("#flag7").val("7");
	}
	function ShowImg8() {
		$("#flag8").val("8");
	}
	function ShowImg9() {
		$("#flag9").val("9");
	}
	function ShowImg10() {
		$("#flag10").val("10");
	}
</script>

</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

	<form id="form1" method="post" action="SpecialEdit_save" enctype="multipart/form-data">
	<div style ="color:red">
    <s:fielderror />
	</div >
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">特殊事件编辑</td>
			</tr>
		</table>
		<table style="width: 100%;" cellpadding="2" cellspacing="1" class="border" align="center">
			<tr>
				<td align="center">
					<div>
						<table style="width: 98%;" cellSpacing="0" cellPadding="5"
							border="1" class="tableFrom">
							<tr>
								<s:hidden name="id"></s:hidden>
								<td height="25" width="20%" align="right">日期：</td>
								<td height="25" width="30%" align="left">
								<s:textfield disabled="true" >
									<s:param name="value">
										<s:date name="s.datetime" format="yyyy-MM-dd HH:mm:ss"/>
									</s:param>
								</s:textfield>
								</td>
								<td height="25" width="20%" align="right">事件：</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="s.events"></s:textfield>
								</td>
							</tr>
							<tr>
								<td height="25" width="20%" align="right">地点：</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="s.position"></s:textfield>
								</td>
								<td height="25" width="20%" align="right">描述：</td>
								<td height="25" width="30%" align="left">
								<s:textfield name="s.detail"></s:textfield>
								</td>
							</tr>
							<tr>
								<td width="20%" align="right">照片：</td>
								<td colspan="3" align="center">
									<table style="width: 100%;">
										<tr>
											<td align="center">
											
												<img src="<s:property value="s.img1"/>" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg1()"></s:file>
												<s:hidden id="flag1" name="flag1"></s:hidden>
												
											</td>
											<td align="center">
												<img src="<s:property value="s.img2"/>" width="200" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg2()"></s:file>
												<s:hidden id="flag2" name="flag2"></s:hidden>
											</td>
											<td align="center" class="style1">
												<img src="<s:property value="s.img3"/>" width="200" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg3()"></s:file>
												<s:hidden id="flag3" name="flag3"></s:hidden>
											</td>
										</tr>
										<tr>
											<td align="center">
												<img src="<s:property value="s.img4"/>" width="200" height="150" /> <br />
												<s:file name="image" onchange="ShowImg4()"></s:file> 
												<s:hidden id="flag4" name="flag4"></s:hidden>
											</td>
											<td align="center">
												<img src="<s:property value="s.img5"/>" width="200" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg5()"></s:file>
												<s:hidden id="flag5" name="flag5"></s:hidden>
											</td>
											<td align="center" class="style1">
												<img src="<s:property value="s.img6"/>" width="200" height="150" /> <br />
												<s:file name="image" onchange="ShowImg6()"></s:file>
												<s:hidden id="flag6" name="flag6"></s:hidden>
											</td>
										</tr>
										<tr>
											<td align="center">
												<img src="<s:property value="s.img7"/>" width="200" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg7()"></s:file>
												<s:hidden id="flag7" name="flag7"></s:hidden>
											</td>
											<td align="center">
												<img src="<s:property value="s.img8"/>" width="200" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg8()"></s:file>
												<s:hidden id="flag8" name="flag8"></s:hidden>
											</td>
											<td align="center">
												<img src="<s:property value="s.img9"/>" width="200" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg9()"></s:file>
												<s:hidden id="flag9" name="flag9"></s:hidden>
											</td>
										</tr>
										<tr>
											<td align="center">
												<img src="<s:property value="s.img10"/>" width="200" height="150" /> <br /> 
												<s:file name="image" onchange="ShowImg10()"></s:file>
												<s:hidden id="flag10" name="flag10"></s:hidden>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div> <br />
					<div>
						<s:submit name="btnSave" value="保存" cssClass="Button"/>
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