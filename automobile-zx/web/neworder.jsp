<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/16
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>



    <title>订单明细</title>
    <script>
       function tijiao(){

            window.location.href="${pageContext.request.contextPath}/person.jsp";
        }
    </script>

    <style>

        li{
            list-style: none;
        }
        /*头部进度条*/
        .step2-progress-box {
            height: 63px;
            background: url(/images/step2_progress.png) no-repeat;
            background-size: 100% auto ;
            margin: auto;
        }


        .right .price_detail{
            padding: 0px;
            border: 1px solid #ccc;

        }

        .left_box{

            padding: 0px;
            border: 1px solid #ccc
        }


        /*顶部详情图片部分*/
        .car_img_box {


            height: 180px;
        }
        .car_img_box img {
            width: 200px;
            margin-top: 20px;
        }
        img {
            border: none;
        }
        .car_img_box span {
            display: block;
            text-align: center;
            width: 200px;
            height: 30px;
            line-height: 30px;
            font-weight: bolder;
            font-size: 14px;
        }
        .car_img_box span em {
            font-style: normal;

            padding: 0 3px;
        }
        /*顶部订单详情页*/
        .store_info_box .car-name {
            font-size: 22px;
            font-family: "\5fae\8f6f\96c5\9ed1";

            margin-top: 20px;
        }
        .store_info_box .car-name a {
            float:right;
            display: inline-block;


            font-size: 12px;
            color:  #eab519;
        }
        .store_info_box ul li {
            line-height: 25px;
            font-size: 12px;
        }
        .store_info_box ul li .store-title {
            font-size: 14px;
            font-weight: bolder;
        }
        .store_info_box ul li span {
            vertical-align: top;
            width: 235px;
            display: inline-block;
            line-height: 25px;
            margin-right: 10px;
        }
        .rule-toggle a {
            float: right;
            color: #eab519;
        }

        /*选择支付方式*/
        .payment_box {
            overflow: hidden;
            zoom: 1;
            padding: 0px ;
            margin: 0px;
        }

        .title {
            height: 43px;
            border-top: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
            background: #EFEFEF;
            line-height: 42px;
            font-size: 16px;
            font-weight: bolder;
            text-indent: 1em;
        }
        .payment_list {
            padding: 20px 30px;
        }

        .payment_list li {
            float:left;
            line-height: 40px;
            _height: 40px;
            font-size: 14px;
            font-weight: bolder;
            position: relative;
            display: list-item;
            text-align: -webkit-match-parent;
        }
        label {
            cursor: default;
        }

        .payment_list li input {
            display: inline-block;
            margin-right: 10px;
        }

        .payment_list
        span {
            display: inline-block;
            font-size: 12px;
            color: #999;
            vertical-align: middle;
        }
        /*优惠活动项*/
        .activity_box {
            padding: 0px;
            overflow: hidden;
            zoom: 1;
        }


        .activity_list {
            padding: 20px 30px;
        }
        .activity_list li {
            _padding: 6px 0;
            line-height: 40px;
            font-size: 14px;
            font-weight: bolder;
        }
        .activity_list li input {
            vertical-align: middle;
            height: 25px;
            display: inline-block;
            margin-right: 10px;
        }
        .activity_list li i {
            padding-left: 10px;
            color: #999;
            font-size: 12px;
            font-style: normal;
            font-weight: normal;
        }



        /*其他服务列表*/

        .service_box {
            padding: 0;border:1px #ccc solid;


        }
        .service_list{}
        .service_list ul{padding:0;}



       /*其他服务多选内容页面*/
        .appointcar-box {
            width: 100%;
            margin-top: -10px;
            zoom: 1;
        }
        .appointcar-list {
            width: 100%;
            position: relative;
            height: 40px;
        }
        .service-list li input {
            height: 42px;
            display: inline-block;
            margin-right: 10px;
        }
        .appointcar-list .appointcar-name {
            font-size: 14px;
            position: absolute;
            font-weight: bolder;
            color: #999;
            left: 45px;
            top: 10px;
        }
        .insurance-box {
            width: 100%;

        }
        .insurance-list {
            width: 100%;
            position: relative;
            height: 46px;
        }
        .service-list li input {
            height: 42px;
            display: inline-block;
            margin-right: 10px;
        }
        .insurance-list input {
            position: absolute;
            width: 16px;
            height: 16px !important;
            left: 20px;
            top: 10px;
        }
        .insurance-list .insurance-name {
            font-size: 14px;
            position: absolute;
            width: 100px;
            font-weight: bolder;
            color: #666;
            left: 45px;
            top: 10px;
        }
        .insurance-list .insurance-price {
            font-size: 12px;
            position: absolute;
            width: 100px;
            font-weight: bolder;

            left: 170px;
            top: 10px;
        }
        .insurance-list .insurance-des {
            font-size: 12px;
            width: 600px;
            font-weight: normal;
            color: #999;
            left: 270px;
            top: 10px;
        }
        .insurance-list .insurance-des p {
            position: relative;
        }


        /*右边价格详情部分*/

        .price_detail .line-clear {
            background: none;
        }
        .price_detail li {
            padding: 11px;
            padding-left: 10px;
            font-size: 14px;
            font-weight: bolder;
            position: relative;
        }
        .price_detail li .price-mid {
            top: 20px;
        }
        .price_detail li em {
            color: #666;
            font-style: normal;
            font-weight: bolder;
            position: absolute;
            width: 120px;
            text-align: right;
            padding-right: 25px;
            right: 0;
            display: inline-block;
        }
        .price_detail li span {
            font-size: 12px;
            color: #999;
            display: block;
            font-weight: normal;
        }
        .price_detail ul{
            margin: 0px;
        }
        .hidelable {
            display: none !important;
        }

        /*可以退款的金额*/

        .deposit_box {
            border-top: 1px solid #ccc;
            padding: 8px 25px 8px 10px;
            font-weight: bold;
        }
        .deposit_box p {
            padding: 8px 0;
            margin: 0px;
            font-size: 12px;
            font-family: Tahoma
        }
        .deposit_box p em {
            font-style: normal;
            color:  #eab519;
        }
        .deposit_box p span {
            font-size: 14px;
            float: right;
        }


        /*提交订单-----提交按钮*/
        .price-box {
            border-top: 1px solid #ccc;
            padding: 0 10px 10px 10px;
            text-align: right;
            position: relative;
        }
        .price-box .price-txt {
            font-family: "\5fae\8f6f\96c5\9ed1";
            font-size: 20px;
        }
        .price-box .price-total {
            padding-left: 20px;
            position: relative;
            font-size: 35px;
            font-family: "\5fae\8f6f\96c5\9ed1";
            color:  #eab519;
        }
        .price-box .price-total em {
            font-size: 14px;
            color:  #eab519;
            font-style: normal;
            top: 5px;
            left: 5px;
            position: absolute;
            display: inline-block;
        }
        .price-btnbox {
            text-align: center;
            height:30px;
            line-height: 30px;
            background :#eab519;
            margin-bottom:20px;
            color:black;
            cursor:pointer;
            font-weight: 600;
            box-shadow: gray 1px 1px 3px;
        }

        .price-btnbox:hover{color:white;transition:100ms;box-shadow:none;}
            /*提交订单下面注意事项*/

        .price-help {
            border-top: 1px solid #ccc;
            color: #EB5A01;
            background: #FFFCD2;
            padding: 15px;
            line-height: 20px;
        }
       /* element.style {
            display: none;
            border-bottom: 1px dashed #EB5A01;
            padding-bottom: 5px;
            margin-bottom: 5px;
        }*/

        .price-help p{
            margin: 0px;
        }

