<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: Young
  Date: 2018/4/9
  Time: 15:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <title>一嗨</title>
    <link href="/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <link href="/css/booking333.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <style type="text/css">
        html{height:100%}
        body{height:100%;margin:0px;padding:0px}
        #container{height:100%}
    </style>
</head>
<body id="body_display_none">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-10">
            <div class="row" style="line-height: 30px">
                <div class="col-md-12 col-sm-12">
                    <form action="" method="post" class="form-inline">
                        <div class="row form-group"
                             style="background-color: #f5f5f5;border: 1px solid #ccc;padding-bottom: 10px;">
                            <div class="col-md-7 col-sm-12">
                                <div class="row">
                                    <div class="col-md-2 col-sm-6 col-xs-12 bold">取车门店:</div>
                                    <div class="col-md-2 col-sm-6 col-xs-12"><input class="form-control input-sm"
                                                                                    id="PickupCity" maxlength="10"
                                                                                    name="PickUpCity" type="text" value="上海"/>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control input-sm" id="getStore"
                                                                                    name="PickUpStoreName" type="text"
                                                                                    value="八万人体育场店"/></div>
                                    <div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control input-sm"
                                                                                    id="getSendService"
                                                                                    name="PickUpServiceAddress" type="text"
                                                                                    value="请输入送车上门地址"/></div>
                                    <div class="col-md-2 col-sm-6 col-xs-12"><input class="checkboxin"
                                                                                    style="margin-right: 10px;vertical-align: middle;margin: 0 10px 0 0;"
                                                                                    id="getCheck" name="IsSendService"
                                                                                    type="checkbox" value="true"/><span
                                            class="spanClass">送车上门</span></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-sm-6 bold">还车门店:</div>
                                    <div class="col-md-2 col-sm-6"><input class="form-control input-sm" id="ReturnCity"
                                                                          maxlength="10" name="ReturnCity" type="text"
                                                                          value="上海"/></div>
                                    <div class="col-md-3 col-sm-6"><input class="form-control input-sm" id="retStore"
                                                                          name="ReturnStoreName" type="text" value="八万人体育场店"/>
                                    </div>
                                    <div class="col-md-3 col-sm-6"><input class="form-control input-sm" id="retSendService"
                                                                          name="ReturnServiceAddress" type="text"
                                                                          value="请输入上门取车地址"/></div>
                                    <div class="col-md-2 col-sm-6"><input class="checkboxin"
                                                                          style="margin-right: 10px;vertical-align: middle;margin: 0 10px 0 0;"
                                                                          id="retCheck" name="IsReturnService" type="checkbox"
                                                                          value="true"/><span class="spanClass">上门取车</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-12">
                                <div class="row">
                                    <div class="col-md-3 col-sm-6 bold">取车时间:</div>
                                    <div class="col-md-4 col-sm-6"><input class="form-control input-sm" id="J_date_1"
                                                                          name="PickUpDate" type="text" value="2018-04-08">
                                    </div>
                                    <div class="col-md-2 col-sm-6">
                                        <select class="form-control input-sm">
                                            <option>08时</option>
                                            <option>09时</option>
                                            <option>11时</option>
                                            <option>12时</option>
                                            <option>13时</option>
                                            <option>14时</option>
                                            <option>15时</option>
                                            <option>16时</option>
                                            <option>17时</option>
                                            <option>18时</option>
                                            <option>19时</option>
                                            <option>20时</option>
                                            <option>21时</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2 col-sm-6">
                                        <select class="form-control input-sm">
                                            <option>00分</option>
                                            <option>05分</option>
                                            <option>10分</option>
                                            <option>15分</option>
                                            <option>20分</option>
                                            <option>25分</option>
                                            <option>30分</option>
                                            <option>35分</option>
                                            <option>40分</option>
                                            <option>45分</option>
                                            <option>50分</option>
                                            <option>55分</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-sm-6 bold">还车时间:</div>
                                    <div class="col-md-4 col-sm-6"><input class="form-control input-sm" id="J_date_2"
                                                                          name="ReturnDate" type="text" value="2018-04-10">
                                    </div>
                                    <div class="col-md-2 col-sm-6">
                                        <select class="form-control input-sm">
                                            <option>08时</option>
                                            <option>09时</option>
                                            <option>11时</option>
                                            <option>12时</option>
                                            <option>13时</option>
                                            <option>14时</option>
                                            <option>15时</option>
                                            <option>16时</option>
                                            <option>17时</option>
                                            <option>18时</option>
                                            <option>19时</option>
                                            <option>20时</option>
                                            <option>21时</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2 col-sm-6">
                                        <select class="form-control input-sm">
                                            <option>00分</option>
                                            <option>05分</option>
                                            <option>10分</option>
                                            <option>15分</option>
                                            <option>20分</option>
                                            <option>25分</option>
                                            <option>30分</option>
                                            <option>35分</option>
                                            <option>40分</option>
                                            <option>45分</option>
                                            <option>50分</option>
                                            <option>55分</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1 col-sm-12 submitBtn"><input class="btn btn-default" type="submit" value="查询"
                                                                             id="btnSubmit"/></div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12" style="overflow: hidden"><span
                        style="float: right">*当前选定租期:2天,还差1天就可享受3天打包套餐价!</span></div>
                <div class="col-md-12 col-sm-12" style="background-color: #f5f5f5;border: 1px solid #ccc; padding: 10px 0;">
                    <div class="col-md-1 col-sm-6 div_text" style="text-align: center;"><a href="#" class="a_border"><img
                            src="/images/hot.png" class="img-responsive" style="display: inline-block; vertical-align: middle;"></a>
                    </div>
                    <div class="col-md-1 col-sm-6 div_text"><a href="#" class="a_border"><p>经济型</p><span
                            class="buy01 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text"><a href="#" class="a_border"><p>舒适型</p><span
                            class="buy02 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text"><a href="#" class="a_border"><p>精英型</p><span
                            class="buy03 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text"><a href="#" class="a_border"><p>SUV</p><span
                            class="buy04 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text"><a href="#" class="a_border"><p>商务型</p><span
                            class="buy05 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text"><a href="#" class="a_border"><p>电动型</p><span
                            class="buy06 visible-lg"></span></a></div>
                </div>
                <!-- ----------------品牌类型----------------- -->

            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12 hidden-xs" style="padding-top: 10px">
                    <!-- 第一排 -->
                    <div class="col-md-1 col-sm-2">
                        <b class="">品牌:</b>
                    </div>
                    <div class="col-md-1 col-sm-2"><a href="#">全部</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">玛莎拉蒂</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">大众</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">一汽马自达</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">英菲尼迪</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">腾势</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">标致</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">大众斯柯达</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">MG</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">荣威</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">一汽</a></div>
                    <!-- 第二排 -->
                    <div class="col-md-1 visible-lg visible-md"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">别克</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">东风</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">本田</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">雪佛兰</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">宝马</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">上汽大通</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">绅宝</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">沃尔沃</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">路虎</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">现代</a></div>
                    <div class="col-md-1 col-sm-2" id="hiddens_div"><a href="#">丰田</a></div>
                    <!-- 第三排 -->
                    <div class="col-md-1 visible-lg"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">起亚</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">福特</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">捷豹</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">日产</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">奥迪</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">奔驰</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">凯迪拉克</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">纳智捷</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">江淮</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">江铃</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">马自达</a></div>
                    <!-- 第四排 -->
                    <div class="col-md-1 visible-md visible-lg"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">东南</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">哈弗</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">金杯</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">比亚迪</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">广汽传祺</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">克莱斯勒</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">吉利</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">铃木</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">华晨华硕</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">雪铁龙</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">奇瑞</a></div>
                    <!-- 第五排 -->
                    <div class="col-md-1 visible-md visible-lg"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">长安</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">福田</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">汇众</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">金龙</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">五菱</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">宇通</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">中华</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">长城</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">庆铃</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">金旅</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">依维柯</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <!-- 第六排 -->
                    <div class="col-md-1 visible-md visible-lg"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">MINI</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">东风小康</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">传祺</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">雷克萨斯</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">斯巴鲁</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">吉普</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">Jeep</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">猎豹</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">特斯拉</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">三菱</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">道奇</a></div>
                    <!-- 第七排 -->
                    <div class="col-md-1 visible-md visible-lg"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">奔腾</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">启辰</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">东风风神</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">之诺</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">众泰</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">东风日产</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">东风风行</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">九龙</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">保时捷</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">宝骏</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">菲亚特</a></div>
                    <!-- 第八排 -->
                    <div class="col-md-1 visible-md visible-lg"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">smart</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">北汽</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">红旗</a></div>
                    <div class="col-sm-2 visible-sm"></div>
                    <div class="col-md-1 col-sm-2"><a href="#">阿斯顿马丁</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">扬子江</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">力帆</a></div>
                    <div class="col-md-2 col-sm-4"><a href="#">阿尔法罗密欧</a></div>
                </div>
                <!-- 手机端侧边显示栏 -->
                <div class="visible-xs" id="wrapper">
                    <div class="overlay"></div>  <!-- 点击菜单暗背景 -->
                    <!-- Sidebar -->
                    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
                        <ul class="nav sidebar-nav">
                            <li class="sidebar-brand header_li">
                                <a href="#">筛选</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown">品牌<span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li class=""><a href="">全部</a></li>
                                    <li class=""><a href="#">玛莎拉蒂</a></li>
                                    <li class=""><a href="#">大众</a></li>
                                    <li class=""><a href="#">一汽马自达</a></li>
                                    <li class=""><a href="#">英菲尼迪</a></li>
                                    <li class=""><a href="#">腾势</a></li>
                                    <li class=""><a href="#">标致</a></li>
                                    <li class=""><a href="#">大众斯柯达</a></li>
                                    <li class=""><a href="#">MG</a></li>
                                    <li class=""><a href="#">荣威</a></li>
                                    <li class=""><a href="#">一汽</a></li>
                                    <li class=""><a href="#">别克</a></li>
                                    <li class=""><a href="#">东风</a></li>
                                    <li class=""><a href="#">本田</a></li>
                                    <li class=""><a href="#">雪佛兰</a></li>
                                    <li class=""><a href="#">宝马</a></li>
                                    <li class=""><a href="#">上汽大通</a></li>
                                    <li class=""><a href="#">绅宝</a></li>
                                    <li class=""><a href="#">沃尔沃</a></li>
                                    <li class=""><a href="#">路虎</a></li>
                                    <li class=""><a href="#">现代</a></li>
                                    <li class=""><a href="#">丰田</a></li>
                                    <li class=""><a href="#">起亚</a></li>
                                    <li class=""><a href="#">福特</a></li>
                                    <li class=""><a href="#">捷豹</a></li>
                                    <li class=""><a href="#">日产</a></li>
                                    <li class=""><a href="#">奥迪</a></li>
                                    <li class=""><a href="#">奔驰</a></li>
                                    <li class=""><a href="#">凯迪拉克</a></li>
                                    <li class=""><a href="#">纳智捷</a></li>
                                    <li class=""><a href="#">江淮</a></li>
                                    <li class=""><a href="#">江铃</a></li>
                                    <li class=""><a href="#">马自达</a></li>
                                    <li class=""><a href="#">东南</a></li>
                                    <li class=""><a href="#">哈弗</a></li>
                                    <li class=""><a href="#">金杯</a></li>
                                    <li class=""><a href="#">比亚迪</a></li>
                                    <li class=""><a href="#">广汽传祺</a></li>
                                    <li class=""><a href="#">克莱斯勒</a></li>
                                    <li class=""><a href="#">吉利</a></li>
                                    <li class=""><a href="#">铃木</a></li>
                                    <li class=""><a href="#">华晨华硕</a></li>
                                    <li class=""><a href="#">雪铁龙</a></li>
                                    <li class=""><a href="#">奇瑞</a></li>
                                    <li class=""><a href="#">长安</a></li>
                                    <li class=""><a href="#">福田</a></li>
                                    <li class=""><a href="#">汇众</a></li>
                                    <li class=""><a href="#">金龙</a></li>
                                    <li class=""><a href="#">五菱</a></li>
                                    <li class=""><a href="#">宇通</a></li>
                                    <li class=""><a href="#">中华</a></li>
                                    <li class=""><a href="#">长城</a></li>
                                    <li class=""><a href="#">庆铃</a></li>
                                    <li class=""><a href="#">金旅</a></li>
                                    <li class=""><a href="#">依维柯</a></li>
                                    <li class=""><a href="#">MINI</a></li>
                                    <li class=""><a href="#">东风小康</a></li>
                                    <li class=""><a href="#">传祺</a></li>
                                    <li class=""><a href="#">雷克萨斯</a></li>
                                    <li class=""><a href="#">斯巴鲁</a></li>
                                    <li class=""><a href="#">吉普</a></li>
                                    <li class=""><a href="#">Jeep</a></li>
                                    <li class=""><a href="#">猎豹</a></li>
                                    <li class=""><a href="#">特斯拉</a></li>
                                    <li class=""><a href="#">三菱</a></li>
                                    <li class=""><a href="#">道奇</a></li>
                                    <li class=""><a href="#">奔腾</a></li>
                                    <li class=""><a href="#">启辰</a></li>
                                    <li class=""><a href="#">东风风神</a></li>
                                    <li class=""><a href="#">之诺</a></li>
                                    <li class=""><a href="#">众泰</a></li>
                                    <li class=""><a href="#">东风日产</a></li>
                                    <li class=""><a href="#">东风风行</a></li>
                                    <li class=""><a href="#">九龙</a></li>
                                    <li class=""><a href="#">保时捷</a></li>
                                    <li class=""><a href="#">宝骏</a></li>
                                    <li class=""><a href="#">菲亚特</a></li>
                                    <li class=""><a href="#">smart</a></li>
                                    <li class=""><a href="#">北汽</a></li>
                                    <li class=""><a href="#">红旗</a></li>
                                    <li class=""><a href="#">阿斯顿马丁</a></li>
                                    <li class=""><a href="#">扬子江</a></li>
                                    <li class=""><a href="#">力帆</a></li>
                                    <li class=""><a href="#">阿尔法罗密欧</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown">价格<span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">全部</a></li>
                                    <li><a href="#">100元以下</a></li>
                                    <li><a href="#">100-200元</a></li>
                                    <li><a href="#">200-300元</a></li>
                                    <li><a href="#">300元以上</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown">排挡<span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">全部</a></li>
                                    <li><a href="#">手动</a></li>
                                    <li><a href="#">自动</a></li>
                                    <li><a href="#">手自一体</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown">座位<span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">全部</a></li>
                                    <li><a href="#">2座</a></li>
                                    <li><a href="#">4座</a></li>
                                    <li><a href="#">5座</a></li>
                                    <li><a href="#">7座</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <!-- /#sidebar-wrapper -->

                    <!-- button -->

                    <%-- <div id="page-content-wrapper">
                         <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
                             <span class="hamb-top"></span>
                             <span class="hamb-middle"></span>
                             <span class="hamb-bottom"></span>
                         </button>
                         <!-- 响应式内容布局 -->
                     </div>--%>
                </div>
                <!-- ----------------------价格----------------------------- -->
                <div class="col-md-12 col-sm-12 hidden-xs" id="" style="padding-top: 10px">
                    <div class="col-md-1 col-sm-2"><b>价格:</b></div>
                    <div class="col-md-1 col-sm-2"><a href="#">全部</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">100元以下</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">100-200元</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">200-300元</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">300元以上</a></div>
                    <div class="col-md-1 col-md-offset-5 col-sm-2 col-sm-offset-10"><span class="" id="span_down"></span></div>
                </div>
                <!-- ------------------------------排挡--------------------------------------- -->
                <div class="col-md-12 col-sm-12 hidden-xs" id="hiddens_div3" style="padding-top: 10px">
                    <div class="col-md-1 col-sm-2"><b>排挡:</b></div>
                    <div class="col-md-1 col-sm-2"><a href="#">全部</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">手动</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">自动</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">手自一体</a></div>
                </div>
                <!-- ----------------------座位-------------------------------- -->
                <div class="col-md-12 col-sm-12 hidden-xs" id="hiddens_div4" style="padding-top: 10px">
                    <div class="col-md-1 col-sm-2"><b>座位:</b></div>
                    <div class="col-md-1 col-sm-2"><a href="#">全部</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">2座</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">4座</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">5座</a></div>
                    <div class="col-md-1 col-sm-2"><a href="#">7座</a></div>
                    <div class="col-md-1 col-md-offset-5 col-sm-2 col-sm-offset-10"><span class="jiantou_up"></span></div>
                </div>
                <div class="col-xs-12 visible-xs" id="betten_id" style="color: #8a6d3b; text-align: center;"><button class="btn" id="buttem">筛选</button></div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12" style="background-color: #f5f5f5;border: 1px solid #ccc;">
                    <div class="col-md-1 col-sm-4 border_test border_test3"><a href="#">默认排序</a></div>
                    <div class="col-md-1 col-sm-4 border_test"><a href="#">按租金<span class="sort-icon"></span></a></div>
                    <div class="col-md-1 col-sm-4 border_test"><a href="#">按排量<span class="sort-icon"></span></a></div>
                    <div class="col-md-2 col-md-offset-7 col-sm-12 border_test2 border_test">* 共有?种车型可以租用</div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">123123</div>
            </div>
        </div>
        <div class="col-md-2  visible-lg" style="border: 1px solid #cccccc; padding: 0 0; margin-top: 20px;">
            <div class="div_api" id="container" style="width: 100%;height: 35%;"></div>
            <ul class="ul-line">
                <li>取车门店:</li>
                <li>八万人体育场店</li>
                <li>徐汇区斜土路2899号甲（光启文化广场内，进来第一个入口左转）</li>
                <li>门店电话：021-64160981</li>
                <li>营业时间：08:00-21:00</li>
                <li><a href="#" class="a_explain">上海地区限行政策说明>></a></li>
                <li><a href="#" class="a_explain">预订规则说明>></a></li>
                <li><a href="#" class="a_explain"><span class="fan_icon"></span>返现规则说明>></a></li>
            </ul>
            <p class="flash-p"><span class="flash-rent">闪租</span>闪租权益</p>
            <ul class="ul-line">
                <li>1、快速取还车</li>
                <li>2、免验车</li>
                <li>3、手机支架/转接头免费用</li>
                <li>4、含车损免赔</li>
                <li>5、2年内新车</li>
                <li>6、芝麻信用免预授权</li>
                <li>(预授权5000内车型可用)</li>
                <li>7、送乘客座位险</li>
                <li>8、送NBA定制手环(送完即止)</li>
            </ul>
        </div>
    </div>


