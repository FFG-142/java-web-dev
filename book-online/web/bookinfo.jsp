<%@ page import="entiy.User" %>
<%@ page import="entiy.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2019/9/26
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<style type="text/css">
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
        background: url(/images/background.png) center;
    }
</style>

</head>
<body>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>
<div>
<%--<%--%>
<%--    for(Book book:bookList){--%>
<%--    pageContext.setAttribute("book",book);--%>
<%--    }--%>
<%--    %>--%>
    <img src="images/${book.cover}" alt=""></a>
    <p class="font1">${book.name}</p>
    <p class="font1">${book.author}</p>


</div>














</body>
</html>
