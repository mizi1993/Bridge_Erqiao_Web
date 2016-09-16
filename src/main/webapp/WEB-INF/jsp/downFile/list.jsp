<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<style type="text/css">
.style2 {
	width: 767px;
}
</style>
<!-- <script type="text/javascript">
	//删除一个Word文件
	function DeleteWordfile(Deletefile) {
		if (confirm('你确认要删除该文件吗？') == true) {
			BHMS.WAS.Report.Report_DQJL.DeleteWordFile(Deletefile);
			return true;
		} else {
			return false;
		}
	}
</script> -->
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form method="post" action="downFileAction_list" id="form1">

		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">长江二桥定期检查记录表</td>
			</tr>
		</table>
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="30"><fieldset>
						<legend class="GroupboxTitle">查询选项</legend>

						查询起始日期：
						<s:textfield name="startDate" cssClass="InputText"
							onclick="WdatePicker({isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd'});" />
						&nbsp;查询结束日期：
						<s:textfield name="endDate" cssClass="InputText"
							onclick="WdatePicker({isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd'});" />
						&nbsp;报表名称关键字查询：
						<s:textfield name="keyword" cssClass="InputText" />
						&nbsp;&nbsp; &nbsp; <input type="submit" name="btnSearch"
							value="确    定" id="btnSearch" class="Button" /> <span
							class="GridTitle"> &nbsp;<input type="submit"
							name="btnUpload" value="上传报表文件" id="btnUpload" class="Button" />
						</span>
					</fieldset></td>
			</tr>
		</table>
		<br>
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#666666">
			<tr>
				<td colspan="2" align="center" bgcolor="#303030"><div>
						<table cellspacing="0" rules="all" border="1" id="gvReport"
							style="width: 100%; border-collapse: collapse;">
							<tr class="TdTitle">
								<th scope="col">报表名称</th>
								<th scope="col">报表日期</th>
								<th scope="col">文件类型</th>
								<th scope="col">文件大小</th>
								<th scope="col" style="width: 400px;">操作</th>
							</tr>
							<s:iterator value="recordList">
								<tr class="GVRow" align="center">
									<td>${name}</td>
									<td>${date}</td>
									<td><img
										src="${pageContext.request.contextPath}/images/FileType/doc.png"
										style="width: 40px;" /></td>
									<td>${size}</td>
									<td align="center"><s:a action="downFile_download?id=%{id}" cssClass="Button"
											cssStyle="display: inline-block; width: 90px;">下载报表</s:a>
										&nbsp;&nbsp; <s:a action="#" cssClass="Button"
											cssStyle="display: inline-block; width: 90px;">上传替换</s:a>
										&nbsp;&nbsp; <s:a action="downFile_delete?id=%{id}"
											onclick="return confirm('你确认要删除吗?');" cssClass="Button"
											cssStyle="display: inline-block; width: 90px;">删除文件</s:a></td>
								</tr>
							</s:iterator>
						</table>
					</div></td>
			</tr>
		</table>

		<div>
			<div style="width: 40%; float: left;">
				<span id="Label1"
					style="display: inline-block; font-size: Medium; height: 20px;">第${currentPage}页，共${pageCount}页，每页${pageSize}条，共${recordCount}记录</span>
			</div>
			<div style="width: 60%; float: left;">

				<div id="AspNetPager1" style="height: 20px;">
					<a  style="margin-right: 5px;"
						href="javascript: gotoPage(1)">首页</a>
						<s:if test="currentPage-1>0">
						<a 
						style="margin-right: 5px;" href="javascript: gotoPage(${currentPage-1})">上一页</a>
						</s:if>
						<s:iterator begin="%{beginPageIndex}" end="%{endPageIndex}" var="num" >
						<s:if test="#num==currentPage">
						<span
						style="margin-right: 5px; font-weight: Bold; color: red;">${currentPage}</span>
						</s:if>
						<s:else>
						<a href="javascript: gotoPage(${num})"
						style="margin-right: 5px;cursor: hand;">${num}</a>
						</s:else>
						</s:iterator>
						<s:if test="currentPage+1<=pageCount">
						<a
						href="javascript: gotoPage(${currentPage+1})"
						style="margin-right: 5px;">下一页</a>
						</s:if><a
						href="javascript: gotoPage(${pageCount})"
						style="margin-right: 5px;">尾页</a>&nbsp;&nbsp;
						转到<select
						name="AspNetPager1_input" id="AspNetPager1_input"
						onchange="gotoPage(this.value)">
						<s:iterator begin="1" end="%{pageCount}" var="num">
						<s:if test="#num==currentPage">
						<option value="${num}" selected="true">${num}</option>
						</s:if>
						<s:else>
						<option value="${num}">${num}</option>		
						</s:else>				
						</s:iterator>
					</select>页
				</div>


			</div>
		</div>

	</s:form>
	<script type="text/javascript">
		function gotoPage(pageNum) {
			/*  window.location.href = "task_list.action?id=${id}&pageNum=" + pageNum; */

			$(document.forms[0])
					.append(
							"<input type='hidden' name='pageNum' value='" + pageNum +"'>");
			document.forms[0].submit();
		}
	</script>
</body>
</html>
