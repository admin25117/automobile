<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 2018/4/14
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    注册成功

    <c:if test="${requestScope.all != null}">
        <c:forEach items="${requestScope.all}" var="area" varStatus="status" begin="0">
            ${area.aName}
            <br>
            ${area.id}
        </c:forEach>
    </c:if>


</body>
</html>
