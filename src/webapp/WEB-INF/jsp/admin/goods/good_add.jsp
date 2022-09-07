<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>H+ 后台主题UI框架 - 基本表单</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="<%=request.getServletContext().getContextPath() %>/static/shortcut icon" href="favicon.ico"> 
    <link href="<%=request.getServletContext().getContextPath() %>/static/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="<%=request.getServletContext().getContextPath() %>/static/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getServletContext().getContextPath() %>/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<%=request.getServletContext().getContextPath() %>/static/css/animate.min.css" rel="stylesheet">
    <link href="<%=request.getServletContext().getContextPath() %>/static/css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
       
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>录入商品  &nbsp; &nbsp;<span style="color: red;">${message}</span></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                           
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    
                    <div class="ibox-content">
                        <form action="<%=request.getServletContext().getContextPath() %>/admin/goods/toGoodAdd" 
                       		 method="post" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">商品名称</label>
                                <div class="col-sm-10">
                                    <input type="text" name="name" class="form-control">
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">库存</label>
                                <div class="col-sm-10">
                                    <input type="text" name="num" class="form-control"> <span class="help-block m-b-none"></span>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">进货价</label>
                                <div class="col-sm-10">
                                    <input type="text" name="inPrice" class="form-control"> 
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">售价</label>
                                <div class="col-sm-10">
                                    <input type="text" name="salePrice" class="form-control"> <span class="help-block m-b-none"></span>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">折扣</label>
                                <div class="col-sm-10">
                                    <input type="text" name="dsicount" class="form-control"> <span class="help-block m-b-none"></span>
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">详细描述</label>
                                <div class="col-sm-10">
                                    <input type="text" name="discription" class="form-control"> <span class="help-block m-b-none"></span>
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">产地</label>
                                <div class="col-sm-10">
                                    <input type="text"  class="form-control" name="productPlace">
                                </div>
                            </div>
                       		
                            <div class="hr-line-dashed"></div>
                            
                            
                            <div class="form-group">
                                <label class="col-sm-2 control-label">计量单位</label>
                                <div class="col-sm-10">
                                    <input type="text"  class="form-control" name="unit">
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">规格</label>
                                <div class="col-sm-10">
                                    <input type="text"  class="form-control" name="standard">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">选择分类</label>
                                <div class="col-sm-10">
                                	<select name="type.id">
                                		<option>请选择</option>
                                		<c:forEach items="${typeList }" var="v">
                                			<option value="${v.id }">${v.typename }</option>
                                		</c:forEach>
                                	</select>
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存内容</button>
                                    <input class="btn btn-white" type="reset" value="重置表单">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="<%=request.getServletContext().getContextPath() %>/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/content.min.js?v=1.0.0"></script>
    <script src="<%=request.getServletContext().getContextPath() %>/static/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>