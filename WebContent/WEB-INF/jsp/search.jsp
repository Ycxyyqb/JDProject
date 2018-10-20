<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="application/javascript" src="js/search.js"></script>
<link rel="stylesheet" href="css/search.css">
</head>
<body style="background-color: white">
	<div id="shortcut">
		<span> <c:if test="${username==null}">
				<a href="loginOrRegister.do">你好，请登录</a>
			</c:if> <c:if test="${username != null }">
				欢迎您，${username }
			</c:if> <em class="sp-line"></em>
		</span> <span> <a href="loginOrRegister.do">免费注册</a><em
			class="sp-line"></em>
		</span> <span> <a href="#">我的订单</a><em class="sp-line"></em>
		</span> <span> <a href="tocart.do">我的购物车</a><em class="sp-line"></em>
		</span> <span> <a href="#">客户服务</a><em class="sp-line"></em>
		</span> <span> <a href="#">关于我</a>
		</span>
	</div>

	<div id="logoImage">
		<a href="index.do"> <img src="img/jdlogo.png">
		</a>
	</div>
	<div id="header">
		<!--商品搜索div-->
		<div id="searchDiv">
			<form class=" navbar-static-top " id="searchForm" role="search"
				method="post" action="search.do">
				<input type="text" class="form-control" id="searchInput"
					placeholder="数码3c" name="keyword">

				<!-- 这是需要添加过滤条件-->
				<button type="submit" class="btn btn-default" id="searchBtn">搜索</button>

			</form>
		</div>
		<div id="hotwords">

			<span style="color: red">满100减50</span>&nbsp;&nbsp;&nbsp;&nbsp;超市御妈&nbsp;&nbsp;&nbsp;食品饮料&nbsp;&nbsp;&nbsp;Apple618&nbsp;&nbsp;&nbsp;
			爆款预约&nbsp;&nbsp;&nbsp;女神专享&nbsp;&nbsp;&nbsp;价保618&nbsp;&nbsp;&nbsp;大牌玩具&nbsp;&nbsp;&nbsp;影音618
		</div>
		<div id="navitems">
			<div id="spans">
				<span><a href="#">秒杀</a></span> <span><a href="#">优惠券</a></span> <span><a
					href="#">PLUS会员</a></span> <span><a href="#">闪购</a></span><em
					class="sp-line"></em> <span><a href="#">拍卖</a></span> <span><a
					href="#">京东服饰</a></span> <span><a href="#">京东超市</a></span> <span><a
					href="#">生鲜</a></span><em class="sp-line"></em> <span><a href="#">全球购</a></span>
				<!-- <span><a href = "#">京东金融</a></span> -->
			</div>

		</div>
	</div>

	<!--这里用来显示搜索之后的结果页面-->
	<div class="searchContent">
		<div class="filter">
			<a href="#"> <span> <!--综合分数--> 综合 <i></i>
			</span>
			</a> <a href="#"> <span> <!--按销量--> 销量 <i></i>
			</span>
			</a> <a href="#"> <span> <!--按评论数--> 评论数 <i></i>
			</span>
			</a> <a href="#"> <span> <!--按是否为新品--> 新品 <i></i>
			</span>
			</a> <a href="#"> <span> <!--按价格--> 价格 <i></i>
			</span>
			</a>
			<div class="itemCount">
				<span>共找到1000件商品 <b style="color: red">1</b>/100
				</span> <a href="#"> <i class="previousPage">&lt</i>
				</a> <a href="#"> <i class="nextPage">&gt</i>
				</a>
			</div>
		</div>
		<!--过滤条件结束-->
		<!-- 搜索结果展示部分开始-->
		<div class="items">

			<c:if test="${itemList != null }">
				<c:forEach items="${itemList }" var="item">
					<div class="item">
						<a
							href="${pageContext.request.contextPath }/item/${item.id }.html"><img
							src="img/${item.image }"></a>
						<p class="price">￥${item.price/100.0 }</p>
						<div class="desc">${item.title }</div>
						<p class="collect">
							<b style="color: #646fb0">${item.collect}</b>个人收藏
						</p>
						<span class="selfSupport">自营</span> <span class="new">新品</span>
					</div>
				</c:forEach>

				<c:if test="${fn:length(itemList) == 0}">
					<div
						style="color: #cccccc; margin: 100px 0px 500px 500px; font-size: 16px;">
						<h3>没有对应的商品！</h3>
					</div>
				</c:if>

			</c:if>

		</div>

	</div>

</body>
</html>