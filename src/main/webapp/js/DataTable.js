function CreateTable(strGetTable)
{
	var tbl = eval(strGetTable);
	var tblHtml = "<table width='100%' border='1' align='center' cellspacing='0' bordercolorlight='#000000' bordercolordark='#999999'>";
	
	// 表头
	tblHtml += "<tr class='TdTitle'>";
	for(var j = 0; j < tbl.Columns.length; j++) {
		tblHtml += "<th>" + tbl.Columns[j].Name + "</th>";
	}
	tblHtml += "</tr>";
	
	// 数据
	for(var i = 0; i < tbl.Rows.length; i++) {
		tblHtml += "<tr>";
		for(var j = 0; j < tbl.Columns.length; j++) 
		{
			if(tbl.Rows[i][tbl.Columns[j].Name]!=null)
			{
				tblHtml += "<td height='30' class='TextYellowB'>&nbsp" + tbl.Rows[i][tbl.Columns[j].Name] + "</td>";
			}
			else
			{
				tblHtml += "<td>&nbsp;</td>";
			}
		}
		tblHtml += "</tr>";
	}
	tblHtml += "</table>";
	var divTable = document.getElementById("divTable");
	divTable.innerHTML = tblHtml;
}