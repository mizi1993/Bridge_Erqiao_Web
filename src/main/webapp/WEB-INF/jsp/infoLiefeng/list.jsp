<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<style type="text/css">
.style1 {
	color: Gold;
	font-family: "黑体";
	FONT-SIZE: 20px;
	BACKGROUND-COLOR: transparent;
	filter: DropShadow(Color = #000000, OffX = 1, OffY = 1);
	width: 1211px;
}
</style>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form method="post" action="" id="form1">
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="style1">典型裂缝定期检查结果管理</td>
				<td align="right"><s:a cssClass="Button"
						action="infoLiefeng_addUI?taskId=%{#task.id}"
						style="display: inline-block; width: 90px;">新增记录</s:a></td>
			</tr>
		</table>
		<br />
		<div>
			<table cellspacing="0" cellpadding="3" align="Center" rules="all"
				id="gridView"
				style="border-width: 1px; border-style: solid; width: 98%; border-collapse: collapse;">
				<tr class="TdTitle">
					<th scope="col" style="width: 40px;">序号</th>
					<th scope="col">时间</th>
					<th scope="col">位置</th>
					<th scope="col">编号</th>
					<th scope="col">长度(mm)</th>
					<th scope="col">前端延伸量(mm)</th>
					<th scope="col">后端延伸量(mm)</th>
					<th scope="col">宽度(mm)</th>
					<th scope="col" style="width: 300px;">操作</th>
				</tr>
				<s:iterator value="#infoList" status="status">
					<tr class="GVRow" align="center">
						<td>${status.count}</td>
						<td>${date}${time}</td>
						<td>${position}</td>
						<td>${no}</td>
						<td>${length}</td>
						<td>${l1}</td>
						<td>${l2}</td>
						<td>${width}</td>
						<td align="center"><s:a id="gridView_btnEdit_0"
								cssClass="Button" action="infoLiefeng_show?id=%{id}"
								style="display: inline-block; width: 90px;">详细&编辑</s:a>
							&nbsp;&nbsp; <s:a onclick="return confirm('你确认要删除吗');"
								id="gridView_btnDelete_0" cssClass="Button"
								action="infoLiefeng_delete?id=%{id}&&taskId=%{#task.id}"
								style="display: inline-block; width: 50px;">删除</s:a></td>
					</tr>
				</s:iterator>
			</table>
		</div>
		<br />
		<br />
		<table align="center" border="2" cellpadding="0" cellspacing="0"
			width="98%" visible="false">
			<tr>
				<td colspan="6" align="center" height="30"
					style="font-size: 20px; font-weight: bolder; color: gold;">审核
				</td>
			</tr>
			<tr align="center">

				<td><input type="submit" name="sign_head" value="负责人审核"
					id="sign_head" disabled="disabled" class="aspNetDisabled Button" />
					<br /> <img id="head_img" src=""
					style="height: 48px; width: 96px;" /> <br /> <span id="head_time"></span>
				</td>


			</tr>
		</table>

		<div align="center" height="30"
			style="font-size: 20px; font-weight: bolder; color: gold;">
			巡检轨迹</div>
		<div style="width: 98%; border: 1px solid gray; height: 400px;"
			id="container" align="center"></div>
	</s:form>
</body>
</html>
  