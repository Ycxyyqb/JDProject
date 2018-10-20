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
<link rel="stylesheet" href="css/cart.css">
<script type="application/javascript" src="js/cart.js"></script>

</head>
<script type="text/javascript">
    $(function(){
    	/* delete the item from cart */
    	$("#cartList .item .itemOperatorDiv").click(function(){ 
    		var ele = $(this).parent(); 
            var id = ele.children(".cid").val();
            $.ajax({
            	url:"${pageContext.request.contextPath}/deleteItemFromCart.do",
            	type:"POST",
            	data:"id="+id,
            	dataType:"text",
            	success:function(data){
            		if(data == "ok"){
            			ele.remove();            			
            		}
            	},
            	error:function(){
            		alert("删除不成功");
            	}
            });
            
        }); 
    	
    	/* change the number by click btn */
    	$("#cartList .item .itemChooseNumberDiv .add").click(function(){
    		var ele = $(this).parent();
            var number = ele.children(".number").children("input").val();
            var id = ele.parent().children(".cid").val();
            
            $.ajax({
            	url:"${pageContext.request.contextPath}/addItemNumber.do",
            	type:"post",
            	data:"id="+id,
            	dataType:"text",
            	success:function(data){
            		if(data == "ok"){
            			//we change the number at the page when the server return ok;
            			ele.children(".number").children("input").val(parseInt(number)+1);
                        var currentNumber = parseInt(number)+1;
                        var txt = ele.parent().children(".itemPriceDiv").children("span").text();
                        ele.parent().children(".itemMoneyDiv").children("span")
                            .text((parseFloat(txt)*currentNumber).toFixed(2));
                        
            		}
            	}
            });
        });
    	
    	$("#cartList .item .itemChooseNumberDiv .sub").click(function(){
    		var ele = $(this).parent();
    		var id = ele.parent().children(".cid").val();
    		
            var number = parseInt(ele.children(".number").children("input").val());
            var txt = ele.parent().children(".itemPriceDiv").children("span").text();
            if(number > 1){
            	$.ajax({
            		url:"${pageContext.request.contextPath}/subItemNumber.do",
            		type:"post",
            		data:"id="+id,
            		dataType:"text",
            		success:function(data){
            			if(data == "ok"){
            				 number = number-1;
            	             ele.children(".number").children("input").val(number);
            	             ele.parent().children(".itemMoneyDiv").children("span")
            	           		.text((parseFloat(txt)*(number)).toFixed(2));
            			}
            		}
            	});
               
            }else{
                number = 1;
                ele.children(".number").children("input").val(number);
                ele.parent().children(".itemMoneyDiv").children("span")
            	.text((parseFloat(txt)*(number)).toFixed(2));
            }
        });
    	
    	/*change the item number by input area*/
    	$("#cartList .item .itemChooseNumberDiv .number input").blur(function(){
    		var self = $(this);
    	    var ele = $(this).parent().parent().parent();
            var txt = ele.children(".itemPriceDiv").children("span").text();
            var id = ele.children(".cid").val();
            if(!isNaN($(this).val())){
                var number = parseInt($(this).val());
                $.ajax({
                	url:"${pageContext.request.contextPath}/updateItemNumber.do",
                	type:"post",
                	data:"id="+id+"&number="+number,
                	dataType:"text",
                	success:function(data){
                		if(data == "ok"){
                			ele.children(".itemMoneyDiv").children("span")
                            .text((number*(parseFloat(txt))).toFixed(2));
                		}
                	}
                });
                
            }else{
                alert("Not A Number");
                $.ajax({
                	url:"${pageContext.request.contextPath}/getItemNumber.do",
                	type:"post",
                	data:"id="+id,
                	dataType:"text",
                	success:function(data){
                		self.val(parseInt(data));
                		ele.children(".itemMoneyDiv").children("span").text(parseInt(data)*parseFloat(txt).toFixed(2));
                	}
                });
                
            }
        });
    	
    	
    });
    
    </script>
<body style="background-color: white">
	<!--这是一个商品详情页面-->
	<div id="shortcut">
		<span> <c:if test="${username==null }">
				<a href="loginOrRegister.do">你好，请登录</a>
			</c:if> <c:if test="${username != null }">
				欢迎您，${username }
			  </c:if> <em class="sp-line"></em>
		</span> <span> <a href="loginOrRegister.do">免费注册</a><em
			class="sp-line"></em>
		</span> <span> <a href="#">我的订单</a><em class="sp-line"></em>
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
				method="post" action=" search.do">
				<input type="text" class="form-control" id="searchInput"
					placeholder="数码3c" name="keyword">

				<!-- 这是需要添加过滤条件-->
				<button type="submit" class="btn btn-default" id="searchBtn">搜索</button>

			</form>
		</div>
	</div>
	<c:if test="${username == null }">
		<div class="noLoginTip">
			<span class="warningIcon"></span> <span class="warningText">
				您还没有登录！登录后购物车的商品将保存到您账号中</span> <a
				href="${pageContext.request.contextPath }/loginOrRegister.do"><span
				class="warningBtn">立即登录</span></a>
		</div>
	</c:if>

	<div class="showCart">
		<div>
			<div class="chooseAll">
				<input type="checkbox">&nbsp;&nbsp;全选
			</div>
			<div class="goods">商品</div>
			<div class="price">单价</div>
			<div class="number">数量</div>
			<div class="money">小计</div>
			<div class="operator">操作</div>
		</div>
	</div>
	<!--购物车列表-->
	<div id="cartList">

		<c:forEach items="${SESSION_CART }" var="cartItem">
			<div class="item">
				<!--这是一个用户保存商品id-->
				<input class="cid" hidden value="${cartItem.value.id }" name="id">
				<div class="itemCheckboxDiv">
					<input type="checkbox">
				</div>
				<div class="itemImgDiv">
					<img src="img/cart_img01.jpg">
				</div>
				<div class="itemDescDiv">${cartItem.value.title }</div>
				<div class="itemPriceDiv">
					￥<span>${cartItem.value.price/100.0 }</span>
				</div>
				<div class="itemChooseNumberDiv">
					<div class="sub">-</div>
					<div class="number">
						<input type="text" value="${cartItem.value.num }">
					</div>
					<div class="add">+</div>
				</div>
				<div class="itemMoneyDiv">
					￥<span style="font-size: 16px;">${cartItem.value.price*cartItem.value.num/100.0 }</span>
				</div>
				<div class="itemOperatorDiv">
					<span>删除</span>
				</div>
			</div>
		</c:forEach>
		<c:if test="${fn:length(SESSION_CART) == 0}">
			<div
				style="color: #cccccc; margin: 100px 0px 500px 600px; font-size: 16px;">
				<h3>您没有添加任何商品！</h3>
			</div>
		</c:if>

	</div>
</body>
</html>