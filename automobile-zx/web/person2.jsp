<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/24
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="/jquery-2.1.4/jquery.js"></script>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_css.css" type="text/css">
--%>

    <title>我的微胜</title>
    <style>
       /* body{overflow: hidden;}*/
        li{list-style: none;}
        .had{
            margin-left: 6%;
        }
        .mycon{
            margin-left: 5%;
        }
        dd {
            margin: 0;
            font-size: 120%;
            padding: 1% 0;
            background-color: #f5f5f5;
            color: #6b6b6b;
            height: 8%;
        }
        dd a {
            padding-left: 20%;
            text-decoration: none;
            display: block;
            color: #6b6b6b;
            height: 80%;
            padding-top: 3%;
        }
        dd a:hover {
            color: #428bca;
            border-left: 5px solid #428bca;
            background-color: white;
            font-weight: bold;

        }
        .right_father{
            border: solid 1px #e7e7e7;
            padding: 0px;
        }
        .right{
            margin-top: 20px;
            padding-bottom: 20px;

        }

        .panel-heading{
            background-color: #e7e7e7;
        }
        .right_left {
        }
        .right_left > p > a {
            display: inline-block;
            align-content: center;
            margin: 3px 21px;
        }
        .right_left > p {
            align-content: center;
        }

        .right_centre li {
            list-style: none;
        }
        .upgrade-box {
            display: inline-block;
            box-sizing: content-box;
            margin-left: 10px;
            height: 49px;
        }
        .card-pk {
            display: inline-block;
            width: 40px;
            box-sizing: content-box;
            text-align: center;
            margin-left: -16px;
        }
        .card-jk {
            display: inline-block;
            width: 50px;
            margin-left: 38px;
            text-align: center;
        }
        .progressbox {
            float: left;
            width: 79px;
            height: 3px;
            background: #f7f7f7;
            display: inline-block;
            margin-top: 3px;
            overflow: hidden;
        }
        .upgrade-dot {
            float: left;
            width: 7px;
            height: 7px;
            border-radius: 8px;
            background: #f7f7f7;
            display: inline-block;
            border: 1px solid #bdbdbd;
            box-sizing: content-box;
        }
        .upgrade-pass {

            border-color:#ebc62f;
        }
        .li_one>em{
            color: #007fcc;
            font-style: normal;
        }

        .li_one{
            height: 49px;
        }
        .upgrade-hy{
            display: inline-block;
            height: 49px;
            line-height: 49px;
        }
        .li_one>span{
            display: inline-block;
            height: 49px;
            line-height: 49px;
        }
        .pop-tip {
            display: inline-block;
            margin: -4px 0 -4px 10px;
            position: relative;
            background-color: #fefbcd;
            border: 1px solid #ebc62f;
            padding: 5px 10px;
        }
        .arrow-left {
            position: absolute;
            top: 50%;
            left: -7px;
            margin-top: -5px;
            width: 7px;
            height: 11px;
            background: url("/img/bg_arrow_left.png");
        }
        .right_right>div{
            list-style: none;
            border: 1px dotted #ddd;
            background-color: #fafafa;
            display: inline-block;
            margin-top: 20px;
            padding-right: 20px;
        }
        .right_right>div>p{
            color: #e85e03;
            font-size: 20px;
        }
        .right_right>div>p>span{
            font-size: 16px;
        }
        .centre{
            padding: 0px;
            margin: 0px;
        }
        .centre>.logo>h3{
            padding-left: 15px;
        }
        .centre>.logo>div>ul>li{
            display: inline-block;
            width: 90px;
            height:100px;
            text-align: center;
            border: 1px solid #e7e7e7;
            padding: 20px 0 10px;
            list-style: none;
            float: left;


        }
        .centre>.logo>div>ul>li>img{
            width: 50%;
            text-align: center;
        }
        .centre>.logo>div>div>p{
            text-align: center;
        }

        .centre>.logo>div>ul{
            overflow: hidden;
        }
        .dd{
            padding: 0px;
        }
        .dd>.ddtb{
            padding: 15px 30px 0;
            border-bottom: 1px solid #e7e7e7;
            height: 53px;
            line-height: 35px;
        }
        .dd>.ddtb>h4{
            float: left;
            margin: 0px;
            padding: 0px;
            height:35px;
            line-height: 35px;
        }
        .dd>.ddtb>ul{
            position: relative;
            float: right;
        }
        .dd>.ddtb>ul>li{
            list-style: none;
            float: left;
            margin-left: 10px;
            border-top: 2px solid #fafafa;

        }
        .dd>.ddtb>ul>.li1{
            border-top: 2px solid #007fcc;
            border-left: 1px solid #e7e7e7;
            border-right: 1px solid #e7e7e7;
            border-bottom: 1px solid #fff;
        }


        .dd>.ddtb>ul>li>.one{
            font-weight: 700;
            background-color: #fff;
            color: #007fcc;
            height: 35px;
        }
        .dd>.ddtb>ul>li>.two{
            display: inline-block;
            padding: 0 30px;
            line-height: 35px;
            font-size: 14px;
            background-color: #fafafa;
            text-decoration: none;
            color: #6b6b6b;
        }
        .dd>.ddtb>ul a{
            display: inline-block;
            padding: 0 30px;
            font-size: 14px;
            text-decoration: none;
        }
        .ddtb_bottom{
            padding: 10px 30px 0;
        }
        .order-list-null {
            width: 50%;
            margin: 0 auto;
            padding: 90px 0 100px 140px;
            background: url("/img/bg_order_null.png ") no-repeat 0 center;

        }
        .order-list-all {
            padding: 10px 30px 30px;
            text-align: right;
        }
        .order-list-all a{color:#eab519;}

        .dd{
            border-bottom: solid 1px #e7e7e7;
        }

        .ui_bfc{
            padding: 0px;
        }
        .ui-bfc-hd>.hd {
            font-size: 16px;
            padding: 20px 30px 0;
        }
        .ui-bfc-hd>.hd a{
            float: right;
            font-size: 12px;
            font-weight: 400;
            color: #007fcc;
            text-decoration: underline;
        }

        .ui-bfc-hd>.bd{
            padding-top: 5px;
            padding: 0 30px 30px;

        }
        .ui-bfc-hd .bd li{
            padding: 0 10px;
            border-bottom: 1px solid #e7e7e7;
            line-height: 40px;
            overflow: hidden;
            list-style: none;
            font-size: 12px;
        }
        .ui-bfc-hd .bd li a{
            display: block;
            color: #007fcc;
            text-decoration: underline;
        }
        .ui-bfc-hd .bd li span{
            float: right;
        }
        .ui-bfc-hd{
            border-right: solid 1px #e7e7e7;
        }
        .ui-bfc-bd{
            padding: 0px;
        }
        .helper-info .hd {

            padding: 20px 30px 0;
            font-size: 16px;
        }
        .helper-info ol {
            padding: 5px 30px 20px;
            list-style: none;
            line-height: 20px;
        }
        .helper-info li {
            line-height: 30px;
            font-size: 12px;
        }
        .orange {
            color: #eab519;
            font-weight: bold;
        }
        .helper-info .bd {
            padding: 25px 0 25px 90px;

        }

        .helper-info .bd img {
            width: 127px;
            height: 117px;
            float: left;
            margin-right: 25px;
            vertical-align: top;
        }
        .txt {
            margin-top: 54px;
            font-size: 16px;
            font-weight: 700;
        }
        .privilege-type {
            padding: 35px 30px 15px;
            font-family: \5FAE\8F6F\96C5\9ED1;
        }
        .privilege-type ol {
            padding-left: 16px;
        }
        .privilege-type h3 {
            font-size: 20px;
            font-weight: bold;
            padding-bottom: 16px;
        }
        .privilege-type ol li {
            font-size: 14px;
            line-height: 28px;
            list-style: none;

        }


        .leftcaidan li{padding-left: 2%;line-height:32px;font-size: 18px;/*text-align: center;*/}
        .leftcaidan ul{padding-left: 0px;

        }
        .leftcaidan li a{color:black;}
        .leftcaidan li:hover{
            border-left:3px #eab519 solid;

        }
        .leftcaidan li a:hover{color:#eab519;text-decoration: none;}
        .right_left a,.right_right a{color:black;}
        .right_left a:hover{color:#eab519;text-decoration: none;}
        .right_right a:hover{color:#eab519;text-decoration: none;}
        .had a{color:#eab519;}
        .li_one em{color:#eab519;}
        .right_centre a{color:#eab519;}
        .bd li{color:BLACK;text-decoration: none;}

        .bd li:hover {color:#eab519;}
        .morexx{
            color:black;
            font-size: 10px; float:right;margin-right: 2%;margin-top: -20px;
        }
        .smaltext p{color:#eab519;}
        .qianfen{color:#eab519;font-size:20px;}
        .yue1{text-align: center;}
        .listul{padding-left: 0;}
        .right_left{text-align: center;}
        .txt p{color:#eab519;}
    </style>
</head>
<%@include file="/publictop.jsp" %>

<body>
<div class="container"><div class="row"><div class="col-xs-12">

    <div class="had">
        <p>当前位置：<a href="/personServlet">我的微胜></a></p>
    </div>


    <%--左边导航部分--%>
    <div class="col-lg-2 col-sm-6 inputwxy ">



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
                            <li><a href="userinServlet">用户信息</a></li>
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
    <%--左边导航部分结束--%>










    <%--右边内容部分--%>
    <div class="col-lg-10 col-sm-6 col-xs-12 right_father">





        <div class="right_left col-lg-2 col-sm-12">
            <img src="/images/bg_user_photo.png">
            <p><a href="">編輯我的資料</a></p>
        </div>


        <div class="right_centre col-lg-6 col-sm-12">
            <h3> 欢迎您&nbsp;${sessionScope.userByPhone.uName}</h3>
            <ul>
                <li class="li_one">
                    <span>持有卡：普卡</span>
                    <em>(成长值：0)</em>

                    <a class="upgrade-hy" data-toggle="modal" data-target="#UpgradeRule"
                       href="javascript:void(0)">升级规则</a>
                </li>
                <li>
                    <div class="upgrade-box">
                        <div class="upgrade-card clear_float">
                            <span class="card-pk">普卡</span>
                            <span class="card-jk">金卡</span>
                            <span class="card-jk">白金卡</span>
                        </div>
                        <div class="upgrade-process clear_float">

                            <span class="upgrade-dot upgrade-pass"></span>
                            <div class="progressbox">
                                <div class="progress-upgrade" style="width: 0%;"></div>
                            </div>
                            <span class="upgrade-dot upgrade-pass"></span>
                            <div class="progressbox">
                                <div class="progress-upgrade" style="width: 0%;"></div>
                            </div>
                            <span class="upgrade-dot"></span>
                        </div>
                        <div class="upgrade-num clear_float">
                            <span class="card-pk">0</span>
                            <span class="card-jk">5000</span>
                            <span class="card-jk">10000</span>
                        </div>
                    </div>
                </li>
                <li>
                    <span>爱车指数：</span><em class="sp-aczs"><i class="lv5"></i></em>
                    <text>5 级</text>
                    <p class="pop-tip"><i class="arrow-left"></i>(距离6级还差 15 天租车期)<a href=""
                                                                                    title="爱车指数说明">说明</a>
                    </p>
                </li>
                <li><span>我的优惠编码：</span><strong class="orange">1 </strong>张</li>
                <li><span>我的礼品E卡：</span><strong class="orange">0 </strong>张</li>
                <li><span>“租一送一”可用天数：</span><strong class="orange">0 </strong>天</li>
                <li>
                    <span>邮箱：</span>未验证

                    <a href="">立即验证</a>
                    <span style="color: #eab519;;">即刻完成邮箱验证，2000积分轻松到手哦！</span>
                </li>
                <li>
                    <span>手机：</span>已验证
                    <a href="">立即修改</a>
                </li>
            </ul>
        </div>



        <div class="right_right col-lg-4 col-sm-12">
            <div class="yue1 col-sm-6">可用余额<br/><b class="qianfen">￥0</b><br/><a  href="">我要充值</a></div>
            <div class="yue1 col-sm-6">可用积分<br/><b class="qianfen">0</b><br/><a href="">去积分商城</a></div>
        </div>

        <div class="centre col-lg-12 col-sm-12">
            <%--中间轮播地方--%>
            <div class="logo " style="width:100%;">
                <h3>您的权益 </h3>
                <div>
                    <ul class="listul" style="margin-left: 10%;">
                        <li class="kuang1">
                            <img src="/images/1.png" alt="">
                            <p>随时预订下单</p>
                        </li>
                        <li class="kuang2">
                            <img src="/images/2.png" alt="">
                            <p>生日优惠</p>
                        </li>
                        <li class="kuang3">
                            <img src="/images/3.png" alt="">
                            <p>会员积分</p>
                        </li>
                        <li >
                            <img src="/images/4.png" alt="">
                            <p>免验车服务</p>
                        </li>
                        <li>
                            <img src="/images/5.png" alt="">
                            <p>异地还车优惠</p>
                        </li>
                        <li >
                            <img src="/images/6.png" alt="">
                            <p>周中用车优惠</p>
                        </li>
                        <li >
                            <img src="/images/7.png" alt="">
                            <p>新车到店通知</p>
                        </li>
                        <li  >
                            <img src="/images/8.png" alt="">
                            <p>延时还车</p>
                        </li>
                        <li>
                            <img src="/images/9.png" alt="">
                            <p>预订排队优先</p>
                        </li>

                    </ul>
                   <%-- <div class="modal fade bs-example-modal-lg1" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3>随时预订下单权益说明：</h3>
                                    <ol>
                                        <li>随时可通过官网、APP、微信公众号、电话预订您需要的车辆。</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="modal fade bs-example-modal-lg2" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3>生日优惠权益说明：</h3>
                                    <ol>
                                        <li>会员生日当月可获得生日优惠券：普卡会员可享50元生日优惠券，金卡会员可享100元生日优惠券，白金卡会员可享200元生日优惠券；</li>
                                        <li>生日优惠券使用有效期为生日当月及次月；</li>
                                        <li>该券仅对租金部分进行减免，其他费用正常收取；</li>
                                        <li>一年内仅可享受一次生日优惠，不可与其他优惠同享，法定节假日不可用，仅限一嗨国内自驾业务使用。</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                   <%-- <div class="modal fade bs-example-modal-lg3" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel" style="z-index:999;">
                        <div class="modal-dialog modal-lg" role="document"  style="z-index:999;">
                            <div class="modal-content"  style="z-index:999;">
                                <div class="modal-header"  style="z-index:999;">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel1">模态框（Modal）标题</h4>
                                </div>
                                <div class="privilege-type"  style="z-index:999;">
                                    <h3>会员积分权益说明：</h3>
                                    <ol>
                                        <li>卡别越高，积分越多，积分获取比例为普卡1:1，金卡1:1.5，白金卡1:2</li>
                                        <li>积分可在一嗨积分商城中兑换道具和礼品，也可抵扣自驾订单租金</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                   <%-- <div class="modal fade bs-example-modal-lg4" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3>免验车服务权益说明：</h3>
                                    <ol>
                                        <li>金卡、白金卡用户专享；</li>
                                        <li>您还车时可享受免验车服务，还车流程更快捷。</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="modal fade bs-example-modal-lg5" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3>异地还车优惠权益说明：</h3>
                                    <ol>
                                        <li>金卡、白金卡用户专享；</li>
                                        <li>适用于产生异地还车费用的订单；</li>
                                        <li>异地还车费部分最高立减50元，其他费用正常收取；</li>
                                        <li>有效期为获得之日起3个月内，该券不兑现、不找零，不可叠加使用，不与其他优惠同享，法定节假日不可用，仅限一嗨国内自驾业务使用。</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="modal fade bs-example-modal-lg6" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3></h3>
                                    <ol>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="modal fade bs-example-modal-lg7" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3></h3>
                                    <ol>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="modal fade bs-example-modal-lg8" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3></h3>
                                    <ol>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="modal fade bs-example-modal-lg9" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3></h3>
                                    <ol>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <%--<div class="modal fade bs-example-modal-lg10" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="privilege-type">
                                    <h3></h3>
                                    <ol>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
        <div class="dd col-lg-12 col-sm-12">
            <%--最近订单--%>

            <%--中建订单内容板块--%>
            <div class="ddtb col-lg-12 col-sm-12">
                <h4>最近订单</h4>

            </div>
            <div class="ddtb_bottom col-lg-12 col-sm-12">
<table>
    <tr>
        <td style="font-size: 16px;font-weight:600;color:black;">订单编号</td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td style="font-size: 16px;font-weight:600; color:black;">车辆型号</td>

    </tr>
                <c:forEach var="ordd" items="${requestScope.ord}">

                    <tr>
                        <td style="text-align: center;"> ${ordd.oId}</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td> ${ordd.car}</td>

                    </tr>

                </c:forEach>
</table>
                <p class="order-list-all">
                    <a href="">查看所有订单</a>
                </p>

            </div>

            <%--中间内容把模块结束--%>
        </div>
        <%--中间内容底部两个部分--%>
        <div class="myui ui_bfc mod col-lg-12 col-sm-12">
            <div class="ui-bfc-hd promotion-list col-lg-5 col-sm-12">
                <h2 class="hd">优惠活动</h2><span class="morexx" href="">更多</span>
                <ul class="bd">
                    <li><span>2017-09-20</span><b >会员体系全新升级福利超多</b></li>
                    <li><span>2017-07-26</span><b >用光大银行信用卡，首租立减100元</b></li>
                    <li><span>2017-07-12</span><b >用北京银行信用卡，首租立减100元</b></li>
                    <li><span>2017-03-31</span><b >刷平安信用卡嗨享优惠</b></li>
                    <li><span>2017-02-10</span><b >建设银行龙卡在手，边嗨边优惠</b></li>

                </ul>
            </div>

            <div class="ui-bfc-bd helper-info col-lg-7 col-sm-12">
                <h2 class="hd">温馨提示</h2>
                <ol>
                    <li>1、取车时请务必携带<strong class="orange">本人信用卡，本人二代有效身份证，本人有效地方驾驶证正副本</strong>。</li>
                    <li>2、可能因地区政策及车牌原因影响交通限行，请及时查看全国地区限行说明。</li>
                    <li>3、您在一嗨租车所涉及的正常消费，均可向一嗨工作人员索要消费凭证。</li>
                </ol>
                <div class="bd clearfix col-lg-6 col-xs-12 hidden-xs">
                    <img src="/images/bg_qrcode.png">


                </div>
                <div class="txt col-lg-6 col-xs-12 hidden-xs">
                    <p>扫描二维码，下载APP</p>
                    <p>第一时间查询您的订单</p>
                </div>
            </div>



        </div>


    </div>

</div>
    <%--<script>
        $(function () {
            $('#collapseFour').collapse({
                toggle: true
            })
        });
        $(function () {
            $('#collapseTwo').collapse('show')
        });
        $(function () {
            $('#collapseThree').collapse('show')
        });
        $(function () {
            $('#collapseOne').collapse('show')
        });


    </script>--%>
</div></div>
<script type="text/javascript">
    $(function () { $('#collapseFour').collapse({
        toggle: false
    })});
    $(function () { $('#collapseTwo').collapse('show')});
    $(function () { $('#collapseThree').collapse('toggle')});
    $(function () { $('#collapseOne').collapse('show')});
    $(function () {
        $(".gerenye").attr("class","active");

        $(".kuang1").click(function(){
            alert("随时可通过官网、APP、微信公众号、电话预订您需要的车辆。");
        })
        $(".kuang2").click(function(){
            alert("会员生日当月可获得生日优惠券：普卡会员可享50元生日优惠券，" +
                "金卡会员可享100元生日优惠券，白金卡会员可享200元生日优惠券；" +
                "生日优惠券使用有效期为生日当月及次月；该券仅对租金部分进行减免，" +
                "其他费用正常收取；一年内仅可享受一次生日优惠，不可与其他优惠同享，" +
                "法定节假日不可用，仅限一嗨国内自驾业务使用。");
        })
        $(".kuang3").click(function(){
            alert("卡别越高，积分越多，积分获取比例为普卡1:1，金卡1:1.5，白金卡1:2;积分可在一嗨积分商城中兑换道具和礼品，也可抵扣自驾订单租金");
        })


    })


</script>
</body>
<%@include file="/publicbot.jsp" %>

</html>
