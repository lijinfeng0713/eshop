<%--
  Created by IntelliJ IDEA.
  User: ljf-梁燕双栖
  Date: 2016/4/15
  Time: 21:06
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
  <title>Eshop|购物车</title>
  <link rel="stylesheet" type="text/css" href="/assets/vender/bootstrap/dist/css/bootstrap.min.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/vender/datatables/media/css/dataTables.bootstrap.css">
  <link rel="stylesheet" href="/assets/vender/bootstrap-sweetalert/lib/sweet-alert.css">
  <link rel="stylesheet" type="text/css" href="/assets/css/common.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/layout.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/index.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/cart.css" media="screen" />
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
      <a href="/user/order"><button type="button" class="btn btn-default"><i class="glyphicon glyphicon-user"></i> 个人中心</button></a>
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
    <div class="box-tools pull-right">
      <button class="btn btn-sm btn-primary" id="btn-pay">
        <i class="glyphicon glyphicon-euro"></i> 结算
      </button>
    </div>
    <div class="table-area">
      <table class="table table-striped">
        <thead>
        <tr class="info">
          <th>
            <input type="checkbox" id="selectAll">
          </th>
          <th>商品名称</th>
          <th>商品类型</th>
          <th>商品单价</th>
          <th>购买数量</th>
          <th>总计</th>
          <th>购买时间</th>
          <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${carts}" var="cart">
          <tr data-text="${cart.cartId}">
            <td>
              <input type="checkbox" class="checkItem">
            </td>
            <td>${cart.goodName}</td>
            <td>${cart.type}</td>
            <td>${cart.price}</td>
            <td>${cart.amount}</td>
            <td>${cart.total}</td>
            <td>${cart.time}</td>
            <td><button type="button" class="btn btn-xs btn-danger btn-delete"><i class="glyphicon glyphicon-remove"></i> 删除</button> </td>
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
        "aTargets": [0, 1, 2, 7]
      }]
    });

    //从购物车中删除选中的记录
    $(".btn-delete").on("click", function () {
      var cartId = $(this).closest("tr").data("text");
      var amount = $(this).closest("tr").find("td:eq(4)").text();
      sweetAlert({
        title: '审核确认',
        text: '确定要删除这条订单吗？',
        type: 'warning',
        allowOutsideClick: false,
        showCancelButton: true,
        showConfirmButton: true,
        confirmButtonText: '是',
        cancelButtonText: '否',
        closeOnConfirm: false
      }, function(isConfirm) {
        if(!isConfirm) return;
        var data = {
          cartId : cartId,
          amount : amount
        };
        data = JSON.stringify(data);
        $.ajax({
          type:"POST",
          contentType:"application/json",
          dataType:"json",
          url:"/user/cart/delete",
          data: data,
          success : function(data) {
            sweetAlert({
              title: '系统提示',
              text: '删除成功！',
              type: 'success'
            }, function() {
              window.location.reload();
            });
          },
          error:function(data){
            sweetAlert('系统提示', '删除失败，请重新操作！', 'error');
          }
        });
        return false;
      });
    });

    //全选功能
    $("#selectAll").on("change", function() {
      var flag = $(this).prop("checked");
      $(".checkItem").prop("checked", flag); //选中或者取消选中
    });
    $('.checkItem').on('change', function() {
      var checked = $('.checkItem:checked').length;
      if (checked == 0) {
        $('#selectAll').prop('indeterminate', false);
        $('#selectAll').prop('checked', false);
      } else if (checked < $('.checkItem').length) {
        $('#selectAll').prop('indeterminate', true);
      } else {
        $('#selectAll').prop('indeterminate', false);
        $('#selectAll').prop('checked', true);
      }
    });

    //完成支付功能
    $("#btn-pay").on("click", function() {
      var data = [];
      var flag = true;
      //获取选中行的数据
      $('.checkItem:checked').closest('tr').each(function() {
        var row = $(this);
        var cartId = row.data("text");
        var goodName = row.find("td:eq(1)").text();
        var type = row.find("td:eq(2)").text();
        var price = row.find("td:eq(3)").text();
        var amount = row.find("td:eq(4)").text();
        var total = row.find("td:eq(5)").text();

        data.push({
          cartId : cartId,
          goodName : goodName,
          type : type,
          price : price,
          amount : amount,
          total : total
        });
      });
      console.log(data);
      if (flag) {
        data = JSON.stringify(data);
        $.ajax({
          type: "POST",
          contentType: "application/json",
          dataType: "json",
          url: "/user/order/add",
          data: data,
          success : function(data) {
            sweetAlert({
              title: '系统提示',
              text: '支付成功！',
              type: 'success'
            }, function() {
              window.location.reload();
            });
          },
          error: function(data) {
            sweetAlert('系统提示', '支付失败 ，请重新操作！', 'error');
          }
        });
      } else {
        alert("提交成绩不能为空");
      }
    });

  });
</script>
</body>
</html>
