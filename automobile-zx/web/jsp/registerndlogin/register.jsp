<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/10
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

    <style>
        .lunbo {
            opacity: 1;
            height: 100%;
            margin-top: -20px;
        }

        .minecon {
            margin-top: -40%;
            height: 100%;
        }

        .lunbozc {
            height: 50%;
            z-index: 110;
            opacity: 0.9;
            background: white;
        }

        .newlogti {
            font-size: 30px;
            color: #eab519;
            font-weight: 400;
            text-align: center;
            margin-top: 2%;
            padding-bottom: 2%;
        }

        .newlogtext {
            text-align: center;
            margin-top: 8%;
        }

    </style>
    <script>
        $(document).ready(function () {
            $(".lunbozc").click(function () {
                $(".lunbo").animate({"opacity": "0.3"}, 600);
            });
            $(".lunbo").click(function () {
                $(".lunbo").animate({"opacity": "1"}, 600);
            })
        })
    </script>
</head>
<%@include file="/publictop.jsp" %>
<body>

<div id="myCarousel" class="carousel slide lunbo">
    <!-- 轮播（Carousel）指标 -->
    <%-- <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0"
             class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
     </ol>--%>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="/images/img/fj1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="/images/img/fj2.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img src="/images/img/bz.jpg" alt="Third slide">
        </div>
    </div>
</div>


