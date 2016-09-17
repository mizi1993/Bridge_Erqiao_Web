<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ZTREE DEMO - Custom Icon Skin </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CtrlTree/css/demo.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/zTreeStyle.css" type="text/css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/CtrlTree/js/jquery-1.4.4.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/CtrlTree/js/jquery.ztree.core-3.5.js"></script>

    <script type="text/javascript">
		var setting = {
			data: {
				simpleData: {
					enable: true
	            },
                keep: {
                    parent: true,
                    leaf: true
                }
			}
		};
        var zNodes = [

			{ name: "巡检管理", open: true,
			    children: [
				    { name: "巡检日历", iconSkin: "icon02", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/check_plan/fullcalendar.html';" },
			    //				    { name: "3DMap", iconSkin: "icon02", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/3DMap.aspx';" },

                    {name: "日常巡检", open: true,
                    children: [
                    //    			            { name: "巡检结果导入", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_RC/Import.aspx';" },
                            {name: "巡检结果管理", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Patrol.action';" },
                            { name: "特殊事件管理", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Special.action';" }
                        ]
                },
			    //			        { name: "专项检查", open: true,
			    //			            children: [
			    //                            { name: "正桥线形监测", open: true,
			    //                                children: [
			    //			                        { name: "数据录入", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_ZX/ZQXX/Import.aspx';" },
			    //			                        { name: "报告上传", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '#';" },
			    //			                        { name: "结果管理", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '#';" }
			    //                                ]
			    //                            }
			    //			                { name: "斜拉索索力检测", open: true,
			    //			                    children: [
			    //			            			{ name: "数据录入", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_DQ/AddRar.aspx';" },
			    //			            			{ name: "报告上传", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_DQ/List.aspx';" },
			    //			            			{ name: "结果管理", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_DQ/List.aspx';" }
			    //			                    ]
			    //			                }
			    //                        ]
			    //			        }
			        {name: "定期巡检", open: true,
			        children: [
			        //			            	{ name: "巡检结果导入", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_DQ/Import.aspx?bridge=EQ';" },
			                {name: "巡检结果管理", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/task_list.action'" }
			            ]
			    }
		        ]
			},

			{ name: "统计查询", open: true,
			    children: [
			        { name: "日常巡检", open: true,
			            children: [
				            { name: "总体缺损统计", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_RC/Disease_JG_S.aspx';" },
			                { name: "设施缺损统计", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_RC/Disease_BJ_S.aspx';" }
				        ]
			        }
//			        { name: "专项检查", open: false,
//			            children: [
//                            { name: "正桥线形监测", open: true,
//                                children: [
//				                    { name: "各跨挠度变化图", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_ZX/ZQXX/PlotPier.aspx';" },
//			                        { name: "单点变化曲线图", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_ZX/ZQXX/PlotDate.aspx';" }
//                                ]
//                            }
//				        ]
//			        }
                ]
			},

			{ name: "技术状况评定", open: true,
			    children: [
                    { name: "一般性评定", open: true,
                        children: [
//                        { name: "巡检项目录入", iconSkin: "icon02", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Assessment/ListNew.aspx';" },
//                        { name: "已录入项目管理", iconSkin: "icon02", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Assessment/ComScoreNew.aspx';" },
				        { name: "评估计算", iconSkin: "icon02", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/estimateCalculate.jsp';"},
				        { name: "评估结果", iconSkin: "icon02", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/estimateResult.jsp';" }
                    ]
                    },
                    { name: "适应性评定", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Report/Report_Assess.aspx';" }
               ]
			},

			{ name: "巡检报表", open: true,
			    children: [
			        { name: "日常巡检", open: true,
			            children: [
				            { name: "巡检日报表", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Report/Report_RCDay.aspx';" }

                        ]
			        },
			    //			        { name: "专项检查", open: true,
			    //			            children: [
			    //				            { name: "正桥线形监测成果表", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '#';" }
			    //                        ]
			    //			        }
			        {name: "定期检查", open: true,
			        children: [
				            { name: "检查记录表", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/downFile_list.action';" },
				            { name: "技术状况评定记录表", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/techCondition.jsp';" }
                        ]
			    },
                { name: "管理文档", open: true,
                    children: [
                    { name: "年工作计划", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/ReportPlan_Y.aspx';" },
				            { name: "月工作计划", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/ReportPlan_M.aspx';" },
                            { name: "管养报告", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Report/Report_GY.aspx';" },
                            { name: "月报表", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Report/Report_M.aspx';" },
                            { name: "巡检三率表", iconSkin: "icon05", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Report/Report_RCMonth.aspx';" }
                        ]
                }
		        ]
		 }
//            { name: "巡检计划管理", open: false,
//                children: [
//    			            { name: "年巡检计划", open: true,
//    			                children: [
//    			                //{ name: "年计划报表", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/ReportPlan_Y.aspx';" },
//                                    {name: "历史年计划管理", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/Plan.aspx';" },
//                                    { name: "巡检项目管理", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/UpdatePlan.aspx';" },
//                                    { name: "新增年计划", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/AddPlan.aspx';" }
//                                 ]
//    			            },
//                             { name: "月巡检计划", open: true,
//                                 children: [
//                                 ///{ name: "月计划报表", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/ReportPlan_M.aspx';" },
//                                 {name: "所有计划", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/Plan_M.aspx';" },
//                                    { name: "新增计划", iconSkin: "icon04", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Record_JH/AddPlan_M.aspx';" }

//                                 ]
//                             }
//                        ]
//            },

        //			{ name: "返回", isParent: true, "url": "${pageContext.request.contextPath}/includes/Tree.aspx", "target": "_self", click: "top.document.getElementById('mainPanel_iframe').src = '${pageContext.request.contextPath}/Map/MainMap.aspx';" }
		];
       

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
    </script>

    <style type="text/css">
    .ztree li span.button.pIcon01_ico_open{margin-right:2px; background: url(${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/img/diy/1_open.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}
    .ztree li span.button.pIcon01_ico_close{margin-right:2px; background: url(${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/img/diy/1_close.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}
    .ztree li span.button.pIcon02_ico_open, .ztree li span.button.pIcon02_ico_close{margin-right:2px; background: url(css/zTreeStyle/img/diy/2.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}
    .ztree li span.button.icon01_ico_docu{margin-right:2px; background: url(${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/img/diy/3.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}
    .ztree li span.button.icon02_ico_docu{margin-right:2px; background: url(${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/img/diy/4.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}
    .ztree li span.button.icon03_ico_docu{margin-right:2px; background: url(${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/img/diy/5.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}
    .ztree li span.button.icon04_ico_docu{margin-right:2px; background: url(${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/img/diy/6.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}
    .ztree li span.button.icon05_ico_docu{margin-right:2px; background: url(${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/img/diy/7.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}
    .ztree li span.button.icon06_ico_docu{margin-right:2px; background: url(${pageContext.request.contextPath}/CtrlTree/css/zTreeStyle/img/diy/8.png) no-repeat scroll 0 0 transparent; vertical-align:top; vertical-align:middle}

</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="background-color: #303030;">
    <div class="zTreeDemoBackground left">
        <ul id="treeDemo" class="ztree">
        </ul>
    </div>
</body>
</html>