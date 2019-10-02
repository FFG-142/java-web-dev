<%@ page import="java.util.List" %>
<%@ page import="entiy.Book" %>
<%@ page import="entiy.User" %>
<%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2019/9/24
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>首页</title>
  <style type="text/css">
    *{
      margin: 0;
      padding: 0;
    }
    body {
        background:url(/images/background.png);
        background-position:center;
    }
    header{
      height: 80px;
      background: rgba(130, 177, 255,0.9);
      background-attachment:fixed;
      display:flex;
      align-items:center;
      justify-content: space-between;
      padding-left: 10px;
      padding-right: 10px;
    }
    .nav{
      flex: 0 0 50px;
      list-style: none;
      display: flex;
    }
    .nav li{
      margin-left: 10px;
      margin-right: 0.625rem;
      width: 50px;
    }
    .user-info{
      padding-right:20px;
    }
    /* 超链接样式 */
    .nav li a{
      text-decoration:none;
      color:#eee;
    }
    .nav li a:hover{
      color:#fff;
    }
    .button {
        list-style: none;
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 8px 15px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 10px;
        border-radius: 12px;
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
    }
    .nav1
    {
      list-style: none;
      display: flex;
      font-size:20px;
    }
    .nav1 li{
      margin-left: 10px;
    }
    .nav1 li a{
      text-decoration:none;
      color:black;
    }
    .nav1 li a:hover{
      color:white;
    }
    /* 搜索区域样式 */
    .search-warp{
      height: 40px;
      background: rgba(144,202,249,0.9);
      display:flex;
      align-items:center;
      padding-left:1%;
    }
    .input-box{
      width: 250px;
      height: 30px;
      border:1px;soild:#fff;
      border-radius: 5px;
      margin-left:10px ;
    }

    .container{
      width: 80%;
      margin:0 auto;
      display: flex;
      padding: 5px 5px 5px 5px;
    }
    .left{
      flex:0 0 60%;
        background: rgba(144,202,249,0.8);
      border:2px solid #42a5f5;
      height:100%;
      padding:10px 10px 10px 10px;
    }
    .right{
      flex:0 0 35%;
      height:100%;
      margin-left:15px;
        background: rgba(144,202,249,0.8);
      border:2px solid #42a5f5;
    }
    .row{
      display:flex;
      /* 自动换行 */
      flex-wrap:wrap;
      padding:5px 5px 5px 5px;
    }
    .column{
      flex:0 0 23%;
      height:245px;
      border:2px;solid:black;
      border-radius: 10px;
      margin:10px 5px 5px 5px;
    }

    footer {
      position: fixed;
      left: 0px;
      bottom: 0px;
      width: 100%;
      height: 20px;
      text-align:right;
        background: rgba(144,202,249,0.8);
      z-index: 9999;
    }
      .imga{
          width:80%;
          height: 65%;
          margin:0 auto;
          display: flex;
          padding: 10px 10px 10px 10px;
      }

    .avatar {
        list-style: none;
        width: 40px;
        height: 40px;
        border-radius: 50%;
    }
    .font1{
      font-size:20px;
      padding-left:22px;
    }
    .font2{
      padding-left:175px;
        text-align:right;
    }
    .font3{
      padding: 10px 10px 0px 10px;
    }
    .font4{
        list-style: none;
        font-color:white;
    }
  </style>
</head>
<body>
<%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>
<!-- 顶部导航 -->
<header>
  <div>
      <%
          User user = (User) session.getAttribute("user");
          pageContext.setAttribute("user", user);
      %>
    <!-- 导航 -->
    <ul class="nav">
      <li>
        <a href="#">首页</a>
      </li>
      <li>
        <a href="#">浏览</a>
      </li>
      <li>
        <a href="#">话题</a>
      </li>
      <li>
        <a href="#">讨论</a>
      </li>
      <li>
        <a href="#">推荐</a>
      </li>
    </ul>
  </div>
    <ul>
        <%
            if (user != null) {
        %>
        <li>
            <a href="person.jsp">
                <img src="images/${user.avatar}" alt="" class="avatar">
            </a>
        </li>
        <li>
            <a href="logout.jsp" class="font4"><input type="submit" value="退出" class="button"></a>
        </li>
        <%
        } else {
        %>
        <a href="${pageContext.request.contextPath}/login.html" class="font4"><input type="submit" value="登录" class="button"></a>
        <%
            }
        %>

    </ul>
