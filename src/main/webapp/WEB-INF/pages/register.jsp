<%--
  Created by IntelliJ IDEA.
  User: ljf-梁燕双栖
  Date: 2016/4/20
  Time: 19:17
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
  <link rel="stylesheet" type="text/css" href="/assets/css/register.css">
  <link rel="stylesheet" href="/assets/vender/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="/assets/vender/bootstrap-sweetalert/lib/sweet-alert.css">
  <script type="text/javascript" src="/assets/vender/jquery.min.js"></script>
  <script type="text/javascript" src="/assets/vender/jquery-backstretch/src/jquery.backstretch.js"></script>
  <script type="text/javascript" src="/assets/js/login.js"></script>
  <script type="text/javascript" src="/assets/vender/bootstrap/dist/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/assets/vender/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
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
      <form>
        <h3>注册</h3>
        <div class="errorbox"></div>
        <div class="field">
          <input type="text" class="form-control" name="username" id="username"
                 placeholder="用户名"> <i class="fa fa-user icon"></i>
        </div>
        <div class="field">
          <input type="text" class="form-control" name="email" id="email"
                 placeholder="邮箱"> <i class="fa fa-envelope icon"></i>
        </div>
        <div class="field">
          <input type="password" class="form-control" name="password" id="password"
                 placeholder="密码"> <i class="fa fa-lock icon"></i>
        </div>
        <div class="field">
          <input type="password" class="form-control" id="password2"
                 placeholder="密码"> <i class="fa fa-lock icon"></i>
        </div>
        <div class="field">
          <button type="button" id="register">注册</button>
        </div>
        <div class="field identity">
          <a href="/">已有账号？直接登录</a>
        </div>
      </form>
    </div>
  </div>
</div>
<script>
  $(function () {

    /*validate*/
    $('#username').bind('blur', function () {
      if ($(this).val().trim() == '') {
        $(this).tooltip({
          placement: "right",
          title: "用户名不能为空 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
      } else {
        $("#username").tooltip("hide");
        var username =  $('#username').val().trim();
        var data = {
          username : username
        };
        data=JSON.stringify(data);

        $.ajax({
          type: "POST",
          contentType: "application/json",
          dataType: "json",
          url: "/check",
          data: data,
          success : function(data) {
            if (data.SUCCESS == false){
              $("#username").tooltip({
                placement: "right",
                title: "该用户名已被注册，请更换用户名 !",
                template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
                trigger: "manual"
              }).tooltip("show");
            } else {
              $("#username").tooltip("hide");
            }
          }
        });
      }
    });

    $('#password').bind('blur', function () {
      if ($(this).val().trim() == '') {
        $(this).tooltip({
          placement: "right",
          title: "注册密码不能为空 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
      } else {
        $(this).tooltip("hide");
      }
    });
    $('#password2').bind('blur', function () {
      if ($(this).val().trim() == '') {
        $(this).tooltip({
          placement: "right",
          title: "请再次输入注册密码 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
      } else {
        $(this).tooltip("hide");
      }

    });
    $('#email').bind('blur', function () {
      if ($(this).val().trim() == '') {
        $(this).tooltip({
          placement: "right",
          title: "注册邮箱不能为空 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
      } else {
        $(this).tooltip("hide");

      }
    });


    $("#register").on("click", function () {
      var username = $("#username").val().trim();
      var email = $("#email").val().trim();
      var password = $("#password").val().trim();
      var password2 =$("#password2").val().trim();
      var flag = false;
      if (username == '') {
        $("#username").tooltip({
          placement: "right",
          title: "用户名不能为空 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
        flag = false;
      } else {
        $("#username").tooltip("hide");
      }

      if (email == '') {
        $("#email").tooltip({
          placement: "right",
          title: "注册邮箱不能为空 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
        flag = false;
      } else {
        $("#email").tooltip("hide");
      }

      if (password == '') {
        $("#password").tooltip({
          placement: "right",
          title: "注册密码不能为空 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
        flag = false;
      } else {
        $("#password").tooltip("hide");
      }

      if (password2 == '') {
        $("#password2").tooltip({
          placement: "right",
          title: "请重复输入注册密码 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
        flag = false;
      } else {
        $("#password2").tooltip("hide");
      }

      if (password != password2) {
        $("#password2").tooltip({
          placement: "right",
          title: "两次输入的密码不一致 !",
          template: '<div class="tooltip errtip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
          trigger: "manual"
        }).tooltip("show");
        flag = false;
      } else {
        $("#password2").tooltip("hide");
      }

      if ( username != null && password != null && password2 != null
           && password == password2 && email != null ) flag = true;
      if (flag) {
        var data = {
          username : username,
          password : password,
          email : email
        };
        data=JSON.stringify(data);
        console.log(data);

        $.ajax({
          type: "POST",
          contentType: "application/json",
          dataType: "json",
          url: "/register",
          data: data,
          success : function(data) {
              if (data.SUCCESS == true) {
                sweetAlert('系统提示', '注册成功！', 'success');
              }else if (data.SUCCESS == false){
                sweetAlert('系统提示', '很遗憾，注册失败，请重新操作！', 'error');
              }
          },
          error: function(data) {
            sweetAlert('系统提示', '很遗憾，注册失败，请重新操作！', 'error');
          }
        });
      }

    });

  });
</script>
</body>
</html>
