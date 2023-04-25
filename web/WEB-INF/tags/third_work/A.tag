<%@ tag import="java.util.HashSet" %>
<%@ tag import="java.util.regex.Pattern" %>
<%@ tag import="java.util.regex.Matcher" %>
<%@ attribute name ="okString" required="true" type="java.lang.String" %>
<%@ variable name-given="words" variable-class="java.util.HashSet " scope="AT_BEGIN" %>
<%
    HashSet<String> set = new HashSet<String>();
    /*
    1. HashSet是一个基于HashMap实现的集合类，它继承了AbstractSet并实现了Set接口。
    2. HashSet可以存储不重复的元素，包括null值。它使用equals()和hashCode()方法来判断元素是否相等和计算元素的哈希值。
    3. HashSet是无序的，也就是说不会记录元素插入的顺序。它内部使用一个HashMap对象来存储元素，元素作为HashMap的键，而HashMap的值都是一个固定的对象。
    4. HashSet不是线程安全的，如果多个线程同时修改HashSet，可能会导致不确定的结果。要在多线程访问时显式同步对HashSet的并发访问，可以使用Collections.synchronizedSet()方法来包装HashSet。
    5. HashSet有一些常用的方法，如add(), remove(), contains(), size(), isEmpty(), clear(), iterator()等. 它们分别用于添加、删除、判断、获取、清空和遍历HashSet中的元素。
     */
    Pattern pattern;
    Matcher matcher;
    String regex = "[a-zA-Z]+";
    pattern = Pattern.compile(regex);
    matcher = pattern.matcher(okString);
    while(matcher.find()){
        String str = matcher.group();
        set.add(str);
    }

    jspContext.setAttribute("words",set);
%>