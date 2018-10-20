<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="application/javascript" src="js/jquery-3.3.1.js"></script>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<script type="application/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div style="width: 100%; border: none; border-bottom: 3px solid red">
				<table>
					<tbody>
						<tr>
							<td><a href="index.do"><img src="img/logo-w-s.png"></a></td>
							<td><h3>登录页满意度调查</h3></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row" style="margin-top: 20px">
				<div class="col-md-1"></div>
				<div class="col-md-11">
					<p>尊敬用户您好：</p>
					<p>为了给您提供更加完善的服务，我们希望收集并了解您在页面的使用情况。对您的配合和支持表示衷心的感谢！</p>
				</div>
			</div>
			<div style="height: 620px">
				<span style="margin-top: 20px; font-size: 20px">A</span>
				<form action="" method="get">
					<table width="100%"
						style="background-color: #EEF6FF; border: 1px solid #cce8ff; margin-top: 10px">
						<tbody>
							<tr>
								<td><span>* 您对登录页整体满意度如何？</span></td>
							</tr>
							<tr>
								<td style="background-color: #ffffff;">
									<div style="margin-top: 10px">
										<span>&nbsp;&nbsp;&nbsp;<input type="radio" name="st"
											value="1"> 非常满意<br></span> <span>&nbsp;&nbsp;&nbsp;<input
											type="radio" name="st" value="2"> 满意<br></span> <span>&nbsp;&nbsp;&nbsp;<input
											type="radio" name="st" value="3"> 一般<br></span> <span>&nbsp;&nbsp;&nbsp;<input
											type="radio" name="st" value="4"> 不满意<br></span> <span>&nbsp;&nbsp;&nbsp;<input
											type="radio" name="st" value="5"> 非常不满意<br></span>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<table width="100%"
						style="background-color: #EEF6FF; border: 1px solid #cce8ff; margin-top: 10px">
						<tbody>
							<tr>
								<td><span>您对登录页有什么想法，请大声说出来吧！（例如：哪里有问题，哪些功能做得不够好等）</span></td>
							</tr>
							<tr>
								<td style="background-color: #ffffff">
									<div style="margin-left: 100px; margin-top: 30px">
										<textarea rows="5" cols="45" name="su"></textarea>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div style="margin-top: 20px">
						<span style="font-family: Consolas; font-weight: bold">用户信息收集</span>
					</div>
					<table width="100%"
						style="background-color: #EEF6FF; border: 1px solid #cce8ff; margin-top: 10px">
						<tbody>
							<tr>
								<td><span>
										我们会不定期邀请用户参与面对面的交流。如果您有意参与，请填写如下信息，方便我们与您联系，谢谢！（信息仅作为内部资料绝不外泄）
										如果您对京东的使用体验有任何想法，也欢迎加入我们的京东体验交流QQ群（389453258），输入验证码 jdued
										即可成为群内一员！我们也会在群内发布访谈邀请的信息哦！</span></td>
							</tr>
							<tr>
								<td style="background-color: #ffffff">
									<div style="margin-left: 50px; margin-top: 20px">
										姓名&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="realname"><br />
										<div
											style="width: 100px; height: 10px; border: none; background-color: transparent"></div>
										手机&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="phonenum">
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<table width="100%"
						style="background-color: #EEF6FF; border: 1px solid #cce8ff; margin-top: 10px">
						<tbody>
							<tr>
								<td>
									<div style="margin-left: 50%">
										<input class="btn btn-default" type="submit" value="提交">
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
</body>
</html>