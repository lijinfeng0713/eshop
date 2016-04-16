<%--
  Created by IntelliJ IDEA.
  User: ljf-梁燕双栖
  Date: 2016/4/15
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Li He</title>
  <link rel="stylesheet" type="text/css" href="/assets/vender/bootstrap/dist/css/bootstrap.min.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/common.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/layout.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/index.css" media="screen" />
</head>
<body>
<div class="topbar">
  <div class="container">
    <ul>
      <li>欢迎你</li>
    </ul>
    <ul class="pull-right">
      <li><a href="#">登录</a></li>
      <li class="divider"></li>
      <li><a href="#">注册</a></li>
    </ul>
  </div>
</div><!-- /.topbar -->

<div class="header">
  <div class="container">
    <div class="logo">
      <a href="/"><img src="assets/img/logo.png" /></a>
    </div>
    <div class="toolbox">
      <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-user"></i> 个人中心</button>
      <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-shopping-cart"></i> 购物车</button>
    </div>
    <div class="searchbox">
      <form action="" method="post" class="form-inline" accept-charset="utf-8">
        <div class="input-group">
          <input type="text" class="form-control" name="search" placeholder="搜索" />
          <span class="input-group-btn"><button class="btn btn-primary" type="button"><i class="glyphicon glyphicon-search"></i></button></span>
        </div>
      </form>
    </div>
  </div>
</div><!-- /.header -->

<div class="navbar">
  <div class="container">
    <div class="navbar navbar-default" role="nav">
      <ul class="nav navbar-nav">
        <li><a href="#">全部商品分类</a></li>
        <li><a href="#">首页</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">商品分类 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">电子产品</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">衣服饰品</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">精美小吃</a></li>
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
    <table class="table item" border="0" style="width: 980px;">
      <tr>
        <td rowspan="3" height="100px" width="100px" style="border-bottom: 1px solid #ddd">
          <img src="/assets/img/pro1.jpg" width="80px" height="80px"/></td>
        <td>555 77 854</td>
        <td rowspan="1">sssss</td>
        <td rowspan="1">sssss</td>
        <td rowspan="1">sssss</td>
        <td rowspan="3" id="add2cart">
          <button type="button" class="btn btn-sm btn-default"><i class="glyphicon glyphicon-shopping-cart"></i> 加入购物车</button>
        </td>
      </tr>
      <tr>
        <td>555 77 855</td>
        <td rowspan="2" class="two-row">sss</td>
        <td rowspan="2" class="two-row">sss</td>
        <td rowspan="2" class="two-row">sss</td>
      </tr>
      <tr style="border-bottom: 1px solid #ddd">
        <td>555 77 855</td>
      </tr>
    </table>
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
<script type="text/javascript" src="/assets/js/index.js"></script>
</body>
</html>
