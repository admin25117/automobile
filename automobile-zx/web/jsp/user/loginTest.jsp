<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 2018/4/15
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="/UserServlet?method=login" method="post">
    手机号：<input type="text" name="phone"><br><span id="span"></span>
    验证码：<input type="text" name="checkCode"><br>
    校验码：<input type="text" name="verifyCode"><br>
    <input type="submit" value="登录">

    <%--<script type="text/javascript">--%>
        <%--<c:if test="${sessionScope.userByPhone == null }">--%>
        <%--alert("手机号不正确，请重新输入！！！")--%>
        <%--</c:if>--%>
    <%--</script>--%>
</form>

</body>
</html>
