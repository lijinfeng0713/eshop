<%--
  Created by IntelliJ IDEA.
  User: ljf-梁燕双栖
  Date: 2016/4/19
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Eshop|个人中心</title>
  <link rel="stylesheet" type="text/css" href="/assets/vender/bootstrap/dist/css/bootstrap.min.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/vender/datatables/media/css/dataTables.bootstrap.css">
  <link rel="stylesheet" href="/assets/vender/bootstrap-sweetalert/lib/sweet-alert.css">
  <link rel="stylesheet" type="text/css" href="/assets/css/common.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/layout.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/index.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/cart.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/user.css" media="screen" />

  <style>

  </style>
</head>
<body>
<div class="topbar">
  <div class="container">
    <ul>
      <li>欢迎你, <%= username%></li>
    </ul>
    <ul class="pull-right">
      <li><a href="/">登录</a></li>
      <li class="divider"></li>
      <li><a href="#">注册</a></li>
    </ul>
  </div>
</div><!-- /.topbar -->

<div class="header">
  <div class="container">
    <div class="logo">
      <a href="/eshop/"><img src="/assets/img/logo.png" /></a>
    </div>
    <div class="toolbox">
      <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-user"></i> 个人中心</button>
      <a href="/user/cart">
        <button type="button" class="btn btn-default">
          <i class="glyphicon glyphicon-shopping-cart"></i> 购物车
          <span class="size badge" style="background-color: red">${size}</span>
        </button>
      </a>
    </div>
    <div class="searchbox">
      <form action="/eshop/search" method="post" class="form-inline" accept-charset="utf-8">
        <div class="input-group">
          <input type="text" class="form-control" name="search-condition" placeholder="搜索关键字" />
          <span class="input-group-btn"><button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button></span>
        </div>
      </form>
    </div>
  </div>
</div><!-- /.header -->

<div class="navbar">
  <div class="container">
    <div class="navbar navbar-default" role="nav">
      <ul class="nav navbar-nav">
        <li><a href="/eshop/">全部商品分类</a></li>
        <li><a href="/eshop/">首页</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">商品分类 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/eshop/category/1">电子产品</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="/eshop/category/2">衣服饰品</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="/eshop/category/3">精美小吃</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">二手交易 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">旧货出售</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">跳骚市场</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">聚众团购 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">发起团购</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">加入团购</a></li>
          </ul>
        </li>
        <li><a href="#">货易货</a></li>
        <li><a href="#">宝贝拍卖</a></li>
        <li><a href="#">意见反馈</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="revslider-wrapper">
  <div class="container">
    <div class="sidebar">
      <ul class="menu">
        <li class = "item active"><a href="#"><i class="glyphicon glyphicon-list-alt"></i> 我的订单</a></li>
        <li class="divider"></li>
        <li class="item"><a href="#"><i class="glyphicon glyphicon-map-marker"></i> 收货地址</a></li>
        <li class="divider"></li>
        <li class="item"><a href="#"><i class="glyphicon glyphicon-user"></i>  个人信息</a></li>
        <li class="divider"></li>
      </ul>
    </div>
    <div class="content">
      <table class="table table-striped">
        <thead>
        <tr class="info">
          <th>商品名称</th>
          <th>商品类型</th>
          <th>商品单价</th>
          <th>购买数量</th>
          <th>总计</th>
          <th>购买时间</th>
          <th>状态</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orders}" var="order">
          <tr data-text="${order.orderId}">
            <td>${order.goodName}</td>
            <td>${order.type}</td>
            <td>${order.price}</td>
            <td>${order.amount}</td>
            <td>${order.total}</td>
            <td>${order.time}</td>
            <td>${order.status}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
</div>

<div class="footer">
  <div class="container">
    <p>&copy; Lijinfeng 2016.</p>
  </div>
</div>

<!--[if lt IE 9]>
<script src="/assets/vender/html5shiv.min.js"></script>
<script src="/assets/vender/respond.min.js"></script>
<![endif]-->

<script type="text/javascript" src="/assets/vender/jquery.min.js"></script>
<script type="text/javascript" src="/assets/vender/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/assets/vender/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
<script type="text/javascript" src="/assets/vender/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/assets/vender/datatables/media/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="/assets/js/common.js"></script>

<script>
  $(function () {
    //调用datatable插件
    $(".table").DataTable({
      //设置以下列不使用排序
      "aoColumnDefs": [{
        "bSortable": false,
        "aTargets": [0, 1, 2]
      }]
    });

  });
</script>
</body>
</html>
