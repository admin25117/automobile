<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/8
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<script type="text/javascript" src="jquery-2.1.4/jquery.js"></script>
<link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>

--%>
<link rel="shortcut icon" href="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524294931515&di=7adaf52f2577598ceeeba1fa1eded2f9&imgtype=0&src=http%3A%2F%2Ftx.haiqq.com%2Fuploads%2Fallimg%2F170506%2F051FI3X-1.jpg" type="/image/V.png" />

<style>

    /*body{width:1899px;}*/
 .mynavbar1 {
        background: black;
        color: white;
        font-size: 18px;
        border-radius: 0px;
    }

    .tittlehi {
        float: left;
        margin-top: 1.3%;
        color: #eab519;
        font-size: 26px;
    }

    .yellowUp {
        background: #eab519;
        height: 3px;
        width: 100%;

    }

    .yellow1 {
        margin-top: -1px;
        margin-bottom: -1%;
        width: 15%;
        height: 52px;
    }

    .login {
        margin-top: 1.1%;
        color: #eab519;
    }
    /*.loginText{height:20px;
     width:32px;
     color:#eab519;}*/
    .loginText1:hover {

        text-decoration: underline;
        cursor: pointer;
    }

    .tele {

        padding-top: 1%;
        padding-bottom: 1%;
    }

    .tel {
        font-size: 18px;
    }

    .tele:hover {
        cursor: pointer;
    }

    .abss {
        border-radius: 2px;
        text-align: center;
        height: 81px;
        width: 36px;
        position: fixed;
        right: 0px;
        background: black/*#1B2B3B*/;
        color: white;
        z-index: 999;
    }

    .abss:hover {
        background: #eab519;

    }

    .absolute1 {
        top: 200px;

    }

    .absolute2 {
        top: 282px;

    }

    .absolute3 {
        height: 97px;
        top: 364px;

    }

    .abImg {
        /*width:18px;
        height:18px;*/
        margin-left: 8px;
        margin-top: 13px;
        width: 20px;
        height: 20px;
        background: url("/images/zuchelist.png") no-repeat;

    }

    .abss p {
        width: 35px;
        height: 40px;
        padding-left: 7.8px;
        padding-right: 6px;
    }

    .ab1Img {
        background-position: -443px -135px;
    }

    .ab2Img {
        background-position: -582px -48px;
    }

    .ab3Img {
        background-position: -563px -48px;
    }

    .abso {
        border-radius: 2px;
        position: fixed;
        height: 42px;
        width: 36px;
        background:black /*#1B2B3B*/;
        right: 0px;
        bottom: 4px;
        z-index:999;
    }

    .abso2 {
        bottom: 47px;
    }

    .abso3 {
        bottom: 90px;
    }

    .absoImg {
        height: 20px;
        width: 20px;
        margin: 11px auto;
        background: url("/images/zuchelist.png") no-repeat;
    }

    .abso1Img {
        background-position: -451px -50px;
    }

    .abso2Img {
        background-position: -501px -50px;
    }

    .abso3Img {
        background-position: -524px -50px;
    }

    .abso:hover {
        background: #eab519;

    }
    .abs3in{
        border:dimgray 1px solid;
        height:100px;
        width:100px;
        margin-left: -103px;
        margin-top:-83px;
        background:url("/images/shoujiban.png")no-repeat;
        background-size: 100% 100%;
display:none;
    }
    .absolute3:hover .abs3in{
        box-shadow:3px 3px 20px #888888;
        display:block;
        transition:300ms;
    }



    /*变换背景*/
    .colorc {
        background: aliceblue;
        width: 15px;
        height: 15px;
        border-bottom: 35px solid white;
        border-right: 35px solid transparent;
        box-shadow: black 4px 3px 120px;

        position: fixed;
        right: -2px;
        top: -1px;
        z-index: 110;
        opacity: 0;

        /* animation: clasic1 5s infinite;*/
    }

    /*.colorc:hover{transition:2500ms;
          border-bottom: 65px solid white;
          border-right: 80px solid transparent;*/
    /* border-bottom: 2200px solid white;
     border-right: 3500px solid transparent;
     box-shadow: dimgray 4px 3px 120px;*/

    /*   body{background:steelblue;}*/
    /*aliceblue*/

    .eblue {
        position: fixed;
        top: 62px;
        right: 104px;
        width: 15px;
        height: 15px;
        border-radius: 50%;
        background: aliceblue;
        border: black 1px solid;
        z-index: 111;
        cursor: pointer;
    }

    .bla {
        position: fixed;
        top: 62px;
        right: 54px;
        cursor: pointer;
        width: 15px;
        height: 15px;
        border-radius: 50%;
        z-index: 111;
        background: #FFFFD0;
        border: black 1px solid;
        color: lightgray;
    }

    .wwhite {
        position: fixed;
        top: 62px;
        right: 80px;
        cursor: pointer;
        width: 15px;
        height: 15px;
        border-radius: 50%;
        background: white;
        border: black 1px solid;
        z-index: 111;
    }

    /*@keyframes clasic1 {
        0%{opacity: 1;}

        100% {
            opacity: 0.5;
           !* border-bottom: 2100px solid white;
            border-right: 4200px solid transparent;*!
            box-shadow: dimgray 4px 3px 120px;

            border-bottom-width:2100px;
            border-bottom-style: solid;
            border-bottom-color:white;
            border-right-width:4200px;
            border-right-style: solid;
            border-right-color:transparent;
        }



    }*/
    .leftcaidan {

        opacity: 0.9;
    }

    .rright {
        background: white;
        opacity: 0.9;
    }
    .content{background: white;
        opacity: 0.9;}
    .right_father{background: white;
        opacity: 0.9;}
    .gezi{background: white;
        opacity: 0.9;}
    .absolute2left{
        /* border-radius: 5px;*/
        height: 221px;
        width: 290px;
        position: fixed;
        right: 52px;
        background:white/*#1B2B3B*/;

        z-index: 999;
        top:242px;
        opacity:0.9;
        border:dimgray 1px solid;
        display:none; color:black;

        box-shadow:8px 8px 13px #888888;
    }
    .ajaxright{width:100%;height:auto; text-align: center;padding-top: 10px;
        font-size: 18px;
        border-bottom:1px solid lightgray;
        font-weight: 600;
        margin-bottom: 3px;
    }
    .absmore{
       color:white;
        float:right;
        margin-right: 10px;
        margin-top:34px;
        background:#eab519;
        padding:0px 5px;
        font-weight:600;
    }
    .absmore:hover{
        text-decoration: none;
        color:white;

    }


                          .arrow {
                              width:0;
                              height:0;
                              font-size:0;
                              border:solid 10px;
                              border-color: transparent transparent transparent white;
                              z-index: 999;
                              top:312px;
                              opacity:0.9;
                              position: fixed;
                              right: 34px;
                              display:none;

                          }


