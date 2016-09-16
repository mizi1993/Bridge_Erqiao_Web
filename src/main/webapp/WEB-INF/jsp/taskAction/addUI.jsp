<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Function</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${pageContext.request.contextPath}/images/css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/Calendar/WdatePicker.js"></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <s:form id="form1" method="post" action="task_add">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="40" align="center" class="GridTitle">
            </td>
        </tr>
    </table>

    <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border" align="center">
    <tr>                   
    <td align="center">                         
    <table style="width: 98%;" cellSpacing="0" cellPadding="5" border="1" class="tableFrom" >
        <tr>
            <td height="25" width="20%" align="right">
		        表格：
	        </td>
            <td height="25" width="30%" align="left">
                
             <s:select name="formId" list="#formList" listKey="id" listValue="name"
                 Width="343px">
             </s:select>
                
            </td>
            <td height="25" width="20%" align="right">
                
                温度(℃)：
	        </td>
            <td height="25" width="30%" align="left">
               <s:textfield name="temp" ID="txttemp" Width="343px"  /> 
            </td>
        </tr>
        <tr>
            <td height="25" width="20%" align="right">
                &nbsp;检查人：
            </td>
            <td height="25" width="30%" align="left">
               <s:textfield name="staff" ID="txtstaff" Width="343px" />
            </td>
            <td height="25" width="20%" align="right">
                巡检日期：</td>
            <td height="25" width="30%" align="left">
                <s:textfield name="date" ID="txtdate" cssClass="Wdate"
                    onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" Width="343px"  
                 />
            </td>
        </tr>
        <tr>
            <td height="25" width="20%" align="right">
                下次巡检日期：
            </td>
            <td height="25" align="left" colspan="3" style="width: 60%">
            
                <s:textfield name="nextDate" ID="txtnextdate" cssClass="Wdate"
                    onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" Width="343px"/>
                    
            </td>
        </tr>
    </table>
<br />
<div>
    <input type="submit" ID="btnSave" value="保存"  onclick="btnSave_Click" class="Button" />
    &nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" ID="btnBack" value="返回" onclick="btnBack_Click" class="Button" />
</div>
    </td>
    </tr>
    </table>
    </s:form>
</body>
</html>
