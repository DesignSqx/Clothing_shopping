<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
  <html lang="zh-CN">
    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="widtd=device-width, initial-scale=1, user-scalable=no">
      <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
      <title>订单</title>
  
      <!-- Bootstrap -->
      <link href="css/bootstrap.min.css" rel="stylesheet">
	  <link href="css/same.css" rel="stylesheet">
	  
	  
	  <style>
          .RadioStyle input{
              display: none;
          }
          .RadioStyle label{
              border: 1px solid #adadad;
              padding: 2px 10px 2px 5px;
              line-height: 28px;
              min-width: 80px;
              text-align: center;
              float: left;
              margin: 5px;
              border-radius: 5px;
          }
          .RadioStyle input:checked+label{
              color: white;
              background: url("images/dxk.jpg") 400px 100px;
          }
          .clear{
              clear: both;
          }


		  #myModal, #buy{display: none;}
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
		  .buytiao{
			  margin-top: 15px;
		  }
		  .nav-tabs{
			  font-size: 16px;
		  }
		  
		  .table th, .table td {
			  font-size: 15px;
				text-align: center;
				vertical-align: middle!important;
		  }

		  .table img{
			  width: 121px;
			  height: 121px;
		  }
		  .headsize{
			  font-size: 15px;
			  margin-top: 5px;
		  }
		  
		  
	  </style>
    </head>
    <body>


	<c:set var="log" scope="page" value="true"/>


    <!-- 搜索框 -->
    <nav class="navbar navbar-default navbar-static-top sousuo" >
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
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
      position: relative; z-index: 1; margin-bottom: 0;">
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
    		  <li><a class="navbar-brand" href="${pageContext.request.contextPath}/logEd?username=${username}">
				  商城首页</a></li>
              <li ><a href="#">---</a></li>
              <li><a href="#">---</a></li>
			  <li class="dropdown">
			    <a href="#" class="dropdown-toggle xiala" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${username} <span class="caret"></span></a>
			    <ul class="dropdown-menu" style="z-index: 1; position: relative;">
			      <li><a href="#" data-toggle="modal" data-target="#myModal">信息</a></li>
			      <li role="separator" class="divider"></li>
			      <li class="active"><a>订单<span class="sr-only">(current)</span></a></li>
			    </ul>
			  </li>
            </ul>
    		
    		
			
			
    		<!-- 下拉框 -->
            <ul class="nav navbar-nav navbar-right">
				<li><a href="#" data-toggle="modal" data-target="#notice">公告</a></li>
    		  <li><a href="login.jsp">退出</a></li>
            </ul>
          </div>
        </div>
      </nav>		
    </div>
	

	
	

	
	
	<div class="container" style="margin-top: 50px;">
		<div class="row">   
		
		
		
		
		 <div class="col-lg-12">
		   <ul class="nav nav-tabs" role="tablist" id="myTab">
		     <li role="presentation" class="active"><a href="#buying" aria-controls="buying" role="tab" data-toggle="tab">未购</a></li>
		     <li role="presentation"><a href="#bought" aria-controls="bought" role="tab" data-toggle="tab">已购</a></li>
		   </ul>
		 
		   <div class="tab-content">
			   
		     <div role="tabpanel" class="tab-pane active" id="buying">     <!-- 还未购买 -->
				 <div class="panel panel-default">
				   <div class="panel-heading text-center" style="height: 60px;">
                       <p class="col-lg-2 headsize">操作</p>
				 	   <p class="col-lg-2 headsize">图片</p>
				 	   <p class="col-lg-2 headsize">名字</p>
				 	   <p class="col-lg-2 headsize">单价</p>
				 	   <p class="col-lg-2 headsize">总价</p>
				 	   <p class="col-lg-2 headsize">处理</p>
				 	</div>

                     <div id="one RadioStyle">
                     <c:choose>
                         <c:when test="${allBuyOrders.size() == 0}">
							 <h3 style="size: 30px; color: #cccccc;" align="center">去逛逛吧</h3>
                         </c:when>
                         <c:otherwise>
                             <table class="table">
								 <c:set var="allcount" value="0"/>
                                 <c:set var="i" value="0"/>
                                <c:forEach items="${allBuyOrders}" var="orders">
									<c:set var="allcount" value="${allcount+orders.orderprice}"/>
                                    <c:set var="i" value="${i+1}"/>

                                    <tr>
                                        <td class="col-lg-2 "><label>
                                            <input type="checkbox" name="count" value="${i}" />
                                        </label>
                                         </td>
                                        <td class="col-lg-2 "><img src="pro_img/${orders.orderimgname}" alt="..."></td>
                                        <td class="col-lg-2 ">${orders.ordername}</td>
                                        <td class="col-lg-2 ">${orders.orderprice}￥</td>
                                        <td class="col-lg-2 ">${orders.orderprice}￥</td>
                                        <td class="col-lg-2 "><button onclick="delord0('${orders.buytime}', '${orders.username}')">
                                            <span class="glyphicon glyphicon glyphicon-trash" aria-hidden="true"></span></button></td>
                                    </tr>
                                </c:forEach>

                                 <tr height="100px">
                                     <td class="col-lg-2 "></td>
                                     <td class="col-lg-2 "></td>
                                     <td class="col-lg-2 "></td>
                                     <td class="col-lg-2 "></td>
                                     <td class="col-lg-2 "></td>
                                     <td class="col-lg-2 "><button type="button" class="btn btn-primary" data-toggle="modal" data-target=".buy">购买</button></td>
                                 </tr>

                             </table>
                         </c:otherwise>

                     </c:choose>
                     </div>
				 </div>
			 </div>
			 





		     <div role="tabpanel" class="tab-pane" id="bought">							<!-- 已经购买 -->
				 <div class="panel panel-default">     
				   <div class="panel-heading text-center" style="height: 60px;">
				 	   <p class="col-lg-2 headsize">图片</p>
				 	   <p class="col-lg-2 headsize">名字</p>
				 	   <p class="col-lg-2 headsize">价格</p>
				 	   <p class="col-lg-2 headsize">手机号码</p>
				 	   <p class="col-lg-2 headsize">宿舍</p>
				 	   <p class="col-lg-2 headsize">处理</p>
				 	</div>
                    <div id="two">
					 <c:choose>
						 <c:when test="${allBoughtOrders.size() == 0}">
							 <h3 style="size: 30px; color: #cccccc;" align="center">空空如也</h3>
						 </c:when>
						 <c:otherwise>
					 		<table class="table">
							 <c:forEach var="orders" items="${allBoughtOrders}">
								 <tr>
									 <td class="col-lg-2 "><img src="pro_img/${orders.orderimgname}" alt="..."></td>
									 <td class="col-lg-2 ">${orders.ordername}</td>
									 <td class="col-lg-2 ">${orders.orderprice}￥</td>
									 <td class="col-lg-2 ">${orders.orderphone}</td>
									 <td class="col-lg-2 ">${orders.orderaddress}</td>
									 <td class="col-lg-2 "><button onclick="delord1('${orders.buytime}', '${orders.username}')">
                                         <%--href="${pageContext.request.contextPath}/delOrder?buyTime=${orders.buytime}&username=${orders.username}&sign=1"--%>
										 <span class="glyphicon glyphicon glyphicon-trash" aria-hidden="true"></span></button></td>
								 </tr>
							 </c:forEach>
							</table>
						 </c:otherwise>
					 </c:choose>
                    </div>
				 </div>
			 </div></div>
		   </div>
		 
		 </div>

		</div>



	<div class="modal fade buy" id="buy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">邮递信息</h4>
				</div>
				<div class="modal-body">

					<%--<form class="form-horizontal" name="fm" action="${pageContext.request.contextPath}/buyIt">--%>
						<%--<form class="form-horizontal" name="fm" onclick="subs()">--%>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label buytiao" >手机号码</label>
							<div class="col-sm-10" >
								<input type="text" class="form-control buytiao" id="orderphone" placeholder="Phone" name="orderphone">
								<input type="hidden" name="username" id="username" value="${username}">
                                <input type="hidden" name="allcount" id="allcount">
							</div>
						</div>

						<div class="form-group" >
							<label for="inputEmail3" class="col-sm-2 control-label buytiao">宿舍地址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control buytiao" id="orderaddress" placeholder="Address" name="orderaddress">
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default buytiao" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary buytiao" id="buyIt" onclick="dobuy()">Buy it!</button>
						</div>
					<%--</form>--%>
				</div>
			</div>
		</div>

	</div>
	
	
	<!-- 个人信息模态框 -->
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
						<label for="inputEmail3" class="col-sm-2 control-label">名字</label>
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



