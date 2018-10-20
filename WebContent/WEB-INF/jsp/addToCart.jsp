<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/addToCart.css">
</head>
<body style="background-color: white">
<!--这是一个商品详情页面-->
<div id="shortcut">
            <span>
                    <c:if test="${username==null}">
                    <a href="loginOrRegister.do">你好，请登录</a>
                    </c:if>
                    <c:if test="${username != null }">
					欢迎您，${username }
				</c:if>
				<em class = "sp-line"></em>
				</span>
			 <span>
				<a href="loginOrRegister.do">免费注册</a><em class = "sp-line"></em>
			 </span>
             <span>
                  <a href="#">我的订单</a><em class = "sp-line"></em>
             </span>
             <span>
                 <a href="toCart.do">我的购物车</a><em class = "sp-line"></em>
             </span>
             <span>
                  <a href="#">客户服务</a><em class = "sp-line"></em>
             </span>
             <span>
                  <a href="#">关于我</a>
             </span>
</div>

<div id="logoImage">
    <a href="index.do">
    <img src="img/jdlogo.png">
    </a>
</div>
<div id = "header">
    <!--商品搜索div-->
    <div id="searchDiv">
        <form class=" navbar-static-top " id="searchForm" role="search" method="post" action="search.do">
            <input type="text" class="form-control" id="searchInput" placeholder="数码3c" name="keyword">

            <!-- 这是需要添加过滤条件-->
            <button type="submit" class="btn btn-default" id="searchBtn">搜索</button>

        </form>
    </div>
    <div id="hotwords" >

        <span style="color: red">满100减50</span>&nbsp;&nbsp;&nbsp;&nbsp;超市御妈&nbsp;&nbsp;&nbsp;食品饮料&nbsp;&nbsp;&nbsp;Apple618&nbsp;&nbsp;&nbsp;
        爆款预约&nbsp;&nbsp;&nbsp;女神专享&nbsp;&nbsp;&nbsp;价保618&nbsp;&nbsp;&nbsp;大牌玩具&nbsp;&nbsp;&nbsp;影音618
    </div>
    <div id="navitems">
        <div id="spans">
            <span><a href = "#">秒杀</a></span>
            <span><a href = "#">优惠券</a></span>
            <span><a href = "#">PLUS会员</a></span>
            <span><a href = "#">闪购</a></span><em class = "sp-line"></em>
            <span><a href = "#">拍卖</a></span>
            <span><a href = "#">京东服饰</a></span>
            <span><a href = "#">京东超市</a></span>
            <span><a href = "#">生鲜</a></span><em class = "sp-line"></em>
            <span><a href = "#">全球购</a></span>

        </div>
    </div>
</div>
<!--header end-->
<div class="successHeader">
    <div class="successText">
        JD提示：添加成功
    </div>
</div>
<div class="successDetail">
    <div class="succ">
        <div class="succ_icon"></div>
        <div class="succ_txt">商品已成功加入购物车 ！</div>
    </div>
    <div class="desc">
        <img src="img/addToCartDemo.jpg">
        <p style="line-height: 30px">
            ${item.title }
        </p>
        <p style="color: #aaaaaa; line-height: 20px">
            数量：${item.num }
        </p>

        <!--跳转到购物车列表-->
        <a href="toCart.do">
            <div class="toCart">
                去购物车结算
                <span class="rightIcon"></span>
            </div>
        </a>

    </div>

</div>

</body>
</html>