</header>
<!-- <搜索区> -->
<div class="search-warp">
  <h2 class="font2">读书时刻</h2>
  <input type="text" placeholder="输入要搜索的内容" class="input-box">
    <input type="submit" value="搜索" class="button">
</div>
<!-- 主题内容区 -->
<div class="container">
  <div class="left">
    <h1>好书精选<hr/></h1>
        <div class="row">
            <%
                for (Book book : bookList) {
                    pageContext.setAttribute("book", book);
            %>
      <div class="column">
          <a href="${pageContext.request.contextPath}/detail/${book.id}">
              <img src="images/${book.cover}" class="imga" alt="">
          </a>
        <p class="font1">${book.name}</p>
        <p class="font1">${book.author}</p>
      </div>
        <%
      }
      %>
    </div>
  </div>

  <div class="right">
<h1 class="font3">热门书评</h1>
    <hr/>
    <div>
      <ul class="nav1">
      <li>
        <a href="#">有些流行小说，一直流行到它们成了经典</a>
      </li>
      </ul>
    </div>
    <br/>
    <div>
      <ul class="nav1">
        <li>
          <a href="#">爱是天时地利的迷信</a>
        </li>
      </ul>
    </div>
    <br/>
    <div>
      <ul class="nav1">
        <li>
          <a href="#">《动物博物馆》丨用这本书为孩子建立一个立体纵深的动物知识科学体系</a>
        </li>
      </ul>
    </div>
    <br/>
    <div>
      <ul class="nav1">
        <li>
          <a href="#">150年后，我们依然在谈论什么是自由</a>
        </li>
      </ul>
    </div>
    <br/>
    <div>
      <ul class="nav1">
        <li>
          <a href="#">顺不是孝，自我不意味背叛</a>
        </li>
      </ul>
    </div>
    <br/>
    <div>
      <ul class="nav1">
        <li>
          <a href="#">信息洪流中，我们该如何培养独立思考的能力？</a>
        </li>
      </ul>
    </div>
    <br/>
    <div>
      <ul class="nav1">
        <li>
          <a href="#">读《陪你到时光深处》有感</a>
        </li>
      </ul>
    </div>
    <br/>
    <div>
      <ul class="nav1">
        <li>
          <a href="#">舍勒、情感现象学与“怨恨”——读马克斯·舍勒《道德意识中的怨恨与羞感》</a>
        </li>
      </ul>
    </div>
    <br/>
    <div>
      <ul class="nav1">
        <li>
          <a href="#">1683维也纳之战——源于东方的恐怖和破坏</a>
        </li>
      </ul>
    </div>
    <br/>
  <div>
    <ul class="nav1">
      <li>
        <a href="#">贫乏空间中对时间速率的差异化想象</a>
      </li>
    </ul>
  </div>
    <br/>
  </div>
</div>
<!-- 脚注区 -->
<footer>
  <div class="nowDate">当前时间是：xxxx/xx/xx</div>
</footer>
</body>
<script>
  var divs =  document.getElementsByClassName("nowDate");
  for(var i=0;i<divs.length;i++){
    divs[i].innerText = "当前时间是："+ getNowFormatDate()+"   南京工业职业技术学院";
  }

  //获取当前时间，格式YYYY-MM-DD
  function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "/";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    var h = date.getHours();
    var m = date.getMinutes();
    var s = date.getSeconds();
    if (month >= 1 && month <= 9) {
      month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
      strDate = "0" + strDate;
    }
    var currentdate = year + seperator1 + month + seperator1 + strDate+" "+h+":"+m+":"+s;
    return currentdate;
  }
</script>
</html>
