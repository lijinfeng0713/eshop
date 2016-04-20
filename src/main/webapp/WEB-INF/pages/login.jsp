<%--
  Created by IntelliJ IDEA.
  User: ljf-梁燕双栖
  Date: 2016/4/16
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>Eshop | Login</title>
  <link rel="stylesheet" type="text/css" href="/assets/vender/bootstrap/dist/css/bootstrap.min.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/login.css">
  <link rel="stylesheet" href="/assets/vender/font-awesome/css/font-awesome.min.css">
  <script type="text/javascript" src="/assets/vender/jquery.min.js"></script>
  <script type="text/javascript" src="/assets/vender/jquery-backstretch/src/jquery.backstretch.js"></script>
  <script type="text/javascript" src="/assets/js/login.js"></script>
  <script type="text/javascript" src="/assets/vender/bootstrap/dist/js/bootstrap.min.js"></script>
  <style>

  </style>
</head>
<body>
  <div class="login-header">
    <div class="login-logo">
      <img src="/assets/img/logo.png"/>
    </div>
  </div>
  <div class="login-page">
    <div class="background"></div>
    <div class="wrapper">
      <div class="container">
        <sf:form action="/" method="post" modelAttribute="user">
          <h3>登录</h3>
          <div class="errorbox"></div>
          <div class="field">
            <input type="text" class="form-control" name="username" id="username"
                   placeholder="用户名"> <i class="fa fa-user icon"></i>
          </div>
          <div class="field">
            <input type="password" class="form-control" name="password" id="password"
                   placeholder="密码"> <i class="fa fa-lock icon"></i>
          </div>
          <div class="field identity">
            <label> <input type="checkbox" id="remenber-me" name="remember-me" value="true" />
              记住密码</label>
            <a href="/register">没有账号？立即注册</a>
          </div>
          <div class="field">
            <button type="submit" id="login">登录</button>
          </div>
        </sf:form>
      </div>
    </div>
  </div>
</body>
</html>
