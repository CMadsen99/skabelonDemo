<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 06-03-2020
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Oversigt</title>
</head>
<body>

<h1>Oversigt over alle kunder</h1>

<br>
<br>
<br>

<c:forEach var="element" items="${sessionScope.users}">

    ${element}
    <br>
    <br>

</c:forEach>

<br>
<h3>Number of customers: ${sessionScope.counter}</h3>
<br>

</body>
</html>
