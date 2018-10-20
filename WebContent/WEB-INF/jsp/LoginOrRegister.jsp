<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录注册</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/loginOrRegister.css">
<script type="text/javascript">
        function changeimg(obj){
            obj.src="/web01/checkimg?time="+new Date().getTime();
        }
      
        //使用js判断用户名是否为空
        function checkUsername(){
        	var username=$("#username").val();
        	
        	if(username==""){
        		$("#registerUsernameMsg").text("用户名不能为空");
        	    return false;	
        	}else{
        		$("#registerUsernameMsg").text("");
        	}
        	//通过Ajax发送请求判断用户名是否存在
        	var bool=true;
        	$.ajax({
        		url:"${pageContext.request.contextPath}/checkUsername.do?username="+username,
        		type:"GET",
        		success:function(data){
        			if(data!="ok"){
        				$("#registerUsernameMsg").text("用户名已经被注册");
        			    bool=false;	
        			}
        		}
        	});
        	if(bool){
        		return true;
        	}
        	return false;
        }
        //使用js判断密码是否为空
        function checkPassword(){
        	  if($("#password").val()  == ""){
              	$("#registerPasswordMsg").text("密码不能为空");
              	return false;
              }else{
              	$("#registerPasswordMsg").text("");
              	return true;
              }
        }
        //使用js判断手机号是否为空
        function checkPhone(){
            if($("#phone").val()  == ""){
            	$("#registerPhoneMsg").text("手机号不能为空");
            	return false;
            }else{
            	$("#registerPhoneMsg").text("");
            	return true;
            }
        }
        //使用js判断邮箱是否为空
        function checkEmail(){
            if($("#email").val()  == ""){
            	$("#registerEmailMsg").text("邮箱不能为空");
            	return false;
            }else{
            	$("#registerEmailMsg").text("");
            	return true;
            }
        }
        //使用js判断用户名是否为空
        function checkInputUsername(){
            if($("#inputUsername").val()  == ""){
            	$("#loginUsernameMsg").text("用户名不能为空");
            	return false;
            }else{
            	$("#loginUsernameMsg").text("");
            	return true;
            }
        }
        //使用js判断密码是否为空
        function checkInputPassword(){
            if($("#inputPassword").val()  == ""){
            	$("#loginPasswordMsg").text("密码不能为空");
            	return false;
            }else{
            	$("#loginPasswordMsg").text("");
            	return true;
            }
        }
        function login() {
			if(checkInputUsername() && checkInputPassword()){
				return true;
			}else if(!checkInputUsername()){
				$("#loginUsernameMsg").text("用户名不能为空");
				return false;
			}else if(!checkInputPassword()){
				$("#loginPasswordMsg").text("密码不能为空");
				return false;
			}
		}
        
        function register() {
			if(checkUsername() && checkPassword() && checkPhone() && checkEmail()){
				return true;
			}else if(!checkUsername()){
				$("#registerUsernameMsg").text("用户名不能为空!");
				return false;
			}else if(!checkPassword()){
				$("#registerPasswordMsg").text("密码不能为空!");
				return false;
			}else if(!checkPhone()){
				$("#registerPhoneMsg").text("手机号不能为空!");
				return false;
			}else if(!checkEmail()){
				$("#registerEmailMsg").text("邮箱不能为空!");
				return false;
			}
			
		}
    </script>
