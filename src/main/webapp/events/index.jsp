<%@ page import="entity.Event" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: MHAMDI
  Date: 1/18/2022
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello</h1>

<%
    ArrayList<Event> events = (ArrayList<Event>)request.getAttribute("events");

    for(Event event : events) {
%>
        <div><%= event.getTitle() %></div>
<% } %>
</body>
</html>
