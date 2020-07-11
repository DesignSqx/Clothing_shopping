<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

	<style>
		.form-control{
			background: white;
		}
		.but{
			margin-left: 100px;
		}
		.btn-default{
			margin-top: 25px;
			font-size: 15px;
			width: 80px;
			height: 40px;
		}
		.form-group{
			margin-top: 30px;
		}

		.row{
			margin-top: 300px;
		}
		.back{
			position: fixed;
			top:0;
			left: 0;
			width: 100%;
			height: 100%;
			min-width: 1000px;
			z-index: -10;
			/* 背景图片设置 */
			background-image: url(img/back.jpg);
			zoom: 1;
			background-color: #ffff;
			background-repeat: no-repeat;
			background-position: center 0;
			background-size: cover;
			-webkit-background-size: cover;
			-o-background-size: cover;
		}
	</style>
</head>
<title>欢迎</title>
<body>
<div class="back">

</div>
<div class="container">
	<div class="row">
		<div class="col-lg-7">
		</div>

		<!-- 标签页 -->
		<div class="col-lg-5" style="margin-top: 50px">
			<div style="font-size: 18px;">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#login" aria-controls="login" role="tab" data-toggle="tab">登录</a></li>
					<li role="presentation"><a href="#register" aria-controls="register" role="tab" data-toggle="tab">注册</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<!-- 登录 -->
					<div role="login" class="tab-pane active" id="login">
						<form class="form-horizontal" action="${pageContext.request.contextPath}/login" method="post" id="checkform">										<!-- 路径 -->
							<div class="form-group">
								<label for="namel3" class="col-sm-2 control-label" >学号</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" autocomplete="off" name="username" id="namel3" placeholder="number" style="height: 45px;">
								</div>
							</div>

							<%--<div class="form-group">--%>
								<%--&lt;%&ndash;<label for="inputEmail3" class="col-sm-2 control-label"  >邮箱</label>&ndash;%&gt;--%>
								<%--&lt;%&ndash;<div class="col-sm-10">&ndash;%&gt;--%>
									<%--&lt;%&ndash;<input type="text" class="form-control"  name="email" id="inputEmail3" placeholder="Email" style="height: 45px;">&ndash;%&gt;--%>
								<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
							<%--</div>--%>

							<div class="form-group" >
								<label for="Password3" class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" autocomplete="off" name="password" id="Password3" placeholder="Password" style="height: 45px;>
								</div>
							  </div>


							  <div class="form-group">
									<div class=" col-sm-10">
										<button type="submit" class="btn btn-default" id="loginbut">登录</button>
										<button type="button" class="btn btn-default but" id="liulanbut"
												onclick=javascrtpt:jump()>逛一逛</button>
									</div>
								</div>



						</form>
					</div>





					<!-- 注册 -->

				</div>
				<div role="register" class="tab-pane" id="register">
					<form class="form-horizontal" action="${pageContext.request.contextPath}/register">										<!-- 路径 -->
						<div class="form-group">
							<label for="l3" class="col-sm-2 control-label" >学号</label>
							<div class="col-sm-10">
								<input type="text" autocomplete="off" class="form-control" id="l3" placeholder="Name" name="username" style="height: 45px;">
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label" >邮箱</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" autocomplete="off" id="inputEmail3" name="email" placeholder="Email" style="height: 45px;">
							</div>
						</div>

						<div class="form-group" >
							<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" autocomplete="off" id="inputPassword3"
									   name="password" placeholder="Password" style="height: 45px;>
					 		</div>
					 	  </div>

					 	  <div class="form-group">
								<!-- 		<div class="col-sm-offset-2 col-sm-10">
                                         <div class="checkbox">
                                            <label>
                                              <input type="checkbox"> Remember me
                                            </label>
                                          </div>
                                        </div> -->
							</div>

							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default" id="registerbut" style="margin-left: 150px;">注册</button>
								</div>
							</div>
					</form>
				</div>
			</div>



			<div class="col-lg-1">

			</div>
		</div>
	</div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
	function jump(){
		window.location.href="${pageContext.request.contextPath}/noLog";
	}

	$("#registerbut").click(function (){
		alert("注册成功");

	});


</script>



</body>
</html>

