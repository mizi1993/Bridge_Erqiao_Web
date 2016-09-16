<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Function</title>
<%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<style type="text/css">
.style1 {
	color: Gold;
	font-family: "黑体";
	FONT-SIZE: 20px;
	BACKGROUND-COLOR: transparent;
	filter: DropShadow(Color = #000000, OffX = 1, OffY = 1);
	width: 1249px;
}
</style>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form id="myForm" method="post" id="form1" action="">
		<s:hidden name="taskId" value="#task.id"></s:hidden>
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="style1">斜拉索下锚头桥面以上定期检查结果管理
				</td>
				<td align="right"><s:a cssClass="Button"
						action="infoXiamaotouUp_addUI?taskId=%{#task.id}"
						style="display: inline-block; width: 90px;">新增记录</s:a>
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
					<th scope="col">橡胶套管等级</th>
					<th scope="col">卡箍等级</th>
					<th scope="col">螺栓等级</th>
					<th scope="col">PE护套等级</th>
					<th scope="col">挡盖等级</th>
					<th scope="col">楔块等级</th>
					<th scope="col">减振器铁套等级</th>
					<th scope="col">橡胶阻力圈等级</th>
					<th scope="col">索导管、挡盖除锈积水处理</th>
					<th scope="col">其它</th>
					<th scope="col" style="width: 300px;">操作</th>
				</tr>
				<s:hidden id="infoSize" vlaue="#infoList.size()" />
				<s:iterator value="#infoList" status="status">
					<tr class="GVRow" align="center">
						<td>${status.count}</td>
						<td>${date}&nbsp;${time}</td>
						<td>${position}</td>
						<td>${taoguan_level}</td>
						<td>${kagu_level}</td>
						<td>${luoshuan_level}</td>
						<td>${hutao_level}</td>
						<td>${danggai_level}</td>
						<td>${xiekuai_level}</td>
						<td>${tietao_level}</td>
						<td>${zuliquan_level}</td>
						<td>${chuli}</td>
						<td>${other}</td>
						<td align="center"><s:a id="gridView_btnEdit_0"
								cssClass="Button" action="infoXiamaotouUp_show?id=%{id}"
								style="display: inline-block; width: 90px;">详细&编辑</s:a>
							&nbsp;&nbsp; <s:a onclick="return confirm('你确认要删除吗?');"
								id="gridView_btnDelete_0" cssClass="Button"
								action="infoXiamaotouUp_delete?id=%{id}&&taskId=%{#task.id}"
								style="display: inline-block; width: 50px;">删除</s:a></td>
					</tr>
				</s:iterator>
			</table>
		</div>
		<br /> <br />
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
	</form>
</body>

</html>