<%--&lt;%&ndash;-----------这玩意很吃力，吃了很多苦，留着写博客------------------按钮点击%>--%>
		<%--<script>--%>
		<%--function subs() {--%>
			<%--var phone = document.getElementById("orderphone").value;--%>
			<%--var address = document.getElementById("orderaddress").value;--%>
			<%--var saveDataAry = new Array();--%>

			<%--<c:set var="j" value="0"></c:set>--%>
			<%--for (var i = 0; i < ${allBuyOrders.size()}; ++i) {--%>
				<%--var data1={orderimgname:"${allBuyOrders.get(j).orderimgname}",--%>
					<%--ordername:"${allBuyOrders.get(j).ordername}",--%>
					<%--orderprice:${allBuyOrders.get(j).orderprice},--%>
					<%--orderphone:phone,--%>
					<%--orderaddress:address,--%>
					<%--username:"${username}",--%>
					<%--ordernum:1,--%>
					<%--sign:0--%>
				<%--};--%>
				<%--saveDataAry.push(data1);--%>
				<%--console.log(data1);--%>
				<%--<c:set var="j" value="${j+1}"></c:set>--%>
			<%--}--%>
			<%--console.log("2");--%>
			<%--$.ajax({--%>
				<%--type:"POST",--%>
				<%--url: "${pageContext.request.contextPath}/buyIt",--%>
				<%--dataType:"json",--%>
				<%--contentType:"application/json;charset=utf-8",--%>
				<%--data:JSON.stringify(saveDataAry), //只有这一个参数，json格式，后台解析为实体，后台可以直接用--%>
				<%--success:function(data){--%>
					<%--alert("购买成功");--%>
				<%--}--%>
			<%--});--%>

		<%--}--%>
		<%--</script>--%>




