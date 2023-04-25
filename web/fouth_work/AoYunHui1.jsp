<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/4
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Arrays" %>

<%! public boolean isSame(String[] a, String[] b) {
    Arrays.sort(a);
    Arrays.sort(a);
    return Arrays.equals(a, b);
}
%>

<HTML>
<% String answer[] = {"B", "D"};
    request.setCharacterEncoding("utf-8");
    String itemName[] = request.getParameterValues("item");
    out.print("<br>你的答案是:");
    for (int k = 0; k < itemName.length; k++) {
        out.println(" " + itemName[k]);
    }
    if (isSame(itemName, answer)) {
        out.print("<br>回答正确！");
    } else {
        out.print("<br>回答不正确！");
    }
%>
</HTML>