</head>
<body>
	<div class="header">
		<a href="index.do"> <img src="img/jdlogo.png" alt="京东">
		</a> <span>欢迎您</span>
		<!--<span style="float: right;padding-right: 50px">登录页面调查页面</span>-->
		<a href="message.do"
			style="outline: rgb(109, 109, 109) none 0px; float: right; padding: 35px 100px 10px 100px;"><img
			src="img/littlemessage.png">登录页面，调查问卷</a>
	</div>
	<div class="bgColor">
		<div class="bgImg">
			<div class="formDiv">
				<ul class="nav nav-tabs nav-justified nav-tabs" roles="tablist">
					<li role="presentation" class="active"><a href="#login"
						aria-controls="login" role="tab" data-toggle="tab">登录</a></li>
					<li role="presentation"><a href="#register"
						aria-controls="register" role="tab" data-toggle="tab">注册</a></li>

				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="login">
						<!--登陆表单部分-->
						<form class="form-horizontal" method="post" action="index.do"
							id="loginForm">
							<div class="form-group">
								<label for="inputUsername" class="col-sm-3 control-label">用户名</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="inputUsername"
										placeholder="" onblur="checkInputUsername()" name="username">
									<font color="red"><span id="loginUsernameMsg">${loginUsernameMsg }</span></font>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword" class="col-sm-3 control-label">密
									码</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="inputPassword"
										onblur="checkInputPassword()" name="password"> <font
										color="red"><span id="loginPasswordMsg">${loginPasswordMsg }</span></font>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword" class="col-sm-3 control-label">验证码</label>
								<div class="col-sm-9">
									<input type="text" name="yanzhengma"><img
										onclick="changeimg(this)" src="#"><br> <font
										color="red"><span id="loginyanzhengmaMsg"></span></font>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-8 col-sm-4">
									<div class="checkbox">
										<label> <input type="checkbox"> 记住我
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-5 col-sm-7">
									<button type="submit" class="btn btn-default"
										onclick="return login()">登录</button>
								</div>
							</div>
						</form>
						<!--登陆表单部分结束-->
					</div>

					<div role="tabpanel" class="tab-pane" id="register">
						<!--注册表单部分-->
						<form class="form-horizontal" method="post" action="register.do">
							<div class="form-group">
								<label for="Username" class="col-sm-3 control-label">用户名</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="username"
										placeholder="" onblur="checkUsername()" name="username">
									<font color="red"><span id="registerUsernameMsg">${registerUsernameMsg }</span></font>
								</div>
							</div>
							<div class="form-group">
								<label for="Password" class="col-sm-3 control-label">密 码</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="password"
										placeholder="" onblur="checkPassword()" name="password">
									<font color="red"><span id="registerPasswordMsg">${registerPasswordMsg }</span></font>
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-sm-3 control-label">手机号</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="phone"
										placeholder="" onblur="checkPhone()" name="phone"> <font
										color="red"><span id="registerPhoneMsg">${registerPhoneMsg }</span></font>
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="col-sm-3 control-label">邮箱</label>
								<div class="col-sm-9">
									<input type="email" class="form-control" id="email"
										placeholder="" onblur="checkEmail()" name="email"> <font
										color="red"><span id="registerEmailMsg">${registerEmailMsg }</span></font>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-5 col-sm-7">
									<button type="submit" class="btn btn-default"
										onclick="return register()">注册</button>
								</div>
							</div>
						</form>
						<!--注册表单部分结束-->
					</div>
				</div>
			</div>

		</div>
	</div>


	<center>
		<div class="dibu">

			<div class="links">
				<a href="javascript:void(0)" target="_self"> 关于我们 </a> | <a
					href="javascript:void(0)" target="_self"> 联系我们 </a> | <a
					href="javascript:void(0)" target="_self"> 人才招聘 </a> | <a
					href="javascript:void(0)" target="_self"> 商家入驻 </a> | <a
					href="javascript:void(0)" target="_self"> 广告服务 </a> | <a
					href="javascript:void(0)" target="_self"> 手机京东 </a> | <a
					href="javascript:void(0)" target="_self"> 友情链接 </a> | <a
					href="javascript:void(0)" target="_self"> 销售联盟 </a> | <a
					href="javascript:void(0)" target="_self"> 京东社区 </a> | <a
					href="javascript:void(0)" target="_self"> 京东公益 </a> | <a
					href="javascript:void(0)" target="_self">English Site</a>
			</div>
			<div class="copyright">
				Copyright&nbsp;&copy;&nbsp;2018-09-18&nbsp;&nbsp;仿京东FJD.com&nbsp;版权所有
			</div>

		</div>
	</center>
</body>
</html>