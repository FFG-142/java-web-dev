<%@ page import="entiy.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2019/9/26
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
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