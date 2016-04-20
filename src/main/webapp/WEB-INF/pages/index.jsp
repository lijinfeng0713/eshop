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
  <title>Eshop|首页</title>
  <link rel="stylesheet" type="text/css" href="/assets/vender/bootstrap/dist/css/bootstrap.min.css" media="screen" />
  <link rel="stylesheet" href="/assets/vender/bootstrap-sweetalert/lib/sweet-alert.css">
  <link rel="stylesheet" type="text/css" href="/assets/vender/datatables/media/css/dataTables.bootstrap.css">
  <link rel="stylesheet" type="text/css" href="/assets/css/common.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/layout.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="/assets/css/index.css" media="screen" />
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
    <table class="table item" border="0" style="width: 980px;">
      <c:forEach items="${goods}" var="good">
        <tr>
          <td rowspan="3" height="100px" width="100px" style="border-bottom: 1px solid #ddd"
              data-text="${good.goodId}">
            <img src="/assets/img/pro1.jpg" width="80px" height="80px"/></td>
          <td style="color: #0162bc">${good.goodName}</td>
          <th rowspan="1">库存</th>
          <th rowspan="1">价格</th>
          <th rowspan="1">购买数量</th>
          <td rowspan="3" class="add2cart" style="line-height: 80px; vertical-align: middle;">
            <button type="button" class="btn btn-primary btn-add"><i class="glyphicon glyphicon-shopping-cart"></i> 加入购物车</button>
          </td>
        </tr>
        <tr>
          <td>${good.description}</td>
          <td rowspan="2" class="two-row">
            <span class="fc">${good.stock}</span><i>${good.unit}</i>
          </td>
          <td rowspan="2" class="two-row">
            <span class="fc">${good.price}</span><i>元/${good.unit}</i>
          </td>
          <td rowspan="2" class="two-row">
            <input type="text" class="form-control amount" width="70px"></td>
        </tr>
        <tr style="border-bottom: 1px solid #ddd">
          <td>${good.type}</td>
        </tr>
      </c:forEach>
    </table>
  </div>
  <div class="modal fade" id="cartModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="关闭">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title">加入购物车</h4>
        </div>
        <form class="form-horizontal" accept-charset="utf8">
          <div class="modal-body">
            <div class="form-group cart-style">
              <label class="col-sm-2 control-label">
                货物名称
              </label>
              <div class="col-sm-10">
                <span id="goodName" class="form-control"></span>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">
                货物类型
              </label>
              <div class="col-sm-10">
                <span id="type" class="form-control"></span>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">货物单价
              </label>
              <div class="col-sm-10">
                <span id="price" class="form-control"></span>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">购买数量</label>
              <div class="col-sm-10">
                <span id="amount" class="form-control"></span>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">货物总价</label>
              <div class="col-sm-10">
                <span id="total" class="form-control"></span>
              </div>
            </div>
          </div>
        </form>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" id="btnConfirm">确定</button>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->
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
<script type="text/javascript" src="/assets/vender/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
<script type="text/javascript" src="/assets/vender/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/assets/js/index.js"></script>
<script type="text/javascript" src="/assets/vender/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/assets/vender/datatables/media/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="/assets/js/common.js"></script>
<script>
  $(function () {


    $(".btn-add").on("click", function () {
      var row = $(".btn-add");
      var goodName = $(this).closest('tr').find("td:eq(1)").text();
      var type = $(this).closest('tr').next().next().text();
      var stock = $(this).closest('tr').next().find('td:eq(1)').find('span').text();
      var unit = $(this).closest('tr').next().find('td:eq(1)').find('i').text();
      var price = $(this).closest('tr').next().find('td:eq(2)').find('span').text();
      var amount = $(this).closest('tr').next().find('input').val();
      var goodId = $(this).closest('tr').find("td:eq(0)").data("text");
      var total;
      if (amount == '') return;
      if (parseInt(amount) > parseInt(stock)) {
        sweetAlert('系统提示', '很抱歉库存不足！', 'error');
      } else {
        total = parseFloat(price)*parseInt(amount);
        $("#goodName").text(goodName);
        $("#type").text(type);
        $("#price").text(price+"元/"+unit);
        $("#amount").text(amount+unit);
        $("#total").text(total);
        $("#cartModal").modal('show');

        $("#btnConfirm").on("click", function () {
          var data = {
            goodId : goodId,
            amount:amount,
            total:total
          };
          data=JSON.stringify(data);
          $.ajax({
            type: "POST",
            contentType: "application/json",
            dataType: "json",
            url: "/user/cart/add",
            data: data,
            success : function(data) {
              sweetAlert({
                title: '系统提示',
                text: '添加到购物车成功！',
                type: 'success'
              }, function() {
                $('#cartModal').modal('hide');
                window.location.href = '/eshop/';
              });
            },
            error: function(data) {
              console.log(data);
              sweetAlert('系统提示', '很遗憾，添加失败，请重新操作！', 'error');
            }
          });
        });
      }
    })
  });
</script>

</body>
</html>
