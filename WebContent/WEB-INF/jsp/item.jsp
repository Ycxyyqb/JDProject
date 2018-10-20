<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>#</title>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/item.css">
    <script type="application/javascript" src="js/item.js"></script>
</head>
<body style="background-color: white">
    <!--这是一个商品详情页面-->
    <div id="shortcut">
         <span>
			<c:if test="${username == null }">
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

    <div class="crazy" >
        <span class="crazy618">618狂欢</span>
        <span class="crazyItemTitle">
             ${item.title}
        </span>
    </div>

    <!--商品详情信息展示-->
    <div class="item">
        <div class="itemBigImg">
            <img src="img/${itemDesc.image}">
        </div>
        <div class="itemInfo">
            <span class="itemInfoTitle">
                <span class="new">新品</span>
                 ${item.title}
            </span>
            <p class="sellPoint">
                ${item.sellPoint }
            </p>
            <img src="img/618_banner.png">
            <div class="banner">
                <div class="price">
                    京 东 价 &nbsp;<span  style="color: #e4393c;font-family: 'microsoft yahei'; font-size: 22px">￥${item.price/100.0 }</span>
                </div>
                <div class="quantity">
                    库 存 数 &nbsp;&nbsp;<span style="color: #005ec0;font-family: 'microsoft yahei'; font-size: 20px">${item.num }</span>
                </div>
                <div class="collectNumber"><!--收藏数  -->
                    收 藏 数 &nbsp;&nbsp;<span style="color: #005ec0;font-family: 'microsoft yahei'; font-size: 20px">${item.collect}</span>
                </div>
            </div>
            <div class="destination">
                配 送 至 &nbsp;&nbsp;
                <span style="color: #646fb0;font-family: 'microsoft yahei'; font-size: 14px">
                    江西省宜春市袁州区学府路宜春学院
                </span>
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="color: #999999; padding-top: 10px;display: inline-block">
                    由 京东 发货, 并提供售后服务. 11:10前下单,预计今天送达
                </span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <span style="color: #999999; padding-top: 10px;display: inline-block">
                    支持 99元免基础运费(20kg内)
                </span>


            </div>
            <div class="weight">

                总 重 量&nbsp;&nbsp;&nbsp;

                <span style="color: #646fb0;font-family: 'microsoft yahei'; font-size: 14px">
                    0.31kg
                </span>

            </div>
            <div class="chooseBtns">
                <div class="chooseNumber" id="chooseNumber">
                    1
                </div>
                <div class="operator">
                    <div class="add" id="add">
                        +
                    </div>
                    <div class="sub" id="sub">
                        -
                    </div>
                </div>
                <form action="addToCart.do" method="post" id="addToCartForm">
                    <input hidden type="text" value="${item.id }" name="id">
                    <input type="text" hidden name = "number" id="addToCartNumber" value="1">
                    <div class="addToCart" id="addToCart">
                        	加入购物车
                    </div>
                </form>

            </div>
        </div>
    </div>

    <!-- 商品详情介绍-->
    <div class="detail">
        <div class="detailTitle">
            <div class="detailTitleDiv" >
                商品介绍
            </div>
        </div>
        <div class="product_info"><!--productInfo start-->
           ${itemDesc.itemDesc }
        </div><!--productInfo end-->
        <br>
        <br>
        <br>
        <br>

    </div>
</body>

</html>