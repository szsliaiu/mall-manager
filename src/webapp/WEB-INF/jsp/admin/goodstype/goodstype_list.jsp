<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 数据表格</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="<%=request.getServletContext().getContextPath() %>/static/favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="<%=request.getServletContext().getContextPath() %>/static/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="<%=request.getServletContext().getContextPath() %>/static/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="<%=request.getServletContext().getContextPath() %>/static/css/animate.min.css" rel="stylesheet">
    <link href="<%=request.getServletContext().getContextPath() %>/static/css/style.min.css?v=4.0.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>基本 <small>分类，查找</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_data_tables.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="table_data_tables.html#">选项1</a>
                                </li>
                                <li><a href="table_data_tables.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <table class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>分类名称</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${typeList}" var="v">
                                <tr>
                                    <td>${v.id}</td>
                                    <td>${v.typename }</td>
                                    <td>
                                    	<a class="btn btn-primary btn-xs" href="<%=request.getServletContext().getContextPath()%>/admin/getAdmin/${v.id}">修改</a>&nbsp;&nbsp;
                                    	<a class="btn btn-warning btn-xs" url="<%=request.getServletContext().getContextPath()%>/admin/goodstype/deletetype/${v.id}" onclick="toDelete(this);" >删除</a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>分类名称</th>
                                    <th>操作</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>       
    </div>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/plugins/jeditable/jquery.jeditable.js"></script>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/content.min.js?v=1.0.0"></script>
    <script>
        $(document).ready(function(){$(".dataTables-example").dataTable();var oTable=$("#editable").dataTable();oTable.$("td").editable("../example_ajax.php",{"callback":function(sValue,y){var aPos=oTable.fnGetPosition(this);oTable.fnUpdate(sValue,aPos[0],aPos[1])},"submitdata":function(value,settings){return{"row_id":this.parentNode.getAttribute("id"),"column":oTable.fnGetPosition(this)[2]}},"width":"90%","height":"100%"})});function fnClickAddRow(){$("#editable").dataTable().fnAddData(["Custom row","New row","New row","New row","New row"])};    	
    		/*
    		删除确认函数
    		*/
    		function toDelete(v){
	    		var boo = confirm("是否确定删除本条数据?");
	    		if(boo){
	    			v.href = v.getAttribute("url");
	    		}else{
	    			alert("操作取消！");
	    		}
    		} 	
        </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>