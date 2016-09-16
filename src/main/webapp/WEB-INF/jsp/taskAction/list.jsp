<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Function</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf" %>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <s:form method="post" action="task_list" id="form1">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="40" align="center" class="GridTitle">
                定期巡检结果管理
            </td>
        </tr>
    </table>
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="30"><fieldset>
          <legend class="GroupboxTitle">查询选项</legend>
            <table width="100%" cellspacing="0" cellpadding="5" class="tableFrom">
              <tr>
                <td  style="font-size:13px; text-align:left">   
                部件：<s:select name="formId" id="ddlComponent" cssClass="InputText" list="#formList" 
                listKey="id" listValue="name" headerKey="" headerValue="全部">  
          </s:select>
                &nbsp;&nbsp;
                检查日期：<s:textfield name="startDate" id="txtStart" class="InputText" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
             —<s:textfield name="endDate" id="txtEnd" class="InputText" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
                &nbsp;&nbsp;
                <input type="submit" name="btnSearch" value="查询" id="btnSearch" class="Button" style="height: 21px" />                    
                </td>
                <td  style="font-size:13px;" align="right">   
               <!--  <input type="submit" name="btnAdd" value="新增巡检记录" id="btnAdd" cssClass="Button" /> -->
              	<s:a cssClass="Button"  action="task_addUI" style="display: inline-block; width: 100px;">新增巡检记录</s:a>
                </td>
                  
              </tr>
            </table>
        </fieldset></td>
      </tr>    
    </table>   
  <br />    
    <div>
	<table cellspacing="0" cellpadding="3" align="Center" rules="all" id="gridView" style="border-width:1px;border-style:solid;width:98%;border-collapse:collapse;">
		<tr class="TdTitle">
			<th scope="col">序号</th><th scope="col">表格</th><th scope="col">温度(℃)</th><th scope="col">检查人</th><th scope="col">巡检日期</th><th scope="col">下次巡检日期</th><th scope="col">审核</th><th scope="col">操作</th>
		</tr>
		<s:iterator value="recordList" status="status" >
		<tr class="GVRow" align="center">
			<td>
                  ${(currentPage - 1) * pageSize + status.count}
                </td><td>${name}</td>
                      <td>${temp}</td><td>${staff}</td><td> ${date}</td><td>${nextDate}</td><td>&nbsp;</td>
                      <td align="center" style="width:300px;">
                    <s:a id="gridView_btnDetail_0" cssClass="Button" action="task_show?id=%{id}" cssStyle="display:inline-block;width:50px;">详细</s:a>
                    &nbsp;&nbsp;
                    
                    <s:a id="gridView_btnPrint_0" cssClass="Button" action="task_print?id=%{id}" style="display:inline-block;width:50px;">打印</s:a>
                    &nbsp;&nbsp;
                    <s:a onclick="return confirm('你确认要删除吗?');" id="gridView_btnDelete_0" cssClass="Button" action="task_delete?id=%{id}" style="display:inline-block;width:50px;">删除</s:a>
                </td>
		</tr>
	 </s:iterator>
	</table>
</div>
   <tr>
			<td colspan="8">
                <span id="gridView_lblPage">第${currentPage}页/共${pageCount}页</span>
                <a id="gridView_lbnFirst" class="aspNetDisabled" href="javascript: gotoPage(1)">首页</a>
            <s:if test="currentPage-1>0">
            	<a id="gridView_lbnPrev" class="aspNetDisabled" href="javascript: gotoPage(${currentPage}-1)" >上一页</a>
            </s:if>
             <s:if test="currentPage+1<=pageCount">
                 <a id="gridView_lbnNext" href="javascript: gotoPage(${currentPage}+1)">下一页</a>
             </s:if>
               <a id="gridView_lbnLast" href="javascript: gotoPage(${pageCount})">尾页</a>
            </td>
		</tr>

    </s:form>
    <script type="text/javascript">
	function gotoPage( pageNum ){
	 /*  window.location.href = "task_list.action?id=${id}&pageNum=" + pageNum; */ 
		
		$(document.forms[0]).append("<input type='hidden' name='pageNum' value='" + pageNum +"'>");
		document.forms[0].submit();
	}
</script>
</body>
</html>