.rrright{border:#ccc solid 1px;padding:0;
    }
        .service_list{padding-top: 30px;padding-bottom:30px;
            }
        .service_list li{padding-top:50px;font-size: 14px;}
        .service_list p{color:#999;font-size: 12px;}
        .service_list a {float:right;color: #eab519;}
        .xiaofei{ font-size: 14px;}
        .xiaofei b{color:#eab519;/*font-size: 14px;*/}
        .xiaofei li{margin-top:10px;}
        .xiaofei ul{padding-left:5px;}
.myconn{margin-top: 5px;
margin-bottom: 30px;}
        .tijiaoa{
            color:white;
            cursor:pointer;
            font-weight:500;
        }
        .tijiaoa:hover{
            color:white;
            text-decoration: none;
        }
    </style>

</head>
<%@include file="publictop.jsp"%>
<body>
<div class="container myconn">
    <div class="row ">

        <%--正文部分-头部进度条--%>
            <div class="step2-progress-box hidden-xs col-sm-12"></div>
        <%--正文左边订单详情页--%>

            <div class="center col-lg-12 col-sm-12">

                <div  class="left col-lg-9 col-sm-12 " style="padding:0;" >
                    <div class= "left_box col-lg-12 col-sm-12 ">
                    <%--顶页订单详情介绍--%>
                        <div  class="left_center col-lg-12 col-sm-12">
                             <div class="car_img_box col-lg-4 col-sm-12">
                            <img src="${requestScope.car.image}" alt="">
                            <span>
                                租期：
                                <em>2</em>
                                天
                            </span>
                        </div>
                             <div class="store_info_box col-lg-8 col-sm-12">
                            <div class="car-name col-lg-12 col-sm-12">
                                <a href="" target="_self" title="返回修改">返回修改</a>

                                    ${requestScope.car.header}
                                <em class="sp-box sp-carmodel">车辆说明</em>

                            </div>

                            <ul>

                                <%--<li>
                                    <span class="store-title">取车地点</span>
                                    <span class="store-title">还车地点</span>
                                </li>--%>

                               <%-- <li>
                                    <span>取车地址：上海徐汇区斜土路2899号甲（光启文化广场内，进来第一个入口左转）</span>
                                    <span>还车地址：上海徐汇区斜土路2899号甲（光启文化广场内，进来第一个入口左转）</span>
                                </li>--%>

                                <li>
                                    <span>取车门店：重庆火车北站</span>
                                    <span>还车门店：重庆火车北站</span>
                                </li>
                                <li>
                                    <span>取车时间：2018-04-27 08:00</span>
                                    <span>还车时间：2018-04-29 08:00</span>
                                </li>

                                <li style="padding-top: 5px;">
                                    <span class="store-title">订单说明：</span>
                                </li>
                                <li class="rule-toggle">
                                    <a href="" id="gz">退改规则</a>
                                    不限公里数，超时费按车辆租赁费及门店服务费均价÷6收取实际超期小时费
                                    (部分0元活动订单，按照40元/小时进行收取),预授权6000元（可退）,违章押金2000元（可退）。
                                </li>
                                <li style="color: red;">
                                    温馨提示：
                                    <a  title="限行城市规则"
                                       style="color: red;" target="_blank">点击阅读限行城市规则</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                        <%--支付方式--%>
                        <div class="payment payment_box col-lg-12 col-sm-12">
                                <div class="title col-lg-12 col-sm-12">
                        支付方式
                                </div>
                                <div class="payment_list col-lg-12 col-sm-12">
                            <ul>
                                <li>
                                    <label>
                                        <input name="pay" type="radio" id="Store" class="ba-analysis" data-ba-action="门店支付">门店支付<span>
                </span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input name="pay" type="radio" id="Online" checked="checked" class="ba-analysis" data-ba-action="在线支付">在线支付
                                        <span>
                                            使用微信，支付宝或各大银行的网银支付
                                        </span>
                                    </label>
                                </li>

                            </ul>
                        </div>

                        </div>
                        <%--优惠活动--%>
                        <div class="activity_box col-lg-12 col-sm-12">
                            <div class="title col-sm-12">
                                优惠活动
                            </div>
                            <div class="activity_list col-xs-12" id="selpromotion">
                                <ul>
                                    <li id="freeli">
                                        <input name="promotion" id="free" type="radio" class="ba-analysis" data-ba-action="免费天数">免费天数
                                        <div class="activity-load hidelable"></div>
                                    </li>
                                    <li id="promotioncodeli">
                                        <input name="promotion" type="radio" id="PromotionCode" class="ck-discount-code ba-analysis" data-ba-action="使用优惠编码"> 使用优惠编码<i>注：使用您获得的优惠编码</i>
                                        <div class="activity-load hidelable"></div>
                                    </li>
                                    <li id="promotionli">
                                        <input name="promotion" type="radio" id="promotions" class="ck-ehi-act ba-analysis" data-ba-action="一嗨会员专享优惠">一嗨会员专享优惠
                                        <div class="activity-load hidelable"></div>
                                    </li>
                                    <li id="channelpromotionli">
                                        <input name="promotion" type="radio" id="channelpromotions" class="ck-corperate ba-analysis" data-ba-action="合作专享优惠">合作专享优惠<i>注：合作商会员或持卡人信息须与租车人信息保持一致方可享受相应优惠</i>
                                        <div class="activity-load hidelable"></div>

                                    </li>
                                    <li>
                                        <input name="promotion" type="radio" checked id="999" class="ba-analysis" data-ba-action="不参加以上任何活动">不参加以上任何活动             </li>
                                </ul>
                            </div>
                        </div>
                        <%--其他服务--%>
                        <div class="service_box col-lg-12 col-xs-12">
                            <div class="title col-xs-12">
                            其他服务
                            </div>
                            <div class="service_list col-xs-12">
                                <ul>
                                    <li>
                                       <div class="col-xs-1"> <input name="" id="zdcx" value="指定车型" type="checkbox"  data-ba-action="指定车型">
                                       </div>
                                           <div class="service-name col-md-2 col-xs-6">
                                            <b>指定车型新款</b>
                                        </div>
                                        <div class="service-price col-md-9 col-xs-4">
                                            ￥10/天
                                        </div>
                                    </li>
                                    <li class="appointcar-wrap hidelable" id="gcid">


                                        <div class="appointcar-box">
                                            <div class="appointcar-list">
                                                <input name="cartype" data-gcid="489" value="" type="radio">
                                                <div class="appointcar-name">现代全新胜达/自动SUV/2.4L</div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col-xs-1"><input name="ServicePrice1" disabled="&quot;disabled&quot;" id="207" checked="checked" type="checkbox" value="车损免赔"  data-ba-action="车损免赔">
                                        </div><div class="service-name col-md-2 col-xs-6">
                                           <b> 车损免赔</b>
                                        </div>
                                        <div class="service-price col-md-9 col-xs-4 col-md-2">
                                            ￥0<span></span>
                                        </div>
                                        <div class="service-des col-xs-12 col-md-7">
                                            <p>客户如在租赁期间内购买车损免赔，则1500元以下本车车辆损伤无需赔偿。<a class="link-more righta" target="_blank" href="">更多详细规则</a>
                                            </p></div>
                                    </li>
                                    <li>
                                        <div class="col-xs-1">
                                        <input name="" id="216" value="增值保障服务" type="checkbox"  data-ba-action="增值保障服务">
                                        </div>
                                            <div class="service-nasme col-md-2 col-xs-6"><b>增值保障服务</b></div>
                                        <div class="service-price col-md-9 col-xs-4">
                                            ￥50<span></span>
                                        </div>
                                    </li>
                                    <li class="insurance-wrap hidelable" id="bxList">
                                        <%--<div class="insurance-box">
                                            <div >F
                                                <input name="lat" type="radio"  checked="checked" value="216">
                                                <div class="insurance-name">三者责任增加至50万</div>
                                                <div class="insurance-price">￥50</div>
                                                <div class="insurance-des">
                                                    <p>三者责任增加至50万</p>
                                                </div>
                                            </div>
                                            <div >
                                                <input name="lat" type="radio" value="217">
                                                <div class="insurance-name">三者责任增加至100万</div>
                                                <div class="insurance-price">￥100</div>
                                                <div class="insurance-des">
                                                    <p>三者责任增加至100万</p>
                                                </div>
                                            </div>
                                            <div >
                                                <input name="lat" type="radio"  value="223">
                                                <div class="insurance-name">三者责任增加至150万</div>
                                                <div class="insurance-price">￥150</div>
                                                <div class="insurance-des">
                                                    <p>三者责任增加至150万</p>
                                                </div>
                                            </div>
                                        </div>--%></li>
                                    <li><div class="col-xs-1">
                                        <input name="ServicePrice1" disabled="&quot;disabled&quot;" id="215" checked="checked" type="checkbox" value="乘客座位保障" data-ba-action="乘客座位保障">
                                    </div>
                                        <div class="service-name col-xs-8 col-md-2">
                                          <b> 乘客座位保障</b>
                                        </div>
                                        <div class="service-price col-xs-2">
                                            ￥0<span></span>
                                        </div>
                                        <div class="service-des col-md-7 col-xs-12">
                                            <p>车辆发生事故，致使乘客遭受人身伤亡造成的费用损失，以及为减少损失而支付的必要合理的施救、保护费用，赔付标准以保险公司核定为准且赔付上限不超过5万元/人/座。同时，在租赁期间，提供道路救援服务。
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                           <%-- <div class="col-xs-12">
                                指定车型 ￥10/天
                                车损免赔 ￥0 客户如在租赁期间内购买车损免赔，则1500元以下本车车辆损伤无需赔偿更多详细规则
                                增值保障服务
                                乘客座位保障 ￥0 车辆发生事故，致使乘客遭受人身伤亡造成的费用损失，以及为减少损失而支付的必要合理的施救、保护费用，赔付标准以保险公司核定为准且赔付上限不超过5万元/人/座。同时，在租赁期间，提供道路救援服务。
                            </div>--%>
                        </div>
                    </div>
                </div>
                <%--订单右边价格详情页--%>

                <div class="col-lg-3 col-xs-12 rrright">

                        <div class="title col-xs-12">费用明细</div>
                        <div class="col-xs-12 xiaofei">
                        <ul>
                            <li class="line-clear" id="baseRatePrice">
                                <b>￥
                                    ${(requestScope.car.retPrice)*2}

                                </b>
                               车辆租赁费及门店服务费

                            </li>
                            <!--基本保障服务费-->
                            <li>
                                <b>￥100</b> &nbsp;基本保障服务费
                                &nbsp;&nbsp;&nbsp;<br/>(基本保障服务费50.0元 * 2.0天)
                            </li>
                            <li id="servicePriceList">
                               <b>￥20</b>

                                &nbsp;其他服务费

                            </li>
                            <li id="promotionPriceList" class="hidelable">
                            </li>

                        </ul>
                        </div>
                        <div class="col-xs-12" style="padding:0;">
                        <div class="deposit_box col-xs-12">
                            <p>预授权<em>（可退）</em><span>￥6000</span></p>
                            <p>违章押金<em>（可退）</em><span>￥2000</span></p>
                        </div>
                        <div class="price-box" id="totalAmount">
                            <span class="sub-load hidelable" id="priceloading"></span>
                            <span class="price-txt" id="priceTitle">总计:</span><span class="price-total" id="priceTotal"><em>￥</em>${(requestScope.car.retPrice)*2+100+20}</span>
                        </div>
                            <div class="col-xs-4"></div>
                        <div class="price-btnbox col-xs-4" >
                            <a href="/PaoServlet?price=${(requestScope.car.retPrice)}&car=${requestScope.car.header}" class="tijiaoa">提交订单</a>

                        </div>
                        <div class="price-help col-xs-12">
                            首次租车请使用本人信用卡，本人二代有效身份证，本人有效地方驾驶证正副本。<br>
                            <p>本订单仅为客户租车预约登记，提交该订单后，客户需要到门店办理具体租车手续，具体权利义务以签署的合同为准。</p>
                        </div>
                        <div class="col-xs-12" id="LimitRemind" style="border-top-width: 1px; border-top-style:solid; border-top-color: rgb(204, 204, 204); color: rgb(235, 90, 1);padding: 15px; line-height: 20px; background: rgb(255, 252, 210);">限行提醒：本车属于非沪牌车辆，周一至周五的7:00-10:00,15:00-20:00禁止在高架道路(部分城市快速路)上通行（周六、日及法定节假日除外）
                        </div>
                    </div>

                </div>
            </div>

    </div>
</div>



</body>
<%@include file="publicbot.jsp"%>

</html>