</div>
</body>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=BeesNY2WSx8qrQCtvoT55fpo7AgrhPkt"></script>
<script type="text/javascript">
    //v2.0版本的引用方式：src="http://api.map.baidu.com/api?v=2.0&ak=您的密钥"

    $(function () {
        var map = new BMap.Map("container");          // 创建地图实例
        var point = new BMap.Point(116.404, 39.915);  // 创建点坐标
        map.centerAndZoom(point, 12);                 // 初始化地图，设置中心点坐标和地图级别
        map.enableScrollWheelZoom(true);
        map.addControl(new BMap.NavigationControl());
        //在本例中我们向地图添加一个平移缩放控件、一个比例尺控件和一个缩略图控件。在地图中添加控件后，它们即刻生效。
        map.addControl(new BMap.NavigationControl());
        map.addControl(new BMap.ScaleControl());
        map.addControl(new BMap.OverviewMapControl());
        map.addControl(new BMap.MapTypeControl());
        map.setCurrentCity("北京"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用
        //定位
        /*function myFun(result){
            var cityName = result.name;
            map.setCenter(cityName);
        }
        var myCity = new BMap.LocalCity();
        myCity.get(myFun);*/
        //SDK辅助定位
        var geolocation = new BMap.Geolocation();
        // 开启SDK辅助定位
        geolocation.enableSDKLocation();
        geolocation.getCurrentPosition(function(r){
            if(this.getStatus() == BMAP_STATUS_SUCCESS){
                var mk = new BMap.Marker(r.point);
                map.addOverlay(mk);
                map.panTo(r.point);
            }
            else {
            }
        });
        //浏览器定位

        //jquery代码
        $("#hiddens_div").nextAll().hide();
        $("#hiddens_div3").hide();
        $("#hiddens_div4").hide();
        $("#span_down").addClass("jiantou_down");
        var trigger = $('.hamburger'),
            overlay = $('.overlay'),
            isClosed = false;

        trigger.click(function () {
            hamburger_cross();
        });

        function hamburger_cross() {

            if (isClosed == true) {
                overlay.hide();
                trigger.removeClass('is-open');
                trigger.addClass('is-closed');
                isClosed = false;
            } else {
                overlay.show();
                trigger.removeClass('is-closed');
                trigger.addClass('is-open');
                isClosed = true;
            }
        }

        $('[data-toggle="offcanvas"]').click(function () {
            $('#wrapper').toggleClass('toggled');
        });
        $(".jiantou_up").click(function () {
            $("#hiddens_div").nextAll().hide();
            $("#hiddens_div3").hide();
            $("#hiddens_div4").hide();
            $("#span_down").addClass("jiantou_down");
        });
        $("#span_down").click(function () {
            $("#hiddens_div").nextAll().show();
            $("#hiddens_div3").show();
            $("#hiddens_div4").show();
            $("#span_down").removeClass("jiantou_down");
        });
        $("#buttem").click(function () {
            $("#wrapper").addClass("toggled");
            $(".overlay").show();
        });
        $(".overlay").click(function () {
            $("#wrapper").removeClass("toggled");
            $(this).hide();
        })
    })
</script>
</html>