</style>
<%--换背景的js代码--%>
<script type="text/javascript">
   $(document).ready(function() {
       $(".absmore").click






        //变蓝
        $(".eblue").click(function () {
            $(".colorc").css({opacity:"1",backgroundColor: "#F0F8FF"})
            /*   $(".eblue").animate(
                   /!*$(".colorc").css({"animation":" clasic1 4s","background":"#F0F8FF"}),*!/
                   $(".colorc").css({"background":"black","opacity":"1"}).delay(3000),1000,
                   $("body").css({"background":"#F0F8FF","color":"black"})
               ).delay(2000)*/

            $('.colorc').animate({
                borderBottomWidth: "2100px", borderRightWidth: "4000px", opacity: "0.9"
                , backgroundColor: "#F0F8FF"
            }, 2000, function () {
                $("body").css({"background": "#F0F8FF", color: "black"})
                $(".colorc").css({borderBottomWidth: "35px", borderRightWidth: "45px", opacity: "0"
                    })
            });

        })
        ;



        //变黄


        $(".bla").click(function () {
            $(".colorc").css({opacity:"1",backgroundColor: "#FFFFD0"})
            $('.colorc').animate({
                    borderBottomWidth: "2100px", borderRightWidth: "4000px", opacity: "0.9"
                    , backgroundColor: "#FFFFD0"
                }, 2000,
                function () {
                    $("body").css({"background": "#FFFFD0", color: "black"})
                    $(".colorc").css({borderBottomWidth: "35px", borderRightWidth: "45px", opacity: "0"
                        })


                }


            )



        });



        //变白





        $(".wwhite").click(function(){
            $(".colorc").css({opacity:"1",backgroundColor:"lightgray"});

            $('.colorc').animate({ borderBottomWidth:"2100px",borderRightWidth:"4200px",opacity:"0.9"
                    ,backgroundColor:"white"
                },2000,
                function () {
                    $("body").css({"background":"white","color":"black"})
                    $(".colorc").css({borderBottomWidth: "35px", borderRightWidth: "45px", opacity: "0"
                        })
                }
            )

        })

    });

   $(function(){
       $(".absolute2").click(function(){

           if($(".absolute2left").css("display")=="none"){
               $(".absolute2left").show();
               $(".arrow").show();
               $.get("/absoluteServlet",{"method":"getTwo"},function(result){

                       /* json=eval("("+result+")");
                        alert(eval)*/



                           $(".td1").html(result[0].oId);
                           $(".td2").html(result[0].car);
                   $(".td3").html(result[1].oId);
                   $(".td4").html(result[1].car);

                   },"JSON");








           }else{
               $(".absolute2left").hide();
               $(".arrow").hide();
           }
       })
   })





    /*    var eblue=document.getElementsByClassName(".eblue");
var colorc=document.getElementsByClassName(".colorc");

        document.ready=function(){
            eblue.onclick=function(){
                colorc.animate(function () {("right","300px"),"100"

                });
            }
        }*/
