<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script type="text/javascript" src="js/index.js"></script>

</head>
<body style="background-color: #f0f3ef; height: 2550px;">
	<div id="shortcut">
		<span> <c:if test="${username == null }">
				<a href="loginOrRegister.do">你好，请登录</a>
			</c:if> <c:if test="${username!=null}">
					  欢迎您,${username}
					</c:if> <em class="sp-line"></em>
		</span> <span> <a href="loginOrRegister.do">免费注册</a><em
			class="sp-line"></em>
		</span> <span> <a href="#">我的订单</a><em class="sp-line"></em>
		</span> <span> <a href="toCart.do">我的购物车</a><em class="sp-line"></em>
		</span> <span> <a href="#">客户服务</a><em class="sp-line"></em>
		</span> <span> <a href="#">关于我 </a><em class="sp-line"></em>
		</span> <span> <a href="#">手机京东</a>
		</span>
		<div id="erweima" style="display: block; margin-top: -33px;">
			<img src="img/erweima.png">
		</div>
	</div>

	<div id="logoImage">

		<a href="index.do"><img src="img/logo.png"></a>

	</div>
	<div id="header">
		<!--商品搜索div-->
		<div id="searchDiv">
			<form class=" navbar-static-top " id="searchForm" role="search"
				method="post" action="search.do">
				<input type="text" class="form-control" id="searchInput"
					placeholder="数码3c" name="keyword">
				<button type="submit" class="btn btn-default" id="searchBtn">搜索</button>
			</form>
		</div>
		<div id="hotwords">

			<span style="color: red">满100减50</span>&nbsp;&nbsp;&nbsp;&nbsp;超市御妈&nbsp;&nbsp;&nbsp;食品饮料&nbsp;&nbsp;&nbsp;Apple618&nbsp;&nbsp;&nbsp;
			爆款预约&nbsp;&nbsp;&nbsp;女神专享&nbsp;&nbsp;&nbsp;价保618&nbsp;&nbsp;&nbsp;大牌玩具&nbsp;&nbsp;&nbsp;影音618
		</div>
		<div id="navitems">
			<div id="spans" width="300px">
				<span><a href="#">秒杀</a></span> <span><a href="#">优惠券</a></span> <span><a
					href="#">PLUS会员</a></span> <span><a href="#">闪购</a></span><em
					class="sp-line"></em> <span><a href="#">拍卖</a></span> <span><a
					href="#">京东服饰</a></span> <span><a href="#">京东超市</a></span> <span><a
					href="#">生鲜</a></span><em class="sp-line"></em> <span><a href="#">全球购</a></span>
				<span><a href="#">京东金融</a></span>
				<div style="display: inline-block; margin-left: 20px">
					<img src="img/manjian.png">
				</div>
			</div>
		</div>

	</div>
	<div id="categoryDiv">

		<ul>
			<li onmouseover="fun('#Div1',1)" onmouseout="fun('#Div1',2)"><a
				href="#">家用电器</a></li>
			<li onmouseover="fun('#Div2',1)" onmouseout="fun('#Div2',2)"><a
				href="#">手机<span class="cate_menu_line">/</span>运营商 /数码
			</a></li>
			<li onmouseover="fun('#Div3',1)" onmouseout="fun('#Div3',2)"><a
				href="#">电脑 /办公</a></li>
			<li onmouseover="fun('#Div4',1)" onmouseout="fun('#Div4',2)"><a
				href="#">家居 /家具 /家装 /厨具</a></li>
			<li onmouseover="fun('#Div5',1)" onmouseout="fun('#Div5',2)"><a
				href="#">男装 /女装 /童装 /内衣</a></li>
			<li onmouseover="fun('#Div6',1)" onmouseout="fun('#Div6',2)"><a
				href="#">美妆 /个护清洁 / 宠物</a></li>
			<li onmouseover="fun('#Div7',1)" onmouseout="fun('#Div7',2)"><a
				href="#">女鞋 /箱包 /钟表 /珠宝</a></li>
			<li onmouseover="fun('#Div8',1)" onmouseout="fun('#Div8',2)"><a
				href="#">男鞋 /运动 /户外</a></li>
			<li onmouseover="fun('#Div9',1)" onmouseout="fun('#Div9',2)"><a
				href="#">房产 /汽车 /汽车用品</a></li>
			<li onmouseover="fun('#Div10',1)" onmouseout="fun('#Div10',2)"><a
				href="#">母婴 /玩具乐器</a></li>
			<li onmouseover="fun('#Div11',1)" onmouseout="fun('#Div11',2)"><a
				href="#">食品 /酒类 /生鲜 /特产</a></li>
			<li onmouseover="fun('#Div12',1)" onmouseout="fun('#Div12',2)"><a
				href="#">艺术 /礼品鲜花 / 农资绿植</a></li>
			<li onmouseover="fun('#Div13',1)" onmouseout="fun('#Div13',2)"><a
				href="#">医药保健 / 计生情趣</a></li>
			<li onmouseover="fun('#Div14',1)" onmouseout="fun('#Div14',2)"><a
				href="#">图书 /音像 /电子书</a></li>
			<li onmouseover="fun('#Div15',1)" onmouseout="fun('#Div15',2)"><a
				href="#">机票 /酒店 /旅游 /生活</a></li>
			<li onmouseover="fun('#Div16',1)" onmouseout="fun('#Div16',2)"><a
				href="#">理财 /众筹 /白条 /保险</a></li>
			<li onmouseover="fun('#Div17',1)" onmouseout="fun('#Div17',2)"><a
				href="#">安装 /维修 /清洗保养</a></li>
		</ul>
	</div>
	<div id="popCtn">
		<!--开始轮播图-->
		<div id="carouselBigDiv">
			<div id="carouselDiv">

				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"
							class=""></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"
							class=""></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"
							class=""></li>
						<li data-target="#carousel-example-generic" data-slide-to="4"
							class=""></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="img/pop1.jpg" alt="...">
							<div class="carousel-caption">文字介绍</div>
						</div>
						<div class="item">
							<img src="img/pop2.jpg" alt="...">
							<div class="carousel-caption">文字介绍</div>
						</div>
						<div class="item">
							<img src="img/pop3.jpg" alt="...">
							<div class="carousel-caption">文字介绍</div>
						</div>
						<div class="item">
							<img src="img/pop4.jpg" alt="...">
							<div class="carousel-caption">文字介绍</div>
						</div>
						<div class="item">
							<img src="img/pop5.jpg" alt="...">
							<div class="carousel-caption">文字介绍</div>
						</div>

					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<!--结束轮播图-->
			<div id="popAds">
				<!--广告图片的位置，轮播图右边的三张-->
				<div id="popAdsImage">
					<img src="img/other1.png" id="ad1"> <img src="img/other2.png"
						id="ad2"> <img src="img/other3.png" id="ad3">
				</div>

				<div id="popInfo">
					<div id="photo">
						<img src="img/no_login.jpg">
					</div>
					<p>Hi 欢迎来到京东</p>
					<p>
						<span><a href="loginOrRegister.do">登录</a></span> <span><a
							href="loginOrRegister.do">注册</a></span>
					</p>
					<div class="classBtn">
						<div class="new">新人福利</div>
						<div class="vip">PLUS会员</div>
					</div>
					<div class="tab_head">
						<span id="tab_headSpan1"
							onmouseover="change('tab_headSpan1','#span1Div',1)"
							onmouseout="change('tab_headSpan1','#span1Div',2)">促销</span><em
							class="sp-line"></em> <span id="tab_headSpan2"
							onmouseover="change('tab_headSpan2','#span2Div',1)"
							onmouseout="change('tab_headSpan2','#span2Div',2)">公告</span>
						<div id="span1Div">

							平板电脑6.18元秒杀！<br> 图书开门红每100减50 <br> 京东超市领券199减100 <br>
							统帅 套购得999元扫地机 <br>


						</div>
						<div id="span2Div">
							瑞士钟表品牌宝齐莱独家... <br> 京东PLUS会员权益更新... <br> 京东启用全新客服电话...
							<br> 关于召回普利司通（天...<br>
						</div>
						<div class="ADS">
							<img src="img/other.png">
						</div>
					</div>

				</div>

			</div>


		</div>
	</div>
	<!--秒杀部分开始-->
	<div id="seckill">
		<!--秒杀倒计时开始-->
		<div id="seckillTime">
			<div id="seckillTimeTitle">
				<h1>京东秒杀</h1>
				<h3>FLASH DEALS</h3>
				<div id="fastImage">
					<img src="img/fast.png">
				</div>

				<h5>本场距离结束还剩</h5>
			</div>

			<div id="secDate">
				<div id="hours" class="time">0</div>
				<div id="mins" class="time">0</div>
				<div id="secs" class="time">0</div>
			</div>

		</div>
		<!--秒杀产品展示开始-->
		<div class="seckillAds">
			<a href="#">
				<div class="seckillAdsImage">
					<img src="img/seckillAds1.jpg">
				</div>

				<p>[京东智能电视]飞利浦（PHILIPS）50PUF6693/T3 50英寸 HDR 金属边框 人工智能语音
					4K超高清电视机（银色）</p> <span class="currentPrice"> ￥1979.00 </span> <span
				class="originPrice"> ￥2799.00 </span>
			</a>
		</div>

		<div class="seckillAds">
			<a href="#">
				<div class="seckillAdsImage">
					<img src="img/seckillAds2.jpg">
				</div>

				<p>酷开(coocaa)50K5C 50英寸超高清4K防蓝光护眼电视机HDR技术人工智能语音酷开系统 创维出品(黑色)</p> <span
				class="currentPrice"> ￥1598.00 </span> <span class="originPrice">
					￥2599.00 </span>
			</a>
		</div>
		<div class="seckillAds">
			<a href="#">
				<div class="seckillAdsImage">
					<img src="img/seckillAds3.jpg">
				</div>

				<p>小辣椒 红辣椒7X 4GB+64GB 人脸识别 全面屏双摄美拍 微Q八开 移动联通电信4G手机 双卡双待 蓝色</p> <span
				class="currentPrice"> ￥789.00 </span> <span class="originPrice">
					￥899.00 </span>
			</a>
		</div>
		<div class="seckillAds">
			<a href="#">
				<div class="seckillAdsImage">
					<img src="img/seckillAds4.jpg">
				</div>

				<p>东芝(TOSHIBA) TR200系列 240GB SATA3 固态硬盘</p> <span
				class="currentPrice"> ￥1111.00 </span> <span class="originPrice">
					￥1399.00 </span>
			</a>
		</div>
		<div class="seckillAds">
			<a href="#">
				<div class="seckillAdsImage">
					<img src="img/seckillAds5.jpg">
				</div>

				<p>Apple iPad Pro 平板电脑 10.5 英寸（64G
					WLAN版/A10X芯片/Retina屏/Multi-Touch技术 MQDX2CH/A）金色</p> <span
				class="currentPrice"> ￥4186.00 </span> <span class="originPrice">
					￥5188.00 </span>
			</a>
		</div>
	</div>
	<!--秒杀部分结束-->

	<!--全民enjoy部分开始-->
	<div>
		<div id="enjoy" style="padding-bottom: 10px">
			<div
				style="width: 1200px; display: inline-block; height: 450px; margin-left: -190px">
				<div
					style="position: absolute; display: inline-block; float: left; width: 790px; height: 450px; margin-right: 10px">

					<div class="leftjd">
						<a href="#">
							<div style="padding: 15px 20px 5px 20px">
								<span
									style="font-size: 20px; color: #000000; text-decoration: none; font-weight: bold; text-decoration: none;">京东超市&nbsp;&nbsp;<img
									src="img/xiangright.png"></span>&nbsp;&nbsp;<span
									style="font-weight: lighter; text-decoration: none; color: #000000;">精选超值好物品</span>
							</div>
						</a>
						<div>
							<div style="padding: 1px 2px 0px 15px; width: 220px;">
								<a href="#"> <img src="img/jdmarket01.png">
								</a>
							</div>
							<div style="margin-left: 15px; padding-top: 3px">
								<div class="jdmarket">
									<a href="#"> <img src="img/jdmarket02.png">
									</a>
								</div>
								<div class="jdmarket">
									<a href="#"> <img src="img/jdmarket03.png">
									</a>
								</div>

							</div>
						</div>

					</div>

					<div class="middlejd">

						<a href="javascript:void(0)">
							<div style="padding: 20px;">
								<span
									style="font-size: 16px; color: #000000; text-decoration: none;"><img
									src="img/hlogo.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;恒都京东自营旗舰店</span>
							</div>
						</a>
						<div>
							<div style="padding: 1px 2px 0px 15px; width: 220px;">
								<a href="#"> <img src="img/bigmeet.png">
								</a>
							</div>
							<div>
								<div class="littlemeet">
									<a href="#"> <img src="img/littlemeet01.png">
									</a>
								</div>
								<div class="littlemeet">
									<a href="#"> <img src="img/littlemeet02.png">
									</a>
								</div>
								<div class="littlemeet">
									<a href="#"> <img src="img/littlemeet03.png">
									</a>
								</div>
							</div>
						</div>

					</div>

				</div>
				<div class="rightjd">
					<a href="#">
						<div class="enjoyContent"
							style="display: inline-block; width: 400px; height: 400px;">
							<img style="width: 400px; height: 400px;"
								src="img/rightlingshi.png">

						</div>
					</a>

				</div>


			</div>



		</div>


		<!--更多商品展示开始-->
		<div id="more">
			<div class="title">
				<h2>还没逛够</h2>
			</div>
			<div style="width: 1200px;">
				<a href="#">
					<div class="moreContent">
						<img src="img/more1.jpg">
						<p>世怡厨房套装吸水长条地垫脚垫入户进门垫浴室防滑垫 厨师帽 40*60cm</p>
						<span>￥19.00</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more2.jpg">
						<p>第一卫 iPhoneX手机壳适用于苹果X防摔超薄电镀男女款软套透明硅胶保护磨砂 X透明款【送钢化膜】</p>
						<span>￥31.00</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more3.jpg">
						<p>溢彩年华 简易衣柜大容量衣柜多功能衣橱布衣柜YCB5628</p>
						<span>￥139.00</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more4.jpg">
						<p>海信（Hisense）LED43EC350A 43英寸 全高清电视 8G存储 VIDAA3.0
							丰富影视教育资源（黑色高光）</p>
						<span>￥1598.00</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more5.jpg">
						<p>世界是平的：21世纪简史（全面升级3.0版）</p>
						<span>￥48.00</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more6.jpg">
						<p>女士短袖衬衫女2018夏白色OL职业装V领修身商务正装时尚韩版大码工装打底衬衣工作服 DV2655 纯白平纹 L/37</p>
						<span>￥49.00</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more7.jpg">
						<p>沙发垫夏凉席坐垫冰垫草席沙发套巾夏季沙发套椅子坐垫套装 藤席-格调藤 尺寸定做 (单拍无效)</p>
						<span>￥10.00</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more8.jpg">
						<p>爸爸妈妈（babamama）儿童背包水枪玩具 夏天户外沙滩戏水 双肩背水壶高压喷射水枪 B2003企鹅</p>
						<span>￥39.00</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more9.jpg">
						<p>区块链革命：比特币底层技术如何改变货币、商业和世界</p>
						<span>￥53.10</span>
					</div>
				</a> <a href="#">
					<div class="moreContent">
						<img src="img/more10.jpg">
						<p>小王子（法国“圣埃克苏佩里基金会”官方认可简体中文译本，畅销280万册）</p>
						<span>￥28.50</span>
					</div>
				</a>
			</div>
		</div>
		<!--更多商品展示结束-->
	</div>

	<!--多快好省开始-->
	<div class="mod_service" clstag="h|keycount|btm|btmnavi_null01">
		<div class="grid_c1 mod_service_inner">
			<ul class="mod_service_list">
				<li class="mod_service_item">
					<div class="mod_service_unit">
						<h5 class="mod_service_tit mod_service_duo">多</h5>
						<p class="mod_service_txt">品类齐全，轻松购物</p>
					</div>
				</li>
				<li class="mod_service_item">
					<div class="mod_service_unit">
						<h5 class="mod_service_tit mod_service_kuai">快</h5>
						<p class="mod_service_txt">多仓直发，极速配送</p>
					</div>
				</li>
				<li class="mod_service_item">
					<div class="mod_service_unit">
						<h5 class="mod_service_tit mod_service_hao">好</h5>
						<p class="mod_service_txt">正品行货，精致服务</p>
					</div>
				</li>
				<li class="mod_service_item">
					<div class="mod_service_unit">
						<h5 class="mod_service_tit mod_service_sheng">省</h5>
						<p class="mod_service_txt">天天低价，畅选无忧</p>
					</div>
				</li>
			</ul>
		</div>
		<div style="height: 100px; color: transparent"></div>
	</div>
	<!--多快好省结束-->
	<hr />
	<div class="other">
		<div class="other1">
			<h5>购物指南</h5>
			<ul>
				<li><a href="#">购物流程</a></li>
				<li><a href="#">会员介绍</a></li>
				<li><a href="#">生活旅行</a></li>
				<li><a href="#">常见问题</a></li>
				<li><a href="#">联系客服</a></li>
			</ul>
		</div>
		<div class="other2">
			<h5>配送方式</h5>
			<ul>
				<li><a href="#">上门自提</a></li>
				<li><a href="#">211限时达</a></li>
				<li><a href="#">配送服务查询</a></li>
				<li><a href="#">配送收费标准</a></li>
				<li><a href="#">海外配送</a></li>
			</ul>
		</div>
		<div class="other3">
			<h5>支付方式</h5>
			<ul>
				<li><a href="#">货到付款</a></li>
				<li><a href="#">在线支付</a></li>
				<li><a href="#">分期付款</a></li>
				<li><a href="#">邮局汇款</a></li>
				<li><a href="#">公司转账</a></li>
			</ul>
		</div>
		<div class="other4">
			<h5>售后服务</h5>
			<ul>
				<li><a href="#">售后政策</a></li>
				<li><a href="#">价格保护</a></li>
				<li><a href="#">退款说明</a></li>
				<li><a href="#">退换货</a></li>
				<li><a href="#">取消订单</a></li>
			</ul>
		</div>
		<div class="other5">
			<h5>特色服务</h5>
			<ul>
				<li><a href="#">夺宝机</a></li>
				<li><a href="#">延保服务</a></li>
				<li><a href="#">京东通信</a></li>
				<li><a href="#">京东JD+</a></li>
				<li><a href="#">京东E卡</a></li>
			</ul>
		</div>
		<div class="other6">
			<h5 style="width: 120px; height: 22px;">京东自营覆盖区县</h5>
			<div>
				<p style="padding-bottom: 5px">京东已向全国2661个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
			</div>
			<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查看详情</a>
		</div>

		<hr />
		<div id="dibu">

			<a href="#" target="_blank">关于我们</a><span>|</span> <a href="#"
				target="_blank">联系我们</a><span>|</span> <a href="#" target="_blank">联系客服</a><span>|</span>
			<a href="#" target="_blank">合作招商</a><span>|</span> <a href="#"
				target="_blank">商家帮助</a><span>|</span> <a href="#" target="_blank">营销中心</a><span>|</span>
			<a href="#" target="_blank">手机京东</a><span>|</span> <a href="#"
				target="_blank">友情链接</a><span>|</span> <a href="#" target="_blank">销售联盟</a><span>|</span>
			<a href="#" target="_blank">京东社区</a><span>|</span> <a href="#"
				target="_blank">风险监测</a><span>|</span> <a href="#" target="_blank">隐私政策</a><span>|</span>
			<a href="#" target="_blank">京东公益</a><span>|</span> <a href="#"
				target="_blank">English Site</a><span>|</span> <a href="#"
				target="_blank">Media &amp; IR</a>
		</div>

	</div>
	</div>


</body>

</html>