<%@ page import="java.util.Map" %><%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Statistic</title>
</head>
<body>
<p><b> Hello,

    <%
        String name = (String) request.getAttribute("name");
        String lastName = (String) request.getAttribute("surname");
        Integer age = (Integer) request.getAttribute("age");
        out.print(name + " ");
        out.print(lastName + ", ");
        out.print(age + "<br>");

    %>
</b></p>

<p><b> Statistic </b></p>

<%
    Map<Integer, Map<String, Integer>> statistic = (Map<Integer, Map<String, Integer>>) request.getAttribute("statistic");
    for (Integer n : statistic.keySet()) {
        out.print("<p>");
        out.print("Question № " + n + "<br>");
        Map<String, Integer> question = statistic.get(n);
        for (String key : question.keySet()) {
            out.print("<br>");
            out.print(key + " - " + question.get(key));
        }
        out.print("</p>");
    }
%>

</body>
</html>
