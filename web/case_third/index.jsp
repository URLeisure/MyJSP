<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/23
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.shi.mapper.UserDao" %>
<%@ page import="com.shi.model.User" %>

<%
    int currentPage = 1;
    if (request.getParameter("page") != null) {
        currentPage = Integer.parseInt(request.getParameter("page"));
    }

    UserDao userDao = new UserDao();
    List<User> userList = userDao.getUsers(currentPage);
    List<User> userList1 = userDao.getUsers1();
    int totalPageCount = userDao.getTotalPageCount();
%>
<!DOCTYPE html>
<html>
<head>
    <title>数据库分页-用户列表</title>
    <style>
        table {
            margin: 0 auto;
        }

        .pagination {
            text-align: center;
        }
    </style>
</head>
<body>

<table>
    <h2 style="text-align: center;">用户列表</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <!-- 其他用户属性列... -->
        </tr>
        <% for (User user : userList) { %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getUsername() %></td>
            <!-- 其他用户属性列... -->
        </tr>
        <% } %>
    </table>

    <%-- 显示分页链接 --%>
    <div class="pagination">
        <% if (currentPage > 1) { %>
        <a href="index.jsp?page=<%= currentPage - 1 %>">上一页</a>
        <% } %>
        <% if (currentPage < totalPageCount) { %>
        <a href="index.jsp?page=<%= currentPage + 1 %>">下一页</a>
        <% } %>
    </div>
</body>
</html>
