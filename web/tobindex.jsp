<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/9
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>后台管理</title>

  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<style type="text/css">
  .nav>li>a {
    position: relative;
    display: block;
    padding: 15px 30px;
  }
  a {

    color: #eeeeee;
    text-decoration: none;
  }
  .nav-pills>li.active>a,
  .nav-pills>li.active>a:focus,
  .nav-pills>li.active>a:hover {
    color: #555;
    background-color: #f5f5f5;
  }
  .nav-pills{
    font-size: 18px;
    margin-top: -20px;
    height: 1200px;
    background: #444;
    box-shadow: 2px 0 4px 0 rgba(0,0,0,.29);
  }
  .navbar{
    background: #444444;
    border: 0;
  }
  .ico{
    width: 33px;
    height: 33px;
    margin-top: -8px;
  }
  .container{
    width: 1800px;
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

</style>
<body>
<nav class="navbar navbar-default text-center">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
        <img alt="Brand" src="img/favicon.ico" class="img-circle ico">

      </a>
        <a class="navbar-brand">
            <li><span style="color: white">后台管理</span></li>
        </a>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp" style="color: white">退出</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">

  <div class="row">
    <ul class="nav nav-stacked nav-pills col-lg-1 text-center" role="tablist">
      <li role="presentation" class="active"><a href="#custom" aria-controls="custom" role="tab" data-toggle="tab">用户</a></li>
        <li role="presentation"><a href="#pros" aria-controls="products" role="tab" data-toggle="tab">商品</a></li>
      <li role="presentation"><a href="#products" aria-controls="products" role="tab" data-toggle="tab">上传商品</a></li>
    </ul>


    <div class="tab-content col-lg-11">
                                                                                                    <%--用户--%>
      <div role="tabpanel" class="tab-pane active" id="custom">
        <table class="table table-striped table-hover ">
          <tr class="text-center">
            <th class="col-lg-1">处理</th>
            <th class="col-lg-3">学生名字</th>
            <th class="col-lg-3">邮箱</th>
            <th class="col-lg-3">密码</th>
          </tr>
            <c:forEach items="${allUser}" var="user">
                <tr>
                    <td class="col-lg-1"><a href="${pageContext.request.contextPath}/delUser?username=${user.username}">
                      <button type="button" class="btn btn-default" aria-label="Left Align">
                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                      </button>
                    </a></td>
                    <td class="col-lg-3">${user.username}</td>
                    <td class="col-lg-3">${user.email}</td>
                    <td class="col-lg-3">${user.password}</td>
                </tr>
            </c:forEach>

        </table>
      </div>



                                                                                                <%--商品--%>

        <div role="tabpanel" class="tab-pane col-lg-11" id="pros">
            <table class="table table-striped table-hover">
                <tr class="text-center">
                    <th class="col-lg-2">处理</th>
                    <th class="col-lg-2">商品图</th>
                    <th class="col-lg-2">名称</th>
                    <th class="col-lg-2">商品描述</th>
                    <th class="col-lg-2">单价</th>
                </tr>

                <c:forEach items="${allProduct}" var="pro">
                    <tr>
                        <td class="col-lg-2">
                            <button type="button" onclick="delPro('${pro.imgname}', '${pro.proname}', '${pro.proabout}', '${pro.price}')">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                            </button>
                        </td>
                        <td class="col-lg-2"><img src="pro_img/${pro.imgname}" alt="..."></td>
                        <td class="col-lg-2">${pro.proname}</td>
                        <td class="col-lg-2">${pro.proabout}</td>
                        <td class="col-lg-2">${pro.price}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>





                                                                                                        <%--上传商品--%>
      <div role="tabpanel" class="tab-pane col-lg-11" id="products">
        <form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/fileUpload">
          <div class="form-group">
            <label for="n">Name of products</label>
            <input type="text" maxlength="10" class="form-control" id="n" placeholder="不超过10个字" name="proname">
          </div>
          <div class="form-group">
            <label for="e">About products</label>
            <input type="text" class="form-control" id="e" maxlength="16" placeholder="不超过16个字" name="proabout">
          </div>
            <div class="form-group">
                <label for="1">Price of products</label>
                <input type="text" class="form-control" id="1" maxlength="16" placeholder="不超过16位，或者显示无价" name="price">
            </div>
          <div class="form-group">
            <label for="exampleInputFile">Picture</label>
                                                                                                    <%--上传图片--%>
            <input type="file" id="exampleInputFile" multiple="multiple" name="file">
            <p class="help-block">One picture</p>
          </div>
          <button type="submit" class="btn btn-default" id="pro">Submit</button>
        </form>
      </div>
    </div>

  </div>

</div>

</div>
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script>
    <%--<a href="${pageContext.request.contextPath}/delUser?username=${user.username}">--%>
        function delPro(a, b, c ,d){
            var aa = a;
            var bb = b;
            var cc = c;
            var dd = d;
            setTimeout(function (){
                window.location.reload();
            }, 500);
            $.ajax({
                url:"${pageContext.request.contextPath}/delPro",
                type:"post",
                async:"true",
                data:{
                    "imgname":aa, "proname":bb, "proabout":cc, "price":dd
                },
                success:function (data) {
                    $("#pros").load(location.href + " #pros");
                    // location.reload(true);
                    alert("删除商品成功");
                }
            })
        }




  $("#pro").click(function (){
    alert("发布成功");
  });
</script>

</body>
</html>