<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>


        <script>

            function dobuy() {
                var obj = document.getElementsByName("count");
                var orderphone = $('#orderphone').val();
                var orderaddress = $('#orderaddress').val();
                var username = $('#username').val();
                var allcount = [];
                for(k in obj){
                    if (obj[k].checked){
                        allcount.push(obj[k].value);
                        obj[k].checked = false;
                    }
                }
                if (allcount.length !== 0){
                    setTimeout(function (){
                        window.location.reload();
                    }, 500);
                    $.ajax({
                        url:'${pageContext.request.contextPath}/buyIt',
                        type:'post',
                        data:{"orderphone":orderphone, "orderaddress":orderaddress, "username":username, "allcount":allcount},
                        success:function (data) {
                            $("#one").load(location.href + " #one");
                            alert("购买成功")
                        },
                        error:function (data) {
                            window.location.reload();
                        }
                    });
                }
                else alert("请勾选商品");

            }



            function delord0(a, b) {
                var aa = a;
                var bb = b;
                setTimeout(function (){
                    window.location.reload();
                }, 500);
                $.ajax({
                    url:"${pageContext.request.contextPath}/delOrder",
                    type:"post",
                    data:{"buyTime":aa, "username":bb, "sign":0},
                    success:function (data) {
                        $("#one").load(location.href + " #one");
                        alert("删除成功")
                    }
                });
            }


            function delord1(a, b) {
                var aa = a;
                var bb = b;
                $.ajax({
                    url:"${pageContext.request.contextPath}/delOrder",
                    type:"post",
                    data:{"buyTime":aa, "username":bb, "sign":1},
                    success:function (data) {
                        $("#two").load(location.href + " #two");
                        alert("删除成功")
                    }
                })
            }
        </script>



</body>
</html>