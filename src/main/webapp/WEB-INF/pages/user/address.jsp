<%--
  Created by IntelliJ IDEA.
  User: ljf-梁燕双栖
  Date: 2016/4/20
  Time: 16:21
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
  <link rel="stylesheet" href="/assets/vender/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="/assets/css/common.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/layout.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/index.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/cart.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/user.css" media="screen" />
  <style>
    .nav-bar {
      margin-bottom: 6px;
    }
    .address {
      width: 300px;
      height: 255px;
      border: 1px solid #ccc;
      border-radius: 4px;
      padding-top: 16px;
      padding-bottom: 10px;
      padding-left: 16px;
    }
    label {
      font-family: "Segoe UI", "Open Sans", "Lucida Grande", FreeSans, Arimo, "Source Sans Pro", "Droid Sans", "Helvetica Neue", Helvetica, "Microsoft YaHei UI", "Microsoft YaHei", "Hiragino Sans GB", "Hiragino Sans GB W3", Arial, sans-serif;
    }

    .micon {
      font-size: 20px;
      color: blue;
      margin-bottom: 20px
    }
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
      <li><a href="/register">注册</a></li>
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
        <li class = "item"><a href="/user/order"><i class="glyphicon glyphicon-list-alt"></i> 我的订单</a></li>
        <li class="divider"></li>
        <li class="item active"><a href="/user/address"><i class="glyphicon glyphicon-map-marker"></i> 收货地址</a></li>
        <li class="divider"></li>
        <li class="item"><a href="#"><i class="glyphicon glyphicon-user"></i>  个人信息</a></li>
        <li class="divider"></li>
      </ul>
    </div>
    <div class="content">
      <ul class="nav nav-tabs nav-bar">
        <li role="presentation" class="active" id="btn-default"><a href="#">默认</a></li>
        <li role="presentation" id="btn-manage"><a href="#">管理地址</a></li>
      </ul>
      <div id="default-address">
          <div class="address">
            <i class="glyphicon glyphicon-paperclip micon"></i><br>
            <label>收货人：</label><span>${addre.username}</span><br>
            <label>联系电话：</label><span>${addre.telephone}</span><br>
            <label>收货地址：</label><span>${addre.address}</span><br>
            <label>邮   编：</label><span>${addre.postcode}</span><br>
          </div>
      </div>
      <div id="management">
        <table class="table table-striped">
          <thead>
          <tr class="info">
            <th>收货人</th>
            <th>联系方式</th>
            <th>收货地址</th>
            <th>邮编</th>
            <th></th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${addresses}" var="address">
            <tr data-text="${address.addressId}">
              <td>${address.username}</td>
              <td>${address.telephone}</td>
              <td>${address.address}</td>
              <td>${address.postcode}</td>
              <td>
                <button class="btn btn-xs btn-success">设为默认</button>
                <button class="btn btn-xs btn-primary">修改</button>
                <button class="btn btn-xs btn-danger">删除</button>
              </td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
      </div>
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

    $("#management").hide();

    $("#btn-default").on("click", function () {
      $(this).addClass("active");
      $("#management").hide();
      $("#btn-manage").removeClass("active");
      $("#default-address").show();
    });

    $("#btn-manage").on("click", function () {
      $("#btn-default").removeClass("active");
      $("#default-address").hide();
      $(this).addClass("active");
      $("#management").show();
    });

  });
</script>
</body>
</html>