<div class="container minecon">
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4 col-xs-12 lunbozc">


            <div class="col-lg-12 newlogti">
                <p>注册</p></div>

            <form action="/UserServlet?method=register" method="post" class="form-horizontal" role="form" id="myform">
                <div class="form-group input-lg">
                    <label for="firstname" class="col-sm-3 control-label">手机号</label>
                    <div class="col-sm-9">
                        <input type="text" name="phone" class="form-control" id="firstname" placeholder="请输入手机号" required>
                        <span id="pDiv" style="color: red;font-size: 12px;float:right"></span>
                    </div>
                </div>
                <div class="form-group input-lg">
                    <label for="lastname" class="col-sm-3 control-label">验证码</label>
                    <div class="col-lg-9">
                        <div class="input-group">
                            <input type="text" name="checkCode" class="form-control" id="lastname" required>
                            <span class="input-group-btn" id="sp">
                                <button class="btn btn-default" type="button" id="huoqu">获取</button>
                            </span>

                        </div><!-- /input-group -->
                        <span id="cDiv" style="color: red;font-size: 12px;float: right"></span>
                    </div><!-- /.col-lg-6 -->
                </div>

                <div class="form-group input-lg">
                    <label for="firstname" class="col-sm-3 control-label">密码</label>
                    <div class="col-sm-9">
                        <input type="password" name="uPassword" class="form-control" id="passwo" placeholder="请设置密码" required>
                        <span id="wDiv" style="color: red;font-size: 12px;float: right"></span>
                    </div>
                </div>
                <div class="form-group input-lg newlogtext">

                    <div class="col-xs-12">
                        <input type="submit" class="btn btn-default" id="submit" value="注册" >
                    </div>
                </div>

            </form>


        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function () {
        $('#myCarousel').carousel({interval: 5000, pause: false});//每隔5秒自动轮播
    });

    $(function () {
        // 初始化轮播
        $(".start-slide").click(function () {
            $("#myCarousel").carousel('cycle');
        });
        // 停止轮播
        $(".pause-slide").click(function () {
            $("#myCarousel").carousel('pause');
        });
        // 循环轮播到上一个项目
        $(".prev-slide").click(function () {
            $("#myCarousel").carousel('prev');
        });
        // 循环轮播到下一个项目
        $(".next-slide").click(function () {
            $("#myCarousel").carousel('next');
        });
        // 循环轮播到某个特定的帧
        $(".slide-one").click(function () {
            $("#myCarousel").carousel(0);
        });
        $(".slide-two").click(function () {
            $("#myCarousel").carousel(1);
        });
        $(".slide-three").click(function () {
            $("#myCarousel").carousel(2);
        });
    });




    /*---------------------以下为表单验证部分-----------------------------*/

    <%--加载初始化页面--%>
    $(function () {

        //绑定失去焦点事件
        $("#firstname").blur(checkPhone);
        $("#passwo").blur(checkpasswo);
        $("#lastname").blur(checklastname);

        //提交表单时，调用验证函数，若全部返回true则可以提交，否则不能提交
        $("#myform").submit(function () {
            var flag = true;
            if (!checkPhone()) flag = false;
            if (!checkpasswo()) flag = false;
            if (!checklastname) flag = false;
            return flag;
        });
    });


    //验证手机号码
    function checkPhone() {
        var phone = $(this).val();
        var $pDiv = $("#pDiv");
        //正则判断
        var regPhone = /^1[3578]\d{9}$/;
        if (regPhone.test(phone) == false && phone != "") {
            $pDiv.html("手机号码不正确，请重新输入");
            return false;
        }
        if(phone == ""){
            $pDiv.html("手机号不能为空");
            return false;
        }

        $.post(
            "${pageContext.request.contextPath}/UserServlet",{"method":"login","phone":phone},function (data){
                //alert(data);
                if(data != null){
                    $pDiv.html("用户已存在！！！");
                    return false;
                }
            },"json");


        $pDiv.html("");
        return true;
    }

    //验证密码
    function checkpasswo() {
        var passwo = $(this).val();
        var $wDiv = $("#wDiv");
        if(passwo.length > 6){
            $wDiv.html("密码长度不为超过6位数字");
            return false;
        }

        if (passwo == "") {
            $wDiv.html("密码不能为空");
            return false;
        }

        $wDiv.html("");
        return true;
    }

    //验证短信
    function checklastname() {
        var lastname = $("#lastname").val();
        var $cDiv = $("#cDiv");
        //正则判断
        if (lastname != json && cDiv != "") {
            $cDiv.html("请填写正确验证码");
            return false;
        }
        if(lastname == ""){
            $cDiv.html("验证码不能为空");
            return false;
        }
        $cDiv.html("");
        return true;
    }



   //自定义判空提示
    $(function () {
        $("#submit").click(function () {
            //判断手机号为空情况下的提示信息
            var p = document.getElementById("firstname");
            if(p.validity.valueMissing == true){
                p.setCustomValidity("手机号不能为空")
            }else {
                p.setCustomValidity("");
            }

            //判断验证码为空情况下的提示信息
            var c = document.getElementById("lastname");
            if(c.validity.valueMissing == true){
                c.setCustomValidity("验证码不能为空")
            }else {
                c.setCustomValidity("");
            }

            //判断密码为空情况下的提示信息
            var m = document.getElementById("passwo");
            if(m.validity.valueMissing == true){
                m.setCustomValidity("密码不能为空")
            }else {
                m.setCustomValidity("");
            }
        });
    });


    //倒计时函数
    var time = 59;
    var id;
    var count = 0;
    function timeTurn() {
        var content = "<button class=\"btn btn-default\" type=\"button\" id=\"huoqu\">"+time+"秒"+"</button>";
        $("#sp").html(content);
        if(time == 0){
            count++;
            content = "<button class=\"btn btn-default\" type=\"button\" id=\"huoqu\">获取</button>";
            $("#sp").html(content);
            time = 59;
            clearInterval(id);
            if(count<2){
                $("#huoqu").click(huoqu);
            }
        }else {
            time--;
        }
    }

    //验证短信
    var json = "";
    function huoqu(){
        $.post("${pageContext.request.contextPath}/MsmServlet",{"method":"sendSms","phone":$("#firstname").val()},function(result){
            json = result;
        });
     
        id = setInterval("timeTurn()",1000);
    }
  
    $(function () {
        $("#huoqu").click(huoqu);
    })


</script>
</body>
<%@include file="/publicbot.jsp" %>
</html>
