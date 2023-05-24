<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/5/24
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Subtotal2</title>
</head>
<body>
<div align="center">
  <h3>3的整数倍:</h3>

  <% int[] nums0 = (int[]) request.getAttribute("nums0");
    for (int num : nums0) { %>
  <%= num %>,
  <% } %>


  <h3>模3余数为1的数:</h3>

  <% int[] nums1 = (int[]) request.getAttribute("nums1");
    for (int num : nums1) { %>
  <%= num %>,
  <% } %>


  <h3>模3余数为2的数:</h3>

  <% int[] nums2 = (int[]) request.getAttribute("nums2");
    for (int num : nums2) { %>
  <%= num %>,
  <% } %>

</div>
</body>
</html>
