<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/17
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="jquery-2.1.4/jquery.js"></script>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>

    <link href="bootstrap-3.3.7-dist/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <script src="bootstrap-3.3.7-dist/moment-with-locales(1).js"></script>
    <script src="bootstrap-3.3.7-dist/bootstrap-datetimepicker.min.js"></script>
    <script src="bootstrap-3.3.7-dist/bootstrap-datetimepicker.zh-CN.js"></script>
    <title>国际化</title>

    <style>




        .group_list li {
            float: left;
            height: 80px;
            padding: 10px 10px 5px;
            display: inline-block;
            text-align: center;
            border: 1px solid #ccc;

            cursor: pointer;
        }

        .group_list li span {
            /*background: url(..//images/guoji_carli.png) no-repeat;*/
            background-image: url(/images/guoji_carli.png);
            background-repeat: no-repeat;
            width: 86px;
            height: 50px;
            margin-top: -9px;
            display: inline-block;
        }

        .g1 {
            margin-left: 1.5%;
        }

        .car_select {
            line-height: 80px;
            height: 80px;
            float: left;
            width: 75px;
            font-weight: 600;
            display: inline-block;
            font-size: 15px;
        }

        .g2pic {
            background-position: -86px -2px;
        }

        .g3pic {
            background-position: -172px -2px;
        }

        .g4pic {
            background-position: -258px -2px;
        }

        .g5pic {
            background-position: -344px -2px;
        }

        .g6pic {
            background-position: -430px -2px;
        }

        .g7pic {
            background-position: -516px -2px;
        }

        .g8pic {
            background-position: -602px -2px;
        }







        .sort_price {
            position: relative;
            float: left;
            padding: 0 20px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            color: #333;
            border: 1px solid #ccc;
            margin-left: -1px;
            display: inline-block;
        }

        .sort {
            padding: 23px 4px;
            background: #fff;
            border-width: 1px 0 1px 0;
            border-style: solid;
            border-color: #ccc;
        }

        .sort_price {
            position: relative;
            float: left;
            padding: 0 20px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            color: #333;
            border: 1px solid #ccc;
            margin-left: -1px;
            margin-top: -14px;
            display: inline-block;
        }

        .sort_price_1h {
            position: absolute;
            top: -4px;
            right: 5px;
            color: #333;
        }

        .sort_price_h1 {
            position: absolute;
            top: 4px;
            right: 5px;
            color: #333;
        }

        .Guoji_carlist ul li {
            float: left;
        }

        .Gjcar_intro {
            width: 330px;
            margin-left: 10%;
        }

        .Gjcar_intro .Gjcar_name {
            font-size: 18px;
            font-weight: 600;
            padding-top: 18px;
        }

        .Gjcar_intro .Gjcar_info {
            padding: 6px 0 10px;
        }

        .Gjcar_intro .Gjcar_type {
            margin-left: -12px;
        }

        .Gjcar_intro .Gjcar_type span.icon_gear {
            background-position: 0 0;
            height: 23px;
        }

        .Gjcar_intro p.Gjcar_type span {
            display: inline-block;
            margin: 0 3px 0 12px;
            vertical-align: -4px;
        }

        .Gjcar_gs span {
            float: left;
            width: 68px;
            padding-top: 9px;
            display: inline-block;
        }

        .Gjcar_gs p {
            padding-left: 82px;
        }

        .Gjcar_link {
            margin-top:8px;
            margin-right: 25px;
        }

        .Gjcar_link a {
            line-height: 22px;
            display: inline-block;
            color: #333;
        }



        ul {
            list-style: none;
        }

        .Gjcar_pic {
            width: 208px;
            height: 130px;
        }

        .Gjcar_price {
            margin-right: 56px;
            font-size: 16px;
            font-weight: bold;
            background: white;
        }

        .Gjcar_price i {
            font-style: normal;
            font-size: 20px;
            color: #ea5c00;
        }

        .Gjcar_order {
            padding-top: 50px;
            margin-left: 5%;
            display: inline-block;
        }

        .Gjcar_btn {
            width: 168px;
            height: 46px;
            text-align: center;
            line-height: 46px;
            color: #fff;
            background: #eab519;
            display: inline-block;
            border-radius: 4px;
            -webkit-border-radius: 4px;
        }



        #content_button {
            width: 130px;
            height: 40px;
            line-height: 40px;
            border: none;
            color: #fff;
            background: #eab519;
            display: inline-block;
            cursor: pointer;
            border-radius: 4px;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
        }

        .rentday {
            color: #eab519;
            padding-top: 2px;
        }

        .Guoji_carlist {
            background: white;
            margin-top: 20px;
            margin-bottom: 20px;
            padding-top: 5px;
            padding-bottom: 10px;
            border-bottom:solid #ccc 1px;


        }

        .pick {
            font-size: 15px;
            font-weight: 600;
            padding-left: 0px;
            padding-top: 10px;
        }


        .chexingzu{margin-left: 3%;}
        .calist{
            margin-top:18px;}
        .carti{ font-size: 15px;
            font-weight: 600;padding-left: 3%;}
        .search{
            text-align: center;

            margin-top: 18px;
        }
        .se{
            padding-top:10px;
            padding-left:0px;}
        .rowse{
            margin-top: 8px;
        }
        .rowimcar{
            padding-top: 20px;}
        .listc{padding-left: 2%;padding-right: 2%;}
        .Guoji_carlist{width:100%;}
        .Guoji_carlist a:hover{color:#eab519;text-decoration: none;}
        .paidang{padding-bottom:50px;}
        .congjh{
            margin-bottom:90px;
        }
        .reci{
            z-index: 111;
        }
    </style>
    <script type="text/javascript">
        function Datetimege() {
            $('#datetimepickerge').datetimepicker({
                language: 'zh-CN',//显示中文
                format: 'yyyy-mm-dd ',//显示格式
                minView: "month",//设置只显示到月份
                initialDate: new Date(),
                autoclose: true,//选中自动关闭
                todayBtn: true,//显示今日按钮
                locale: moment.locale('zh-cn')
            });
            //默认获取当前日期
            var today = new Date();
            var nowdate = (today.getFullYear()) + "-" + (today.getMonth() + 1);
            //对日期格式进行处理
            var date = new Date(nowdate);
            var mon = date.getMonth() + 1;
            var day = date.getDate();
            var mydate = date.getFullYear() + "-" + (mon < 10 ? "0" + mon : mon) + "-" + (day < 10 ? "0" + day : day);
            document.getElementById("nowdatege").value = mydate;
        };

        function Datetimeba() {
            $('#datetimepickerba').datetimepicker({
                language: 'zh-CN',//显示中文
                format: 'yyyy-mm-dd',//显示格式
                minView: "month",//设置只显示到月份
                initialDate: new Date(),
                autoclose: true,//选中自动关闭
                todayBtn: true,//显示今日按钮
                locale: moment.locale('zh-cn')
            });
            //默认获取当前日期
            var today = new Date();
            var nowdate = (today.getFullYear()) + "-" + (today.getMonth() + 1) + "-" + today.getDate();
            //对日期格式进行处理
            var date = new Date(nowdate);
            var mon = date.getMonth() + 1;
            var day = date.getDate();
            var mydate = date.getFullYear() + "-" + (mon < 10 ? "0" + mon : mon) + "-" + (day < 10 ? "0" + day : day);
            document.getElementById("nowdateba").value = mydate;
        };





    </script>
</head>

<%@include file="/publictop.jsp" %>

<body>
<div class="container congjh">

    <div class="content_left"></div>
    <div class="content ">


        <div class="row">
            <div class="content_fisrt" style="z-index: 2;padding: 25px 15px;">

                <div class="col-md-6 col-xs-12">
                    <div class="pick col-md-3">
                        取车门店：
                    </div>
                    <!--<input type="text" id="pickcity" readonly="readonly" autocomplete="off" value="洛杉矶—Los Angeles" />
                    <input type="text" id="pickaddress" readonly="readonly" autocomplete="off" value="洛杉矶" />-->
                    <div class="col-md-9 se">
                        <select id="pick_city">
                            <option value="America">美国</option>
                            <option value="English">英国</option>
                            <option value="French">法国</option>
                            <option value="Rassia">俄罗斯</option>
                            <option value="Kroen">韩国</option>
                            <option value="Janpan">日本</option>
                            <option value="Germany">德国</option>
                        </select>


                        <select id="pick_area">
                            <option>洛杉矶—Los Angeles</option>
                            <option>纽约—New York</option>
                            <option>华盛顿—Washington</option>
                            <option>旧金山—San Francisco</option>
                        </select>
                    </div>

                    <div class="pick col-md-3">
                        当地取车时间：
                    </div>

                    <div class="col-md-9 se">
                        <%--<input type="text" id="pickdate" readonly="readonly" autocomplete="off" value="2018-04-18"/>

                        <input type="text" id="pickdate_hour" readonly="readonly" autocomplete="off" value="10:10"/>--%>
                            <a onclick="Datetimege()"  class='input-group date' id='datetimepickerge' >
                                <input value="取车时间" type='text' class="form-control" id='nowdatege' style="width: 150px; height: 30px;" />
                                <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                            </a>
                    </div>
                </div>


                <div class="col-md-6 col-xs-12">
                    <div class="pick col-md-3">
                        还车门店：
                    </div>
                    <!--<input type="text" id="returncity" readonly="readonly" autocomplete="off" value="洛杉矶—Los Angeles" />
                    <input type="text" id="returnaddress" readonly="readonly" autocomplete="off" value="洛杉矶机场" />-->
                    <div class="col-md-9 se">
                        <select id="return_city" class="reci">
                            <option value="America">美国</option>
                            <option value="English">英国</option>
                            <option value="French">法国</option>
                            <option value="Rassia">俄罗斯</option>
                            <option value="Kroen">韩国</option>
                            <option value="Janpan">日本</option>
                            <option value="Germany">德国</option>
                        </select>
                        <select id="return_area" class="reci">
                            <option>洛杉矶—Los Angeles</option>
                            <option>纽约—New York</option>
                            <option>华盛顿—Washington</option>
                            <option>旧金山—San Francisco</option>
                        </select>
                    </div>
                    <div class="pick col-md-3">
                        当地还车时间：
                    </div>
                    <div class="col-md-9 se">
                        <%--<input type="text" id="returndate" readonly="readonly" autocomplete="off" value="2018-04-25"/>
                        <input type="text" id="returndate_hour" readonly="readonly" autocomplete="off" value="10:00"/>--%>
                            <a onclick="Datetimeba()"  class='input-group date' id='datetimepickerba' >
                                <input value="还车时间" type='text' class="form-control" id='nowdateba' style="width: 150px; height: 30px;" />
                                <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                            </a>
                    </div>


                </div>
                <div class="row rowse">
                    <div class=" col-md-12 search col-xs-12">

                        <input type="button" id="content_button" value="搜索"/>

                        <div class="rentday">租期：7天</div>

                    </div>
                </div>
            </div>
        </div>

        <hr/>



        <div class="row rowimcar"><div class="col-md-12 chexingzu">
            <span class="car_select">车型组：</span>
            <div class="car_group">
                <ul class="group_list">
                    <li class="g1">
                        <p>全部</p>
                        <span class="g1pic"></span>
                    </li>
                    <li class="g2">
                        <p>小型轿车</p>
                        <span class="g2pic"></span>
                    </li>
                    <li class="g3">
                        <p>中型轿车</p>
                        <span class="g3pic"></span>
                    </li>
                    <li class="g4">
                        <p>MPV</p>
                        <span class="g4pic"></span>
                    </li>
                    <li class="g5">
                        <p>SUV</p>
                        <span class="g5pic"></span>
                    </li>
                    <li class="g6">
                        <p>大型轿车</p>
                        <span class="g6pic"></span>
                    </li>
                    <li class="g7">
                        <p>豪华轿车</p>
                        <span class="g7pic"></span>
                    </li>
                    <li class="g8">
                        <p>跑车</p>
                        <span class="g8pic"></span>
                    </li>
                </ul>
            </div>
        </div></div>
        <div class="row">
            <div class="col-md-12 calist">
                <div class="col-md-2 carti">车辆座位：</div>


                <div class="btn-group btn-group-sm col-md-10">
                    <button type="button" class="btn btn-default ">不限</button>
                    <button type="button" class="btn btn-default">五座以上</button>
                    <button type="button" class="btn btn-default">五座以下</button>
                </div>

            </div>
            <div class="col-md-12 calist">

                <div class=" col-md-2 carti">排挡：</div>

                <div class="btn-group btn-group-sm col-md-10 paidang">
                    <button type="button" class="btn btn-default ">不限</button>
                    <button type="button" class="btn btn-default">手动</button>
                    <button type="button" class="btn btn-default">自动</button>
                </div>
            </div>
        </div>

        <div class="other_ruslt listc" id="orderCount" style="padding: 17px 0;border-top: 1px dotted #ccc;">共有20款车型</div>
        <div class="sort">
            <a href="" class="sort_price">
                <span class="sort_pricetext">价格</span>
                <span class="sort_price_1h">∧</span>
                <span class="sort_price_h1">∨</span>
            </a>
        </div>
        <div class="Guoji_carlist" gid="1" style="overflow: hidden;">
            <ul class="clear_float" >
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_15.png" width="100%" alt="起亚Rio">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">起亚 Rio或同组车型</p>
                    <p class="Gjcar_info">后排空间较为狭窄，建议乘坐2人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">4座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥216</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <!--Gid指的汽车的分类 gid=1的是小型轿车 Gdi等于2的是中型轿车 依次是 MPV SUV  大型 豪华 跑车-->

        <div class="Guoji_carlist" gid="1" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_32.png" width="100%" alt="日产 Versa Note">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">日产 Versa Note或同组车型</p>
                    <p class="Gjcar_info">后排不适合长时间乘坐，建议乘坐3人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">5座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥216</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="2" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_20.png" width="100%" alt="现代 伊兰特">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">现在 伊兰特或同组车型</p>
                    <p class="Gjcar_info">后排腿部空间适中，建议乘坐4人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">5座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥234</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="2" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_6.png" width="100%" alt="丰田 卡罗拉">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">丰田 卡罗拉或同组车型</p>
                    <p class="Gjcar_info">后排腿部空间始终，建议乘坐4人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">5座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥234</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="2" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_7.png" width="100%" alt="克莱斯勒">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">克莱斯勒 200或同组车型</p>
                    <p class="Gjcar_info">后排空间较为宽敞，建议乘坐4人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">4座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥261</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="5" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_36.png" width="100%" alt="日产轩逸">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">日产轩逸或同组车型</p>
                    <p class="Gjcar_info">经济省油</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">4座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥261</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="5" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_35.png" width="100%" alt="雪佛兰Impala">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">雪佛兰Impala或同组车型</p>
                    <p class="Gjcar_info">后排空间较为狭窄，建议乘坐2人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">5座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥306</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>

        <div class="Guoji_carlist" gid="5" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_41.png" width="100%" alt="林肯MKZ">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">林肯MKZ或同组车型</p>
                    <p class="Gjcar_info">内部精致舒适，建议乘坐4人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">5座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥441</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="5" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_5.png" width="100%" alt="凯迪拉克 ATS">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">凯迪拉克 ATS或同组车型</p>
                    <p class="Gjcar_info">内部精致舒适，建议乘坐4人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">5座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥441</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="3" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_21.png" width="100%" alt="道奇 Grand Caravan">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">道奇 Grand Cararvan或同组车型</p>
                    <p class="Gjcar_info">舒适的乘坐空间，满员乘坐时行李空间较少。</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">7座</span>
                        <span class="icon_common icon_gear">5门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥351</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="4" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_2.png" width="100%" alt="丰田 Rav4">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">起亚 Rio或同组车型</p>
                    <p class="Gjcar_info">后排空间较为狭窄，建议乘坐2人+2行李箱</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">4座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥216</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="4" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_3.png" width="100%" alt="现代 胜达">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">现在 胜达或同组车型</p>
                    <p class="Gjcar_info">配置全空间大，行李空间适中</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">5座</span>
                        <span class="icon_common icon_gear">5门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥396</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="4" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_38.png" width="100%" alt="雪佛兰Tahoe">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">雪佛兰Tahoe或同组车型</p>
                    <p class="Gjcar_info">可坐7人</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">7座</span>
                        <span class="icon_common icon_gear">5门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥505</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="4" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_12.png" width="100%" alt="雪佛兰Suburban">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">雪佛兰Suburban或同组车型</p>
                    <p class="Gjcar_info">舒适安全，适应多变路况</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">8座</span>
                        <span class="icon_common icon_gear">5门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥532</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>
        <div class="Guoji_carlist" gid="7" style="overflow: hidden;">
            <ul class="clear_float" style="display: block;">
                <li class="Gjcar_link">
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">空间</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">外观</a>
                    </p>
                    <p>
                        <a href="" target="_blank" style="border-bottom: 1px solid #ccc;">内饰</a>
                    </p>
                </li>
                <li class="Gjcar_pic">
                    <img src="/images/s_10.png" width="100%" alt="福特 野马">
                </li>
                <li class="Gjcar_intro">
                    <p class="Gjcar_name">福特 野马或同组车型</p>
                    <p class="Gjcar_info">最著名的美式肌肉车</p>
                    <p class="Gjcar_type">
                        <span class="icon_common icon_gear">自动挡</span>
                        <span class="icon_common icon_gear">4座</span>
                        <span class="icon_common icon_gear">4门</span>
                    </p>
                    <div class="Gjcar_gs">
							<span>
								<img src="/images/Alamo.png" width="100%" style="width: 68px;height: 32px;"/>
							</span>
                        <p>Alamo</p>
                        <p>机场外，免费巴士到门店</p>
                    </div>
                </li>
                <li class="Gjcar_order">
						<span class="Gjcar_price">
							<i>￥460</i>
							/天起
						</span>
                    <b class="Gjcar_btn">立即预定</b>
                </li>
            </ul>
        </div>


    </div>


    <div class="content_right col-md-2"></div>
</div>
<script type="text/javascript">

    var select = document.getElementById("pick_city");
    select.onchange = function () {
        var optionVal = select.value;
        switch (optionVal) {
            case "America":
                var area = document.getElementById("pick_area");
                area.innerHTML = "<option>洛杉矶—Los Angeles</option><option>纽约—New York</option> <option>华盛顿—Washington</option><option>旧金山—San Francisco</option>";
                break;
            case "English":
                var area = document.getElementById("pick_area");
                area.innerHTML = "<option>伦敦—London</option><option>爱丁堡—Edinburgh</option><option>利物浦—Live pool</option><option>剑桥—Cambridge</option>>";
                break;
            case "French":
                var area = document.getElementById("pick_area");
                area.innerHTML = "<option>巴黎—Paris</option><option>里昂—Lyon</option><option>图卡兹—Toulouse</option><option>斯特拉斯堡—Strasbourg</option>>";
                break;
            case "Rassia":
                var area = document.getElementById("pick_area");
                area.innerHTML = "<option>莫斯科—Moscow</option><option>圣彼得堡—St.Peterburg</option><option>萨马拉—Camapa</option>";
                break;
            case "Kroen":
                var area = document.getElementById("pick_area");
                area.innerHTML = "<option>首尔—Seoul</option><option>釜山—Pusan</option><option>大邱—Daegu</option><option>福冈—Fukuoka</option>>";
                break;
            case "Janpan":
                var area = document.getElementById("pick_area");
                area.innerHTML = "<option>东京—Tokyo</option><option>横滨—Yokohama</option><option>大阪—Osaka</option><option>福冈—Fukuoka</option>";
                break;
            case "Germany":
                var area = document.getElementById("pick_area");
                area.innerHTML = "<option>柏林—Berlin</option><option>汉堡—Hamburg</option><option>慕尼黑—Munich</option>";
                break;
            default:
                alert("error");
        }
    };
    var selected = document.getElementById("return_city");
    selected.onchange = function () {
        var optionVal = selected.value;
        switch (optionVal) {
            case "America":
                var area = document.getElementById("return_area");
                area.innerHTML = "<option>洛杉矶—Los Angeles</option><option>纽约—New York</option> <option>华盛顿—Washington</option><option>旧金山—San Francisco</option>";
                break;
            case "English":
                var area = document.getElementById("return_area");
                area.innerHTML = "<option>伦敦—London</option><option>爱丁堡—Edinburgh</option><option>利物浦—Live pool</option><option>剑桥—Cambridge</option>>";
                break;
            case "French":
                var area = document.getElementById("return_area");
                area.innerHTML = "<option>巴黎—Paris</option><option>里昂—Lyon</option><option>图卡兹—Toulouse</option><option>斯特拉斯堡—Strasbourg</option>>";
                break;
            case "Rassia":
                var area = document.getElementById("return_area");
                area.innerHTML = "<option>莫斯科—Moscow</option><option>圣彼得堡—St.Peterburg</option><option>萨马拉—Camapa</option>";
                break;
            case "Kroen":
                var area = document.getElementById("return_area");
                area.innerHTML = "<option>首尔—Seoul</option><option>釜山—Pusan</option><option>大邱—Daegu</option><option>福冈—Fukuoka</option>>";
                break;
            case "Janpan":
                var area = document.getElementById("return_area");
                area.innerHTML = "<option>东京—Tokyo</option><option>横滨—Yokohama</option><option>大阪—Osaka</option><option>福冈—Fukuoka</option>";
                break;
            case "Germany":
                var area = document.getElementById("return_area");
                area.innerHTML = "<option>柏林—Berlin</option><option>汉堡—Hamburg</option><option>慕尼黑—Munich</option>";
                break;
            default:
                alert("error");
        }
    };
    // var choose=document.getElementsByClassName("label_fivedown");
    // var cansle=document.getElementsByClassName("labelall")
    // 	choose.onclick=function () {
    // 		cansle.style("background-color:white;");
    //     }


    $(function () {
        $(".guojih").attr("class","active");

    })
</script>

</body>
<%@include file="/publicbot.jsp" %>



</html>