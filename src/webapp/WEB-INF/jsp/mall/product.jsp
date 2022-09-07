<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物商城</title>
<link type="text/css" href="<%=request.getServletContext().getContextPath() %>/static/mall/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getServletContext().getContextPath() %>/static/mall/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getServletContext().getContextPath() %>/static/mall/js/js.js"></script>
<script src="<%=request.getServletContext().getContextPath() %>/static/mall/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
 <div class="mianCont">
  <div class="top">
   <span>您好！欢迎来到购物商城 请&nbsp;<a href="<%=request.getServletContext().getContextPath()%>/admin/toLogin">[登录]</a>&nbsp;<a href="reg.html">[注册]</a></span>
   <span class="topRight">
    <a href="vip.html">我的vip</a>&nbsp;| 
    <a href="order.html">我的订单</a>&nbsp;| 
    <a href="login.html">会员中心</a>&nbsp;|
    <a href="contact.html">联系我们</a>
   </span>
  </div><!--top/-->
  <div class="lsg">
   <h1 class="logo"><a href="index.html"><img src="<%=request.getServletContext().getContextPath() %>/static/mall/images/logo.png" width="217" height="90" /></a></h1>
   <form action="#" method="get" class="subBox">
    <div class="subBoxDiv">
     <input type="text" class="subLeft" />
     <input type="image" src="<%=request.getServletContext().getContextPath() %>/static/mall/images/subimg.png" width="63" height="34" class="sub" />
     <div class="hotWord">
      热门搜索：
      <a href="proinfo.html">冷饮杯</a>&nbsp;
      <a href="proinfo.html">热饮杯</a> &nbsp;
      <a href="proinfo.html">纸杯</a>&nbsp;
      <a href="proinfo.html">纸巾</a>  &nbsp;
      <a href="proinfo.html">纸巾</a> &nbsp;
      <a href="proinfo.html">纸杯</a>&nbsp;
     </div><!--hotWord/-->
    </div><!--subBoxDiv/-->
   </form><!--subBox/-->
   <div class="gouwuche">
    <div class="gouCar">
     <img src="<%=request.getServletContext().getContextPath() %>/static/mall/images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp;
     <strong class="red">0</strong>&nbsp;件&nbsp;|
     <strong class="red">￥ 0.00</strong> 
     <a href="order.html">去结算</a> <img src="<%=request.getServletContext().getContextPath() %>/static/mall/images/youjian.jpg" width="5" height="8" />    
    </div><!--gouCar/-->
    <div class="myChunlv">
     <a href="vip.html"><img src="<%=request.getServletContext().getContextPath() %>/static/mall/images/mychunlv.jpg" width="112" height="34" /></a>
    </div><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->
  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">所有商品分类
     <ul class="InPorNav">
     <c:forEach items="${typeList }" var="t">
	     <li><a href="#">${t.typename }</a>
	     </li>
     </c:forEach>
     
    </ul><!--InPorNav/-->
    </h2>
   </div><!--pntLeft/-->
   <div class="pntRight">
    <ul class="nav">
     <li><a href="index.html">商城首页</a></li>
     <li class="navCur"><a href="product.html">促销中心</a></li>
     <li><a href="login.html">会员中心</a></li>
     <li><a href="help.html">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：88888888</div>
    </ul><!--nav/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="index.html">首页</a> &gt; <a href="#" class="posCur">促销商品</a>
  </div><!--positions/-->
  <div class="cont">
  <div class="jilu">
    总计 <span>${goodsSize }</span> 个记录
   </div><!--jilu/-->
   <div class="contLeft">
    <ul class="leftPorNav">
     <c:forEach items="${typeList }" var="t">
	     <li><a href="#">${t.typename }</a>
	     </li>
     </c:forEach>
    </ul><!--InPorNav/-->
   </div><!--contLeft/-->
   <div class="contRight">
    <div class="frProList">
    <c:forEach items="${goodsList }" var="v">
	      <dl>
	      <dt><a href="/mall/getGood/${v.id }"><img src="<%=request.getServletContext().getContextPath() %>${v.picture}" width="132" height="129" /></a></dt>
	      <dd>${v.name }</dd>
	      <dd class="cheng">￥${v.salePrice * v.discount }/${v.unit } <span>￥${v.salePrice }</span></dd>
	     </dl>  
    </c:forEach>
    
      <div class="clears"></div>
     </div><!--frProList-->
   </div><!--contRight/-->
   <div class="clears"></div>
  </div><!--cont/-->
  <div class="inHelp">
   <div class="inHLeft">
    <h4>帮助中心</h4>
    <ul class="inHeList">
     <li><a href="help.html">购物指南</a></li>
     <li><a href="help.html">支付方式</a></li>
     <li><a href="help.html">售后服务</a></li>
     <li><a href="about.html">企业简介</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHLeft">
    <h4>会员服务</h4>
    <ul class="inHeList">
     <li><a href="reg.html">会员注册</a></li>
     <li><a href="login.html">会员登录</a></li>
     <li><a href="order.html">购物车</a></li>
     <li><a href="order.html">我的订单</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHRight">
    <h4>全国统一免费服务热线</h4>
    <div class="telBox">400-0000-0000</div>
    <div class="weibo">
    <wb:follow-button uid="2991975565" type="red_1" width="67" height="24" ></wb:follow-button>
    </div>
   </div><!--inHRight/-->
   <div class="clears"></div>
  </div><!--inHelp/-->
  <div class="footer">
   <p>
   <a href="#">账号</a>&nbsp;|&nbsp;
   <a href="index.html">商城首页</a>&nbsp;|&nbsp;
   <a href="product.html">促销中心</a>&nbsp;|&nbsp;
   <a href="order.html">我的订单</a>&nbsp;|&nbsp;
   <a href="new.html">新闻动态</a>&nbsp;|&nbsp;
   <a href="login.html">会员中心</a>&nbsp;|&nbsp;
   <a href="www.baidu.com">帮助中心</a>&nbsp;|&nbsp;
   </p>
   <p>
    版权所有：西八实业有限公司 版权所有  Copyright 2010-2020      <a href="http://www.mycodes.net/" target="_blank">源码之家</a>   
   </p>
  </div><!--footer/-->
 </div><!--mianCont/-->
 <a href="#" class="backTop">&nbsp;</a>
</body>
</html>