</script>
<%--变色--%>
<div class=" eblue"></div>
<div class="bla"></div>
<div class=" wwhite"></div>
<div class="colorc" ></div>
<%--变色--%>


<div class="yellowUp"></div>
<nav class="navbar navbar-inverse mynavbar mynavbar1" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <b class="tittlehi">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;微胜租车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
            <img src="/images/YELLOW.png" alt="" class="yellow1">
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav ">
                <%--用class="active"显示成被选中状态--%>
                <li class="shouye"><a href="${pagecontext.request.contextpath}/index.jsp">首页</a></li>
                <li class="zijia"><a href="${pagecontext.request.contextpath}/renting-car.jsp">自驾租车</a></li>
                <li class="chexing"><a href="${pagecontext.request.contextpath}/CarServlet?method=getCars">车型查询</a></li>
                <li><a href="#">长租</a></li>
                <li><a href="#">企业租车</a></li>
                <li><a href="#">顺风车</a></li>
                <li><a href="#">门店</a></li>
                <li><a href="#">活动</a></li>
                <li class="guojih"><a href="${pagecontext.request.contextpath}/guojihua.jsp">国际租车</a></li>
                <li class="gerenye"><a href="/personServlet">个人中心</a></li>
                <li class="login">&nbsp;&nbsp;&nbsp;

<c:if test="${empty sessionScope.userByPhone.uId}">
                    <span class="loginText1" onclick=window.location="${pageContext.request.contextPath}/jsp/registerndlogin/login.jsp" >登录</span>&nbsp;/&nbsp;

                    <span class="loginText1" onclick=window.location="${pageContext.request.contextPath}/jsp/registerndlogin/register.jsp">注册</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
</c:if>
<c:if test="${!(empty sessionScope.userByPhone.uId)}">
    <span class="loginText1" onclick=window.location="/personServlet" > 欢迎!${sessionScope.userByPhone.uName}</span>&nbsp;
                    <c:if test="${!(empty sessionScope.userByPhone.uName)}">


                    </c:if>
    &nbsp;<span class="loginText1" onclick=window.location="/logoutServlet">退出</span> &nbsp; &nbsp;
</c:if>
                </li>

                <li class="dropdown  tele">
                    <span href="#" class="dropdown-toggle " data-toggle="dropdown">服务热线：400-123-123 <b
                            class="caret"></b>
                    </span>
                    <ul class="dropdown-menu">
                        <li class="disabled"><a class="tel" href="#">港澳台及海外电话:</a></li>
                        <li class="disabled"><a class="tel" href="#"> + 86 - 10 - 20589555</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>


        <div class="abss absolute1 hidden-xs">
            <div class="abImg ab1Img" ></div>
            <p>资产</p>
        </div>
        <div class="abss absolute2 hidden-xs">
            <div class="abImg ab2Img"></div>
            <p>订单</p>
        </div>
        <div class="abss absolute3 hidden-xs">
            <div class="abImg ab3Img"></div>
            <p>手机版</p><div class="abs3in"></div>
        </div>
<a href="#" target="_self" >
        <div class="abso abso1 ">
            <div class="absoImg abso1Img"></div>
        </div>
</a>

<div class="absolute2left hidden-xs"><div class="ajaxright">订单信息</div>
    <table>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td  style="font-size: 16px;font-weight:600;color:black;">订单编号</td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td  style="font-size: 16px;font-weight:600; color:black">车辆型号</td>

    </tr>


        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="td1" style="text-align: center;"></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="td2"></td>

        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="td3" style="text-align: center;"></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="td4"></td>

        </tr>


</table>
    <div><a href="/OrdersServlet_two" class="absmore">全部></a></div>
</div>
<div class="arrow"></div>


        <div class="abso abso2 hidden-xs">
            <div class="absoImg abso2Img"></div>
        </div>

            <div class="abso abso3 hidden-xs">
                <div class="absoImg abso3Img"></div>
            </div>







