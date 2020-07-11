<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>购物商城</title>

     <link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css">
  </head>
  

  
  <body>
  <style type="text/css">
	  .aboutpro{
		  max-width: 201px;
	  }
	  .limt{
		  max-width: 192px;
		  overflow: hidden;
		  white-space: nowrap;
		  text-overflow: ellipsis;
	  }
	  .thumbnail img{
		  width: 201px;
		  height: 201px;
	  }
	  .jumbotron{
		  height: 245px;
		  background-color: #101010;
	  }

	  .col-lg-2{
		  margin-top: 30px;
	  }

	  .tptiao{
		  width: 100%;
	  }

	  .it{
		  overflow: hidden;
	  }

	  .lunbo{
		  height: 600px;
	  }
	  .container{
		  width: 1500px;
		  overflow: hidden;
		  height: auto;
	  }
	  .sousuo{
		  margin-left: 800px;
		  margin-top: 20px;
		  background-color: white;
		  border: transparent;

	  }


  </style>

	<!-- 搜索框 -->
	<nav class="navbar navbar-default navbar-static-top sousuo" >
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<%--<c:choose>--%>
				<%--<c:when test="${log == true}">--%>
					<%--<form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/findSome?username=${username}&log=${log}">--%>
				<%--</c:when>--%>
				<%--<c:otherwise>--%>

					<%--<form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/findSome?">--%>
				<%--</c:otherwise>--%>
			<%--</c:choose>--%>
		<form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/findSome">
	        <div class="form-group">
	          <input type="text" class="form-control" placeholder="Search" name="value">
				<input type="hidden" name="seaname" value="${username}" >
				<input type="hidden" name="log" value="${log}">
	        </div>
	        <button type="submit" class="btn btn-default">Find</button>
	      </form>
	  </div>
	</nav>
	
	
	<!-- 导航栏 -->
	  <nav class="navbar navbar-default navbar-inverse navbar-static-top" style="margin-top: 20px;height: 50px; 
	  position: relative; z-index: 1;margin-bottom: 0;">
	    <div class="container">
	      <!-- Brand and toggle get grouped for better mobile display -->
	      <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	          <span class="sr-only">Toggle navigation</span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </button>
	        
	      </div>
	      <!-- Collect the nav links, forms, and other content for toggling -->
	      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	        <ul class="nav navbar-nav">
			  <li class="active">
				  <c:choose>
					  <c:when test="${log == true}">
						  <a class="navbar-brand" href="${pageContext.request.contextPath}/logEd?username=${username}">
							  商城首页<span class="sr-only">(current)</span></a>
					  </c:when>
					  <c:otherwise>
						  <a class="navbar-brand" href="${pageContext.request.contextPath}/noLog">
							  商城首页<span class="sr-only">(current)</span></a>
					  </c:otherwise>
				  </c:choose>

			  </li>
	          <li><a href="#">---</a></li>
	          <li><a href="#">---</a></li>
				<c:choose>
					<c:when test="${log == true}">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle xiala" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									${username}<span class="caret"></span></a>
							<ul class="dropdown-menu" style="z-index: 1; position: relative;">
								<li><a href="#" target ="_blank" data-toggle="modal" data-target="#myModal">信息</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/ord?username=${username}" >订单</a>
                                    <%--target ="_blank"--%>
								</li>
							</ul>
						</li>
					</c:when>
					<c:otherwise>
						<li><a href="login.jsp">请登录</a></li>
					</c:otherwise>
				</c:choose>

	        </ul>
			
			
			

	        <ul class="nav navbar-nav navbar-right">
				<li><a href="#" data-toggle="modal" data-target="#notice">公告</a></li>
			  <li><a href="${pageContext.request.contextPath}/noLog">退出</a></li>
	        </ul>
	      </div><!-- /.navbar-collapse -->
	    </div><!-- /.container-fluid -->
	  </nav>		
	</div>
		  







	<!-- 轮播图 -->
	<div id="carousel-example-generic" class="carousel slide lunbo it" data-ride="carousel" >
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	  </ol>
	  <div class="carousel-inner" role="listbox">
	    <div class="item active">
	      <img src="img/lb1.jpg" alt="..." class="tptiao">
	      <div class="carousel-caption">
	        ...
	      </div>
	    </div>
	    <div class="item">
	      <img src="img/lb2.jpg" alt="..." class="tptiao">
	      <div class="carousel-caption">
	        ...
	      </div>
	    </div>
		
		<div class="item">
		  <img src="img/lb3.jpg" alt="..." class="tptiao">
		  <div class="carousel-caption">
		    ...
		  </div>
		</div>
		
	  </div>
	
	  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>






  <div class="container" style="margin-top: 30px;">
	  <div class="row">

		  <c:if test="${allPage.size() == 0}">
			  <h3 style="size: 30px; color: #cccccc;" align="center">暂时没有商品</h3>
		  </c:if>
  		<c:if test="${allPage.size() != 0}">
			<c:forEach items="${allPage.get(which)}" var="pro"  varStatus="ii">
  			<!-- 商品展示	  -->
				<%----------------------------%>
					  <div class="col-sm-6 col-md-4 col-lg-2">
						  <div class="thumbnail">
							  <img src="pro_img/${pro.getImgname()}" alt="...">
							  <div class="caption">
								  <h3 class="limt">${pro.getProname()}</h3>
								  <h4 style="color: red;">${pro.getPrice()}$</h4>
								  <p class="limt">${pro.getProabout()}</p>
									  <c:choose>
										  <c:when test="${log == true}">
											  <button class="btn btn-primary" title="小提醒"
													  data-container="body" data-toggle="popover" data-placement="bottom"
													  data-content="购买成功" onclick="dobuy('${pro.getImgname()}', '${pro.getProname()}', '${pro.getPrice()}', '${username}')">购买</button>
											  <%--; location.href='${pageContext.request.contextPath}/buy?imgname=${pro.getImgname()}&proname=${pro.getProname()}&price=${pro.getPrice()}&username=${username}'--%>
										  </c:when>
										  <c:otherwise>
											  <button class="btn btn-primary" style="background: #cccccc" title="小提醒"
                                                 data-container="body" data-toggle="popover" data-placement="bottom"
                                                 data-content="未登录" onclick="hide()">购买</button>
										  </c:otherwise>
									  </c:choose>
									  <a class="btn btn-default" role="button" data-toggle="modal" data-target="#${ii.index}">查看</a>
							  </div>
						  </div>
					  </div>


				<div class="modal fade" id="${ii.index}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog" style="max-width: 350px">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">商品详情</h4>
							</div>
							<div class="modal-body">
								<div class="media">
									<div class="media-body" >
										<img class="media-object img-responsive center-block" src="pro_img/${pro.getImgname()}" alt="...">
										<div class="form-group" style="margin-top: 20px">
											<h4 style="color: #cccccc">商品名称</h4>
											<p style="word-break: break-all; font-size: 20px; color: #666">${pro.getProname()}</p>
										</div>
										<div class="form-group">
											<h4 style="color: #cccccc">商品价格</h4>
											<p style="word-break: break-all; font-size: 20px; font-weight: bold; color: red">${pro.getPrice()}￥</p>
										</div>
										<div class="form-group">
											<h4 style="color: #cccccc">商品简述</h4>
											<p style="word-break: break-all; font-size: 20px; color: #666">${pro.getProabout()}</p>
										</div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
							</div>
						</div><!-- /.modal-content -->
					</div>
				</div>

  </c:forEach>




				<%--分页--%>
			<div class="container" style="margin-top: 30px;">
				<div class="row">
			<div class="col-lg-5">

			</div>
			<div class="col-lg-4">
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li>
							<c:choose>
								<c:when test="${which == 0}">
									<span aria-hidden="true" style="background: rgba(244,244,244,0.7)">&laquo;</span>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/dealPage?which=${which-1}&log=${log}&pagename=${username}" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a></c:otherwise>
							</c:choose>
						</li>
						<c:choose>
							<c:when test="${which-2 < 0}">
								<li> </li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath}/dealPage?which=${which-2}&log=${log}&pagename=${username}">${which-1}</a></li>
							</c:otherwise>
						</c:choose>


						<c:choose>
							<c:when test="${which-1 < 0}">
								<li> </li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath}/dealPage?which=${which-1}&log=${log}&pagename=${username}">${which}</a></li>
							</c:otherwise>
						</c:choose>

						<li><a style="background: rgba(244,244,244,0.7)">${which+1}</a></li>

						<c:choose>
							<c:when test="${which+1 > allPage.size()-1}">
								<li> </li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath}/dealPage?which=${which+1}&log=${log}&pagename=${username}">${which+2}</a></li>
							</c:otherwise>
						</c:choose>



						<c:choose>
							<c:when test="${which+2 > allPage.size()-1}">
								<li> </li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath}/dealPage?which=${which+2}&log=${log}&pagename=${username}">${which+3}</a></li>
							</c:otherwise>
						</c:choose>


						<li>
							<c:choose>
								<c:when test="${which == allPage.size()-1}">
									<span aria-hidden="true" style="background: rgba(244,244,244,0.7)">&raquo;</span>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/dealPage?which=${which+1}&log=${log}&pagename=${username}" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a></c:otherwise>
							</c:choose>

						</li>
					</ul>
				</nav>
			</div>
				</div>
			</div>

	  </c:if>
	  </div>
  </div>




  
	<div class="jumbotron">
		<br /><br />
	  <p align="center"><font color="white" size="3">为了防范电信网络诈骗，如网民接到962110电话，请立即接听<br /><br />
	  Copyright ©2013-现在 千图网 沪ICP备10011451号-6 ICP证书: 沪B2-20180057上海工商  沪公网安备 31011502008675号</font></p><br />
	</div>

   
   
   
   
   
   <!-- 模态框 -->
   <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
           <h4 class="modal-title" id="myModalLabel">个人信息</h4>
         </div>
		   <form class="form-horizontal" action="${pageContext.request.contextPath}/saveImf">
         		<div class="modal-body">
			   <div class="form-group">
			   	<label for="inputEmail3" class="col-sm-2 control-label" >名字</label>
			   	<div class="col-sm-10">
			   	  <input type="hidden" class="form-control" id="name" placeholder="Name" name="uname" value="${username}">
			   	</div>
			   </div>
			   
		     <div class="form-group">
		       <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
		       <div class="col-sm-10">
		         <input type="text" class="form-control" id="email" placeholder="Email" name="uemail">
		       </div>
		     </div>
		     <div class="form-group">
		       <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
		       <div class="col-sm-10">
		         <input type="password" class="form-control" id="password" placeholder="Password" name="upassword">
		       </div>
		     </div>

         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
           <button type="submit" class="btn btn-primary">Save changes</button>
         </div>
		   </form>
       </div>
     </div>
   </div>



  <script src="./js/jquery.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>

  <script>
	  // $(function () {
		//   initPopover();
	  // })
	  // function initPopover() {
		//   $(".show").popover({
		// 	  container: "body",
		// 	  trigger: " manual" //手动触发
		//   }).on('show.bs.popover', function () {
		// 	  $(this).addClass("popover_open");
		//   }).on('hide.bs.popover', function () {
		// 	  $(this).removeClass("popover_open");
		//   });
		//   $(".show").click(function () {
		// 	  if ($(this).hasClass("popover_open")) {
		// 		  $(this).popover("hide")
		// 	  } else {
		// 		  $(".popover_open").popover("hide");
		// 		  $(this).popover("show");
		// 	  }
		// 	  var e = arguments.callee.caller.arguments[0] || event;
		// 	  e.stopPropagation();
		//   });
		//   $(document).click(function () {
		// 	  $(".show").popover("hide");
		//   });
	  // }

	  function dobuy(a, b, c, d){													//这个函数用来控制几秒后消失，这里是1500ms
		var imgname = a;
		  var proname = b;
		  var price = c;
		  var username = d;
		  <%--${pageContext.request.contextPath}/buy?imgname=${pro.getImgname()}&proname=${pro.getProname()}&price=${pro.getPrice()}&username=${username}--%>
		  $.ajax({
			  url:"${pageContext.request.contextPath}/buy",
			  type:"post",
			  data:{"imgname":imgname, "proname":proname, "price":price,
			  		"username":username},
			  success:function (result) {
			  	setTimeout(function () {										//也就是1.5秒后消失
					  $("[data-toggle='popover']").popover('hide');
				  },1500);
			  }
		  })

	  }

		function hide(){													//这个函数用来控制几秒后消失，这里是1500ms
			setTimeout(function () {										//也就是1.5秒后消失
				$("[data-toggle='popover']").popover('hide');
			},1500);

		}


	  $(function (){											//这个是弹窗必须的js代码
          $("[data-toggle='popover']").popover();
      });

  </script>
  <script type="text/javascript" src="https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js">
	  !function(){function n(n,e,t){return n.getAttribute(e)||t}function e(n){return document.getElementsByTagName(n)}
		  function t(){var t=e("script"),o=t.length,i=t[o-1];return{l:o,z:n(i,"zIndex",-1),o:n(i,"opacity",.5),c:n(i,"color","0,0,0")
			  ,n:n(i,"count",99)}}function o(){a=m.width=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidt
			  h,c=m.height=window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight}function i(){r.clearRect
		  (0,0,a,c);var n,e,t,o,m,l;s.forEach(function(i,x){for(i.x+=i.xa,i.y+=i.ya,i.xa*=i.x>a||i.x<0?-1:1,i.ya*=i.y>c||i.y<0?-1:1,r.
		  fillRect(i.x-.5,i.y-.5,1,1),e=x+1;e<u.length;e++)n=u[e],null!==n.x&&null!==n.y&&(o=i.x-n.x,m=i.y-n.y,l=o*o+m*m,l<n.max&&(n===
		  y&&l>=n.max/2&&(i.x-=.03*o,i.y-=.03*m),t=(n.max-l)/n.max,r.beginPath(),r.lineWidth=t/2,r.strokeStyle="rgba("+d.c+","+(t+.2)+")
			  ",r.moveTo(i.x,i.y),r.lineTo(n.x,n.y),r.stroke()))}),x(i)}var a,c,u,m=document.createElement("canvas"),d=t(),l="c_n"+d.l,r=m.
			  getContext("2d"),x=window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.
					  oRequestAnimationFrame||window.msRequestAnimationFrame||function(n){window.setTimeout(n,1e3/45)},w=Math.random,y={x:null,y:nul
				  l,max:2e4};m.id=l,m.style.cssText="position:fixed;top:0;left:0;z-index:"+d.z+";opacity:"+d.o,e("body")[0].appendChild(m),o(),
					  window.οnresize=o,window.οnmοusemοve=function(n){n=n||window.event,y.x=n.clientX,y.y=n.clientY},window.οnmοuseοut=function(){y
					  .x=null,y.y=null};for(var s=[],f=0;d.n>f;f++){var h=w()*a,g=w()*c,v=2*w()-1,p=2*w()-1;s.push({x:h,y:g,xa:v,ya:p,max:6e3})}u=
					  s.concat([y]),setTimeout(function(){i()},100)}();
  </script>

  </body>

</html>