<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/9
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

    <title>登录</title>


    <style>
        .lanbo {
            margin-top: -20px;
            width: 100%;
            height: 90%;
            background: url("/images/img/lanbo.jpg") no-repeat;
            background-position: -150px -750px;
        }

        .lanbo:hover .inputwxy {
            opacity: 0.9;
            transition: 600ms;
        }

        .inputwxy {
            background: white;
            opacity: 0;
            height: 100%;
            padding-top: 12%; /*margin-top: 10%;*/
        }

        .newloga {
            text-align: center;
            margin-top: 8%;
        }

        .newlogb {
            padding-left: 14%;
            padding-top: 4%;
        }

        .newlogti {
            text-align: center;
            padding-bottom: 4%;
            font-size: 30px;
            color: dodgerblue;
            font-weight: 400;
        }

        /*.footpi{
            text-align: center;
            padding-top:4%;
        }*/
        .forget {
            text-align: right;
            padding-top: 3%;
        }

        /*.newhr{
            width:100%;         //分割线
            margin-top: 2%;
        }*/
    </style>
</head>

<%@include file="/publictop.jsp" %>
<body>
<div class="lanbo">
    <div class="container">
        <div class="row myrow">


            <div class="col-lg-4 col-sm-8 inputwxy ">

                <div class="col-lg-12 newlogti">
                    <p>登录</p></div>

                <form action="/CityServlet?method=findAll" method="post" class="form-horizontal" role="form"
                      id="myform" onsubmit="return check()">
                    <div class="form-group input-lg">
                        <label for="firstname" class="col-sm-3 control-label">手机号</label>
                        <div class="col-sm-9">
                            <input  type="text" name="phone" class="form-control" id="firstname" placeholder="请输入手机号"
                                   required>
                            <span id="pDiv" style="color: red;font-size: 12px;float:right;"></span>
                        </div>
                    </div>
                    <div class="form-group input-lg">
                        <label for="lastname" class="col-sm-3 control-label" id="passwo">密码</label>
                        <div class="col-sm-9">
                            <input type="password" name="password" class="form-control" id="lastname" placeholder="密码"
                                   required>
                            <span id="wDiv" style="color: red;font-size: 12px"></span>
                        </div>
                    </div>
                    <div class="forget col-lg-12"><a href="">忘记密码</a></div>

                    <div class="form-group input-lg newlogb">
                        <div class="col-sm-offset-2 col-sm-10 ">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">请记住我
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group input-lg newloga">

                        <div class="col-sm-12">
                            <input type="submit" class="btn btn-default" id="submit" value="登录">
                        </div>
                    </div>
                </form>
                <div class="col-lg-12 newloga">
                    <a href="/jsp/registerndlogin/register.jsp">还不是会员?立即注册</a></div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    var userFlag = true;
    var pwdFlag = true;
    /*---------------------以下为表单验证部分-----------------------------*/
    <%--加载初始化页面--%>
    $(function () {
        //绑定失去焦点事件
        $("#firstname").blur(checkPhone);
        $("#lastname").blur(checkpasswo);
    });


    function check() {
        if(userFlag && pwdFlag){
            return true;
        }
        return false;
    }


    //验证手机号码
    function checkPhone() {
        userFlag = true;
        var phone = $('#firstname').val();
        var $pDiv = $("#pDiv");
        //正则判断
        var regPhone = /^1[3578]\d{9}$/;
        if (regPhone.test(phone) == false && phone != "") {
            $pDiv.html("手机号码不正确，请重新输入");
            userFlag = false;
        }
        if (phone == "") {
            $pDiv.html("手机号不能为空");
            userFlag = false;
        }

        $.post(
            "${pageContext.request.contextPath}/UserServlet", {"method": "login", "phone": phone}, function (data) {
                //alert(data);
                if (data == null) {
                    $pDiv.html("用户不存在！！！");
                    userFlag = false;
                }
            }, "json");

        $pDiv.html("");
    }

    //验证密码
    function checkpasswo() {
        pwdFlag = true;
        var phone = $("#firstname").val();
        var passwo = $('#lastname').val();
        var $wDiv = $("#wDiv");
        if (passwo.length > 6) {
            $wDiv.html("密码长度不为超过6位数字");
            pwdFlag = false;
        }
        if (passwo == "") {
            $wDiv.html("密码不能为空");
            pwdFlag = false;
        }

        $.post(
            "${pageContext.request.contextPath}/UserServlet", {
                "method": "login",
                "phone": phone,
                "passwo": passwo
            }, function (data) {

                if (data == null) {
                    pwdFlag = false;
                }

                if (data.uPassword != passwo) {
                    $wDiv.html("密码不正确！！！");
                    pwdFlag = false;
                }


            }, "json");

        $wDiv.html("");
    }


    //自定义判空提示
    $(function () {
        $("#submit").click(function () {
            //判断手机号为空情况下的提示信息
            var p = document.getElementById("firstname");
            if (p.validity.valueMissing == true) {
                p.setCustomValidity("手机号不能为空")
            } else {
                p.setCustomValidity("");
            }

            /*//判断验证码为空情况下的提示信息
            var c = document.getElementById("lastname");
            if (c.validity.valueMissing == true) {
                c.setCustomValidity("验证码不能为空")
            } else {
                c.setCustomValidity("");
            }*/

            //判断密码为空情况下的提示信息
            var m = document.getElementById("passwo");
            if (m.validity.valueMissing == true) {
                m.setCustomValidity("密码不能为空")
            } else {
                m.setCustomValidity("");
            }
        });
    });


</script>
</body>


<%@include file="/publicbot.jsp" %>
</html>
