<%@ page import="entiy.User" %><%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2019/9/25
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        header{
            height: 80px;
            background: rgba(130, 177, 255, 0.9) fixed;
            display:flex;
            align-items:center;
            justify-content: space-between;
            padding-left: 10px;
            padding-right: 10px;
        }

        body {
            background:url(/images/background.png);
            background-position:center;
        }

        .container{
            width: 60%;
            margin:0 auto;
            display: flex;
            padding: 5px 5px 5px 5px;
        }
        .left{
            flex:0 0 55%;
            background: rgba(144,202,249,0.8);
            border:2px solid #42a5f5;
            height:100%;
            padding:10px 10px 10px 10px;
        }

        .lower-left{
            flex:0 0 40%;
            background: rgba(144,202,249,0.8);
            border:1px solid #42a5f5;
            height:100%;
            padding:10px 10px 10px 10px;
        }

        .right{
            flex:0 0 38%;
            height:100%;
            margin-left:15px;
            background: rgba(144,202,249,0.8);
            border:2px solid #42a5f5;
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

        .button1 {
            list-style: none;
            border: none;
            color: white;
            padding: 8px 8px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 5px;
            border-radius: 12px;
            /*box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);*/
        }

        .profile {
            width: 200px;
            height: 200px;
            border-radius: 5px;
        }

        .iconfont{
            font-family:"iconfont" !important;
            font-size:95px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }

        .iconfont1{
            font-family:"iconfont" !important;
            font-size:50px;
            font-style:normal;
            -webkit-font-smoothing: antialiased;
            /*-webkit-text-stroke-width: 0.2px;*/
            -moz-osx-font-smoothing: grayscale;
            padding-top: 10px;
            padding-left: 20px;
        }

        @font-face {
            font-family: 'iconfont';  /* project id 1432366 */
            src: url('//at.alicdn.com/t/font_1432366_jb7sasvb34j.eot');
            src: url('//at.alicdn.com/t/font_1432366_jb7sasvb34j.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1432366_jb7sasvb34j.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1432366_jb7sasvb34j.woff') format('woff'),
            url('//at.alicdn.com/t/font_1432366_jb7sasvb34j.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1432366_jb7sasvb34j.svg#iconfont') format('svg');
        }
        .row{
            display:flex;
            flex-wrap:wrap;
            padding:5px 5px 5px 5px;
        }
        .column{
            color: white;
            flex:0 0 20%;
            height:100%;
            border:2px;solid:black;
            border-radius: 10px;
            margin:5px 5px 5px 15px;
        }
        .column1{
            flex:0 0 100%;
            height:100%;
            border:2px;solid:black;
            border-radius: 10px;
            margin:5px 5px 5px 15px;
        }
        .font1{
            font-size: 20px;
        }
        .item {
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
<header>
<%--    顶端--%>
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
        <a href="${pageContext.request.contextPath}/sign_in.html" class="font4"><input type="submit" value="登录" class="button"></a>
        <%
            }
        %>
    </ul>
</header>
<%--主要内容--%>
<div class="container">
    <div class="left">
        <div class="row">
           <div class="column">
        <img src="images/${user.avatar}" alt="" class="profile">
        <h2>${user.nickname}</h2>
        <div>
            <p>常居：江苏南京</p>
            <p>电话：${user.account}</p>
            <p>2017-09-01加入</p>
        </div>
        <div class="item">
            <ul class="nav1">
                <li>留言板</li>
            </ul>

            <label>
                <textarea cols="60" rows="4"></textarea>
            </label>
            <div>
                <input type="submit" value="留言" class="button">
            </div>
        </div>
            <br>
            <div class="item">
                <ul class="nav1">
                    <li>消息</li>
                </ul>
                <p >一共有10条未读消息</p>
            </div>

               <div class="item">
                   <ul class="nav1">
                       <li>相册</li>
                   </ul>
                   <p >目前存有10张图片。</p>
               </div>

               <div class="item">
                   <ul class="nav1">
                       <li>您目前的好友数量：</li>
                   </ul>
                   <p>10位</p>
               </div>
        </div>
        </div>
    </div>

    <div class="right">
        <div class="row">
            <div class="column">
            <div class="button1">
        <i class="iconfont">&#xe623;</i>
                </br>
        <a class="font1">写书评</a>
            </div>
            </div>

            <div class="column">
                <div class="button1">
                    <i class="iconfont">&#xe60c;</i>
                    </br>
                    <a class="font1">写文章</a>
                </div>
            </div>
            <div class="column">
                <div class="button1">
                    <i class="iconfont">&#xe6f7;</i>
                    </br>

                    <a class="font1">写想法</a>
                </div>
            </div>

            <div class="column1">
                <div class="button1">
                    <i class="iconfont1">&#xe605;</i>
                    <a class="font1">我的稍后答</a>
                </div>
            </div>

            <div class="column1">
            <div class="button1">
                <i class="iconfont1">&#xe66b;</i>
                <a class="font1">我的草稿</a>
            </div>
        </div>

    </div>
        <div class="lower-left">
            <div class="row">
                <div class="column">
                    <div class="button1">
                        <i class="iconfont1">&#xe61a;</i>
                        </br>
                        <a class="font1">Live</a>
                    </div>
                </div>

                <div class="column">
                    <div class="button1">
                        <i class="iconfont1">&#xe60b;</i>
                        </br>
                        <a class="font1">分享</a>
                    </div>
                </div>

                <div class="column">
                    <div class="button1">
                        <i class="iconfont1">&#xe64a;</i>
                        </br>
                        <a class="font1">支付</a>
                    </div>
                </div>

                <div class="column1">
                    <div class="button1">
                        <a class="font1">我的收藏</a>
                    </div>
                </div>

                <div class="column1">
                    <div class="button1">
                        <a class="font1">我关注的讨论</a>
                    </div>
                </div>
                <div class="column1">
                    <div class="button1">
                        <a class="font1">我的邀请</a>
                    </div>
                </div>

                <div class="column1">
                    <div class="button1">
                        <a class="font1">站务服务中心</a>
                    </div>
                </div>
        </div>
        </div>

    </div>

</div>
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
