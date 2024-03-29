<%@ page import="entiy.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2019/9/26
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
    <%
        User user = (User) session.getAttribute("user");
        pageContext.setAttribute("user", user);
    %>
    <!-- 导航 -->
    <ul class="nav">
        <li>
            <a href="/index">首页</a>
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

<ul>
    <%
        if (user != null) {
    %>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout.jsp" class="font4"><input type="submit" value="退出" class="button"></a>
    </li>
    <%
    } else {
    %>
    <a href="${pageContext.request.contextPath}/login.html" class="font4"><input type="submit" value="登录" class="button"></a>
    <%
        }
    %>
</ul>