<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 2018/4/15
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="/UserServlet?method=register" method="post" id="myform">
    <table>
        <tr>
            <td>
                <span style="color: red">*</span>手机号：
            </td>
            <td>
                <input type="text" name="phone" id="phone" placeholder="请输入手机号码" required><span id="pDiv" style="color: red;font-size: 12px"></span>
            </td>
        </tr>
        <tr>
            <td>
                <span style="color: red">*</span>验证码：
            </td>
            <td>
                <input type="text" name="checkCode" id="checkCode" required><span id="cDiv" style="color: red;font-size: 12px"></span>
            </td>
        </tr>
        <tr>
            <td>
                <span style="color: red">*</span>校验码：
            </td>
            <td>
                <input type="text" name="verifyCode" id="verifyCode" required><span id="vDiv" style="color: red;font-size: 12px"></span>
            </td>
        </tr>
        <tr>
            <td>
                <span style="color: red">*</span>设置密码：
            </td>
            <td>
                <input type="password" name="uPassword" id="pwd" required><span id="wDiv" style="color: red;font-size: 12px"></span>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="注册" id="submit">
            </td>
        </tr>
    </table>
</form>

<%--js脚本部分--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        <%--加载初始化页面--%>
        $(function () {

           //绑定失去焦点事件
            $("#phone").blur(checkPhone);
            $("#checkCode").blur(chCode);
            $("#verifyCode").blur(verCode);
            $("#pwd").blur(checkPwd);

           //提交表单时，调用验证函数，若全部返回true则可以提交，否则不能提交
            $("#myform").submit(function () {
                var flag = true;
                if (!checkPhone()) flag = false;
                if (!chCode()) flag = false;
                if (!verCode()) flag = false;
                if (!checkPwd()) flag = false;
                return flag;
            });



            function chCode() {

            }










           /* $("#submit").click(function () {
                var p = document.getElementById("phone");
                if(p.validity.valueMissing == true){
                    p.setCustomValidity("xxxxxxx");
                    return false;
                }else if(p.validity.patternMismatch == true){
                    p.setCustomValidity("yyyyyy");
                }
            });*/




        });

        //验证手机号码
        function checkPhone() {
            var phone = $(this).val();
            var $pDiv = $("#pDiv");
            var p = document.getElementById("phone");
            //正则判断
            var regPhone = /^1[3578]\d{9}$/;
            if(regPhone.test(phone) == false){
                //$pDiv.html("手机号码不正确，请重新输入");
                p.setCustomValidity("sdfasdgfas");
                return false;
            }
//            p.setCustomValidity("sdfasdgfas");
        }

    </script>





    <%--<script type="text/javascript">--%>
    <%--<c:if test="${sessionScope.row <=0 }">--%>
            <%--alert("用户已存在，请重新注册！！！")--%>
    <%--</c:if>--%>
    <%--</script>--%>
</body>
</html>
