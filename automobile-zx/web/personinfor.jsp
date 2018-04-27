<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/18
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>个人信息</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <script type="text/javascript" src="jquery-2.1.4/jquery.js"></script>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <style>

        li{list-style: none;}
        .leftcaidan li{padding-left: 2%;line-height:32px;font-size: 18px;/*text-align: center;*/}
        .leftcaidan ul{padding-left: 0px;

        }
        .leftcaidan li a{color:black;}
        .leftcaidan li:hover{
            border-left:3px #eab519 solid;

        }
        .leftcaidan li a:hover{color:#eab519;text-decoration: none;}
        .ui-btn{
            margin-top: 3px;
            margin-left:20%;
        text-align: center;
            line-height:50px;
            font-size:18px;
        font-weight: 600;
            cursor:pointer;
            width: 50%;
            height:50px;
            border: #eab519 2px solid;

            border-bottom-width: 5px;
            border-radius: 3px;
        }

        .ui-btn:hover{
        background:#eab519;transition:200ms;color:white;

    }

        .titop a{
color:#eab519;
        }
        .rright{border:1px lightgray solid;padding-top:30px;padding-left:5%;}
        .rright a{color:#eab519;}
        .xinx tr{
            height:30px;
        }
    </style>

    <script>
        $(function () { $('#collapseFour').collapse({
            toggle: false
        })});
        $(function () { $('#collapseTwo').collapse('show')});
        $(function () { $('#collapseThree').collapse('toggle')});
        $(function () { $('#collapseOne').collapse('show')});

        function changekey(){
            window.location.href="/personchangekey.jsp";
        }
        function wanshan(){window.location.href="/wanshanServlet";}

    </script>
</head>
<%@include file="/publictop.jsp" %>

<body>
<div class="container mycon">
    <div class="row ">
        <div class=" col-xs-12 titop">
            <p>当前位置：<a href="/personServlet">我的微胜</a>></p>
        </div>
        <div class="col-md-2 col-sm-6 col-xs-12 inputwxy  ">


            <div class="panel-group leftcaidan" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne">
                                我的订单
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <ul> <li><a href="/OrdersServlet_two">订单管理</a></li>
                                <li><a href="">国际订单</a></li></ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo">
                                我的资产
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul> <li><a href="">账户余额</a></li>
                                <li><a href="">我的礼品卡</a></li>
                                <li><a href="">我的优惠编码</a></li>
                                <li><a href="">我的积分</a></ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree">
                                用户信息
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul>
                                <li><a href="/userinServlet">用户信息</a></li>
                                <li><a href="">常用租车人</a></li>
                                <li><a href="">我的发票</a></li>
                                <li><a href="">增票资质</a></li>
                                <li><a href="">我的违章</a></li>
                                <li><a href="">在线投诉</a></li>
                                <li><a href="">积分商城</a></li>
                                <li><a href="">企业信息</a></li>
                            </ul>

                        </div>
                    </div>
                </div>
                <%--<div class="panel panel-warning">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseFour">
                                点击我进行展开，再次点击我进行折叠。第 4 部分--options 方法
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice
                            lomo.
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>

        <div class="col-md-10 col-sm-6 col-xs-12 rright">

            <div class=" col-md-2 col-xs-12" style="height:103px">                    <img src="/images/bg_user_photo.png" width="99" height="99" alt="吴大宇">
            </div>


            <div class=" col-md-10 col-xs-12 xinx" >

            <table width="100%">
                <tbody>
                <tr>
                    <td class="cell-title">电子邮件：</td>
                    <td>
                        <c:out value="${requestScope.us[0].email}"></c:out>

                        <span class="">(未验证)</span>
                        <a href="">立即验证</a>                        </td>
                </tr>
                <tr>
                    <td class="">手机号码：</td>
                    <td>
                        <c:out value="${requestScope.us[0].phone}"></c:out>
                        (已验证)
                        <a href="">修改</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="dashed-border"></div>
                    </td>
                </tr>
                <tr>
                    <td class="cell-title">姓名：</td>
                    <td><c:out value="${requestScope.us[0].uName}"></c:out>
                    </td>
                </tr>
                <tr>
                    <td class="cell-title">证件类型：</td>
                    <td><c:out value="${requestScope.us[0].cardtype}"></c:out>
                    </td>
                </tr>
                <tr>
                    <td class="cell-title">证件号码：</td>
                    <td><c:out value="${requestScope.us[0].idcard}"></c:out>

                        <a class="card-revise" href="" data-toggle="modal" data-target="#myModal">添加</a>
                    </td>

                </tr>

                </tbody></table>

        </div>
            <div class="  col-xs-12" style="padding-top:100px; padding-bottom:90px;">
                <div class=" col-md-4 col-xs-12" onclick="changekey()" ><div class="ui-btn">修改密码</div></div>

                <div class=" col-md-4 col-xs-12" onclick="wanshan()"><div class="ui-btn">前往完善</div></div>
            </div>
        </div>



    </div></div>

<script type="text/javascript">
    $(function () {
        $(".geren").attr("class","active");

    })</script>
</body>
<%@include file="/publicbot.jsp" %>


</html>
