
<%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2019/10/2
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="entiy.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="entiy.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        h2, h3 {
            color: white;
        }
        body {
            background:url(/images/background.png);
            background-position:center;
        }

        .search-btn img {
            width: 50%;
            height: 50%;
        }
        .col-3 {
            flex: 0 0 22%;
        }
        .col-4 {
            flex: 0 0 22%;
            background: rgba(144,202,249,0.8);
            margin-top:-80px;
            margin-left:100px;
            border:2px;solid:black;
        }
        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }
        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }
        .col-6 {
            height: 400px;
            padding-right: 10px;
        }
        .col-6 img {
            width: 80%;
            height: 80%;
            border-radius: 20px;
        }
        .col-8 {
            flex: 0 0 66%;
            background: rgba(144,202,249,0.8);
            height: 500px;
            border:2px;solid:black;
            margin-left:100px;
        }
        .font{
            font-size:20px;
        }
        .item {
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        .col-9 {
            flex: 0 0 40%;
            background: rgba(144,202,249,0.8);
            margin-left:-350px;
        }
    </style>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");
    pageContext.setAttribute("book", book);
%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${book.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${book.cover}" alt="">
                </div>
                <div class="col-3 font">
                    <p>作者:${book.author}</p>
                </div>
            </div>
        </div>
        <div class="col-4">
            <h3>评论区</h3>
            <hr>
            <div class="row">
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
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-9">
            <h3>其他分类</h3>
            <img src="${pageContext.request.contextPath}/images/book.png" alt="">
        </div>
    </div>

</div>




</body>
</html>
