<%--
  User: Young
  Date: 2018/4/9
  Time: 15:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <title>自驾预订_微胜租车</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>

    <link rel="shortcut icon"
          href="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524294931515&di=7adaf52f2577598ceeeba1fa1eded2f9&imgtype=0&src=http%3A%2F%2Ftx.haiqq.com%2Fuploads%2Fallimg%2F170506%2F051FI3X-1.jpg"
          type="/image/V.png"/>
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/booking333.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/bootstrap-datetimepicker.min.css"
          rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet"/>
    <style type="text/css">
        html {
            height: 100%
        }

        body {
            height: 100%;
            margin: 0px;
            padding: 0px
        }

        #container {
            height: 100%
        }
    </style>
</head>
<%@include file="publictop.jsp" %>
<body id="body_display_none">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-10 ">
            <div class="row" style="line-height: 30px">
                <div class="col-md-12 col-sm-12"
                     style="background-color: #f5f5f5;border: 1px solid #ccc;padding-bottom: 10px;">
                    <form action="" method="post" class="form-inline">
                        <div class="row form-group">
                            <div class="col-md-7 col-sm-12">
                                <div class="row">
                                    <div class="col-md-2 col-sm-6 col-xs-12 bold">取车门店:</div>
                                    <div class="col-md-2 col-sm-6 col-xs-12"><input class="form-control input-sm"
                                                                                    id="PickupCity" maxlength="10"
                                                                                    name="PickUpCity" type="text"
                                                                                    value="重庆"/>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control input-sm"
                                                                                    id="getStore"
                                                                                    name="PickUpStoreName" type="text"
                                                                                    value="重庆火车北站"/></div>
                                    <div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control input-sm"
                                                                                    id="getSendService"
                                                                                    name="PickUpServiceAddress"
                                                                                    type="text"
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
                                                                          value="重庆"/></div>
                                    <div class="col-md-3 col-sm-6"><input class="form-control input-sm" id="retStore"
                                                                          name="ReturnStoreName" type="text"
                                                                          value="重庆火车北站"/>
                                    </div>
                                    <div class="col-md-3 col-sm-6"><input class="form-control input-sm"
                                                                          id="retSendService"
                                                                          name="ReturnServiceAddress" type="text"
                                                                          value="请输入上门取车地址"/></div>
                                    <div class="col-md-2 col-sm-6"><input class="checkboxin"
                                                                          style="margin-right: 10px;vertical-align: middle;margin: 0 10px 0 0;"
                                                                          id="retCheck" name="IsReturnService"
                                                                          type="checkbox"
                                                                          value="true"/><span
                                            class="spanClass">上门取车</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-12">
                                <div class="row">
                                    <div class="col-md-3 col-sm-6 bold">取车时间:</div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="form-group">
                                            <div class="input-group date form_time1 col-md-12" data-date=""
                                                 data-date-format="yyyy-mm-dd" data-link-field="dtp_input3"
                                                 data-link-format="yyyy-mm-dd">
                                                <input class="form-control input-sm" size="16" type="text" value=""
                                                       readonly>
                                                <span class="input-group-addon"><span
                                                        class="glyphicon glyphicon-remove"></span></span>
                                            </div>
                                            <input type="hidden" id="dtp_input3" value=""/>
                                        </div>

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
                                    <div class="col-md-4 col-sm-6">
                                        <div class="form-group">
                                            <div class="input-group date form_time2 col-md-12" data-date=""
                                                 data-date-format="yyyy-mm-dd" data-link-field="dtp_input3"
                                                 data-link-format="yyyy-mm-dd">
                                                <input class="form-control input-sm" size="16" type="text" value=""
                                                       readonly>
                                                <span class="input-group-addon"><span
                                                        class="glyphicon glyphicon-remove"></span></span>
                                            </div>
                                            <input type="hidden" id="dtp_input3" value=""/>
                                        </div>
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
                            <div class="col-md-1 col-sm-12 submitBtn"><input class="btn btn-default" type="button"
                                                                             value="查询"
                                                                             id="btnSubmit"/></div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12" style="overflow: hidden"><span
                        style="float: right">*当前选定租期:0天,还差3天就可享受3天打包套餐价!</span></div>
                <div class="col-md-12 col-sm-12 col-xs-12" id="test-small"
                     style="background-color: #f5f5f5;border: 1px solid #ccc; padding: 10px 0;">
                    <div class="col-md-1 col-sm-6 col-xs-12 div_text" style="text-align: center;"><a href="#"
                                                                                                     class="a_border"><img
                            src="/images/hot.png" class="img-responsive" id="img-response"
                            style="display: inline-block; vertical-align: middle;"></a>
                    </div>
                    <div class="col-md-1 col-sm-6 div_text col-xs-4"><a href="#" class="a_border"><p>经济型</p><span
                            class="buy01 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text col-xs-4"><a href="#" class="a_border"><p>舒适型</p><span
                            class="buy02 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text col-xs-4"><a href="#" class="a_border"><p>精英型</p><span
                            class="buy03 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text col-xs-4"><a href="#" class="a_border"><p>SUV</p><span
                            class="buy04 visible-lg "></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text col-xs-4"><a href="#" class="a_border"><p>商务型</p><span
                            class="buy05 visible-lg"></span></a></div>
                    <div class="col-md-1 col-sm-6 div_text col-xs-4"><a href="#" class="a_border"><p>电动型</p><span
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
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown">品牌<span
                                        class="caret"></span></a>
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
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown">价格<span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">全部</a></li>
                                    <li><a href="#">100元以下</a></li>
                                    <li><a href="#">100-200元</a></li>
                                    <li><a href="#">200-300元</a></li>
                                    <li><a href="#">300元以上</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown">排挡<span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">全部</a></li>
                                    <li><a href="#">手动</a></li>
                                    <li><a href="#">自动</a></li>
                                    <li><a href="#">手自一体</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown">座位<span
                                        class="caret"></span></a>
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
                    <div class="col-md-1 col-md-offset-5 col-sm-2 col-sm-offset-10"><span class=""
                                                                                          id="span_down"></span></div>
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
                    <div class="col-md-1 col-md-offset-5 col-sm-2 col-sm-offset-10"><span class="jiantou_up"></span>
                    </div>
                </div>
                <div class="col-xs-12 visible-xs" id="betten_id" style="color: #8a6d3b; text-align: center;">
                    <button class="btn" id="buttem">筛选</button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12" style="background-color: #f5f5f5;border: 1px solid #ccc;">
                    <div class="col-md-1 col-sm-4 border_test border_test3"><a href="#">默认排序</a></div>
                    <div class="col-md-1 col-sm-4 border_test"><a href="#">按租金<span class="sort-icon"></span></a></div>
                    <div class="col-md-1 col-sm-4 border_test"><a href="#">按排量<span class="sort-icon"></span></a></div>
                    <div class="col-md-2 col-md-offset-7 col-sm-12 border_test2 border_test">* 共有<c:out
                            value="${requestScope.cars.size()}"></c:out>种车型可以租用
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <!-- /loading -->
                    <div class="carwrap clearfix">
                        <div id="imgLoad" class="pageinfo-box">
                            <p class="loading-box">

                            </p>
                        </div>
                        <!-- /nocar -->
                        <div id="nocar" style="display: none;">
                            <img src="/images/nocar.png" alt=""/>
                            <div class="nocar-explain">
                                <p class="nocar-text1">对不起，当前门店该时间段内车辆已经租满。</p>
                                <p class="nocar-text2">您可以重新选择其他门店。</p>
                            </div>
                        </div>
                        <!-- /车型列表 -->
                        <div id="carTypeList">
                            <%--区域列表--%>
                            <div id="ydkBox" class="ydk-box" style="">
                                <!--区域列表-->

                                <h3 class="store-inquire clearfix">
                                    <span id="allStore" class="iqst-all iqst-current">行政区</span>
                                    <span id="businessDistrict" class="iqst-all">商圈</span>
                                    <span id="nearStore" class="iqst-all">查找地址最近门店</span>
                                </h3>
                                <div class="wrap-title arealist">
                                    <ul id="setAllStore" class="list-area tabHF-title">
                                        <li class="current">机场/火车站</li>
                                        <li class="">徐汇区</li>
                                        <li>静安区</li>
                                        <li>卢湾区</li>
                                        <li>黄浦区</li>
                                        <li>浦东新区</li>
                                        <li>长宁区</li>
                                        <li>虹口区</li>
                                        <li>闸北区</li>
                                        <li>杨浦区</li>
                                        <li>普陀区</li>
                                        <li>闵行区</li>
                                        <li>宝山区</li>
                                        <li>松江区</li>
                                        <li>嘉定区</li>
                                        <li>青浦区</li>
                                        <li>金山区</li>
                                        <li>奉贤区</li>
                                        <li>崇明县</li>
                                    </ul>
                           <%--         <ul id="setBusinessDistrict" class="list-area tabHF-title">
                                        <li>正阳世纪星城</li>
                                        <li>康桥/周浦</li>
                                        <li>虹口足球场</li>
                                        <li>通河/泗塘</li>
                                        <li>中山公园</li>
                                        <li>大宁地区</li>
                                        <li>龙柏地区</li>
                                        <li>淞滨地区</li>
                                        <li>博乐广场</li>
                                        <li>青浦城区</li>
                                        <li>万体馆</li>
                                        <li>徐家汇</li>
                                        <li>外高桥</li>
                                        <li>北新泾</li>
                                        <li>火车站</li>
                                        <li>老闵行</li>
                                        <li>蒙山路</li>
                                        <li>金桥</li>
                                        <li>张江</li>
                                        <li>北蔡</li>
                                        <li>古北</li>
                                        <li>桃浦</li>
                                        <li>莘庄</li>
                                        <li>安亭</li>
                                        <li>江桥</li>
                                    </ul>
                                    <ul id="setNearStore" class="list-near">
                                        <li class="store-inquire-box current">
                                            <span class="iqst-input-txt">请输入所在地理位置：</span>
                                            <span id="city" class="iqst-city">上海</span>
                                            <span class="iqst-input"><input type="text" id="txtAddress"></span>
                                        </li>
                                        <li class="check-address"><span>未查到相关信息，请检查地址文字是否输入正确，重新在试。</span></li>
                                    </ul>--%>
                                </div>
                                <!--门店列表-->
                              <%--  <div class="wrap-content">
                                    <ul class="tabHF-content list-mendian">
                                        <!--第一页-->
                                        <li class="current" style="display: block;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">
                                                    <dd>
            <span sid="5" s="" add="速航路110号；接机位置：T1航站楼P1地下停车库B1层C10区（从到达大厅4号口走出，过马路至对面即到）" time="23" from_time="0"
                  rel="浦东机场T1店" p="021-68336816" locationtype="1" air="" class="hover">
                <em>浦东机场T1店</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>
                                                    <dd>
            <span sid="799" s="" add="取车：虹桥机场T2航站楼一楼到达大厅交通服务中心柜台；还车地址：虹桥机场P13停车场进出岗亭按喇叭即可，导航地址（申达一路）" time="23"
                  from_time="0" rel="虹桥机场T2店" p="18149790731" locationtype="1" air="">
                <em>虹桥机场T2店</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>
                                                    <dd>
            <span sid="1255" s="" add="上海南站北广场停车场入口（右转50米，A6区）" time="21" from_time="8" rel="上海南站店" p="021-64224407"
                  locationtype="3" air="接送机位置：上海南站到达东北出口（正对面，一嗨租车）">
                <em>上海南站店</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>
                                                    <dd>
            <span sid="1144" s="" add="秣陵路355号乙（上海铁路大厦旁）" time="21" from_time="8" rel="上海火车站店" p="021-51013275"
                  locationtype="3" air="接送机位置：上海铁路大厦酒店大门口（上海站西南出口出来右转直行200米）">
                <em>上海火车站店</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1031" s="*送车点" add="速航路110号；接机点：T2航站楼P2地下停车库B1层M1区（到达大厅往停车库P方向前行50m，乘电梯直达）" time="23"
                  from_time="0" rel="浦东机场T2送车点" p="021-68336816" locationtype="1" air="">
                <em>浦东机场T2送车点</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="722" s="*送车点" add="浦东机场启航路1100号" time="23" from_time="0" rel="浦机华美达酒店送车点" p="021-68336816"
                  locationtype="1" air="接送机位置：浦机华美达酒店大厅入口处">
                <em>浦机华美达酒店送车点</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="723" s="*送车点" add="迎宾大道6001号" time="19" from_time="9" rel="大众空港宾馆送车点" p="021-68336816"
                  locationtype="1" air="接送机位置：大众空港宾馆南楼或北楼大厅入口处">
                <em>大众空港宾馆送车点</em>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="724" s="*送车点" add="浦东国际机场机场大道850号" time="19" from_time="9" rel="浦机锦江二店送车点" p="021-68336816"
                  locationtype="1" air="接送机位置：浦机锦江之星二店大厅入口处">
                <em>浦机锦江二店送车点</em>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="725" s="*送车点" add="国际机场启航路8号" time="19" from_time="9" rel="浦机锦江一店送车点" p="021-68336816"
                  locationtype="1" air="">
                <em>浦机锦江一店送车点</em>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="1140" s="*送车点" add="浦东新区晨阳路450号（江镇东方现代广场对面）" time="19" from_time="9" rel="南航明珠大酒店送车点"
                  p="021-68336816" locationtype="1" air="">
                <em>南航明珠大酒店送车点</em>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="863" s="*送车点" add="虹桥机场T1航站楼到达P1停车库B2层2410-2414号车位接待点" time="23" from_time="0" rel="虹桥机场T1送车点"
                  p="18149790731" locationtype="1" air="接送机位置：虹桥机场T1航站楼到达P1停车库B1层旅客接送点（还车请至T1航站楼P1停车场B1层)">
                <em>虹桥机场T1送车点</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="3326" s="*送车点" add="动力南一路进石龙路（长途汽车南站入口处）" time="20" from_time="10" rel="上海南站南广场送车点"
                  p="021-64224407" locationtype="3" air="">
                <em>上海南站南广场送车点</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="4367" s="*送车点" add="大统路660号旁停车场内（沿大统路地道右侧的地面道路直行进停车场后右转）" time="19" from_time="9" rel="上海站北广场送车点"
                  p="021-51013275" locationtype="3" air="">
                <em>上海站北广场送车点</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="864" s="*送车点" add="虹桥机场申达一路P13停车场" time="23" from_time="0" rel="虹桥高铁送车点" p="18149790731"
                  locationtype="3" air="接送机位置：虹桥高铁到达厅B1层到达北1号门旁快捷巴士柜台处（还车请至申达一路P13停车场）">
                <em>虹桥高铁送车点</em>
                    <i class="allhour"></i>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="579" s="*送车点" add="盐仓路与盐平公路附近" time="19" from_time="9" rel="松江高铁南站送车点" p="021-67846646"
                  locationtype="3" air="">
                <em>松江高铁南站送车点</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="1338" s="*送车点" add="地铁11号线嘉定西站2号口" time="18" from_time="10" rel="嘉定西站送车点" p="021-59911866"
                  locationtype="3" air="">
                <em>嘉定西站送车点</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <!-- 第二页 -->


                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="886" s="" add="徐汇区斜土路2899号甲（光启文化广场内，进来第一个入口左转）" time="21" from_time="8" rel="八万人体育场店"
                  p="021-64160981" locationtype="0" air="" class="">
                <em>八万人体育场店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1255" s="" add="上海南站北广场停车场入口（右转50米，A6区）" time="21" from_time="8" rel="上海南站店" p="021-64224407"
                  locationtype="3" air="接送机位置：上海南站到达东北出口（正对面，一嗨租车）">
                <em>上海南站店</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="1322" s="" add="沪闵路8095-1号（虹梅商务大厦旁边）" time="21" from_time="8" rel="锦江乐园店" p="021-54247177"
                  locationtype="0" air="">
                <em>锦江乐园店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="3563" s="*送车点" add="徐汇区梅陇路130号华东理工大学南门" time="20" from_time="9" rel="华东理工大学送车点" p="021-64224407"
                  locationtype="0" air="">
                <em>华东理工大学送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3564" s="*送车点" add="徐汇区浦北路1号" time="20" from_time="9" rel="中星铂尔曼酒店送车点" p="021-64224407"
                  locationtype="0" air="">
                <em>中星铂尔曼酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3565" s="*送车点" add="徐汇区三江路68号（锦江之星龙漕路店）" time="20" from_time="9" rel="龙漕路锦江之星送车点"
                  p="021-64224407" locationtype="0" air="">
                <em>龙漕路锦江之星送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3326" s="*送车点" add="动力南一路进石龙路（长途汽车南站入口处）" time="20" from_time="10" rel="上海南站南广场送车点"
                  p="021-64224407" locationtype="3" air="">
                <em>上海南站南广场送车点</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="3327" s="*送车点" add="龙吴路1117号" time="19" from_time="10" rel="上海植物园送车点" p="021-64224407"
                  locationtype="0" air="">
                <em>上海植物园送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3328" s="*送车点" add="上中路495号" time="19" from_time="10" rel="汇达商务园送车点" p="021-64224407"
                  locationtype="0" air="">
                <em>汇达商务园送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3" s="*送车点" add="华石路103号" time="19" from_time="9" rel="徐家汇宜家送车点" p="021-64160981"
                  locationtype="0" air="">
                <em>徐家汇宜家送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="984" s="*送车点" add="零陵路800号万体馆5号门" time="19" from_time="9" rel="万体馆东亚车库送车点" p="021-64160981"
                  locationtype="0" air="">
                <em>万体馆东亚车库送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1626" s="*送车点" add="古宜路115号(群众艺术馆旁边、地铁9号线宜山路站5号出口)" time="20" from_time="9" rel="徐家汇送车点"
                  p="021-64160981" locationtype="0" air="">
                <em>徐家汇送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1175" s="*送车点" add="上中西路75号（嘿客店门口）" time="20" from_time="9" rel="上中西路嘿客送车点" p="021-64224407"
                  locationtype="0" air="">
                <em>上中西路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4397" s="*送车点" add="凌云路384号" time="20" from_time="9" rel="梅陇四村西门送车点" p="021-54247177"
                  locationtype="0" air="">
                <em>梅陇四村西门送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5657" s="*送车点" add="徐汇区田林路397号" time="19" from_time="9" rel="漕河泾万丽酒店送车点" p="021-64025726"
                  locationtype="0" air="">
                <em>漕河泾万丽酒店送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1400" s="" add="长寿路398号京沙停车场地下一层（永乐家电长寿路店正对面，地铁口7号线，13号线3号口）" time="21" from_time="8"
                  rel="亚新广场便捷点" p="021-52110651" locationtype="0" air="">
                <em>亚新广场便捷点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="3460" s="*送车点" add="余姚路靠近武宁南路（达安花园南门）" time="19" from_time="9" rel="曹家渡送车点" p="021-52110651"
                  locationtype="0" air="">
                <em>曹家渡送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3552" s="*送车点" add="曲阜路地铁站4号口" time="19" from_time="9" rel="静安区大悦城送车点" p="021-51013275"
                  locationtype="0" air="">
                <em>静安区大悦城送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1618" s="" add="瞿溪路968弄汇暻生活广场1-112-1（瞿溪路近鲁班路，地铁四号线鲁班路站2号出口，地面1层A6座对面进门即到）" time="21"
                  from_time="8" rel="瞿溪路店" p="021-63087003" locationtype="0" air="">
                <em>瞿溪路店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1731" s="*送车点" add="龙华东路749号（龙华东路与打浦路交叉口的中国石化加油站）" time="19" from_time="9" rel="海外滩中心送车点"
                  p="021-63087003" locationtype="0" air="">
                <em>海外滩中心送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1728" s="*送车点" add="打浦路1号（地铁9号线打浦桥站2、3号出口对面金玉兰广场）" time="19" from_time="9" rel="打浦桥送车点"
                  p="021-63087003" locationtype="0" air="">
                <em>打浦桥送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">
                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="3861" s="*送车点" add="外马路半淞园路交叉口" time="19" from_time="9" rel="南浦大桥客运站送车点" p="021-63087003"
                  locationtype="0" air="">
                <em>南浦大桥客运站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3862" s="*送车点" add="龙华东路蒙自路交叉口" time="19" from_time="9" rel="世博会博物馆站送车点" p="021-63087003"
                  locationtype="0" air="">
                <em>世博会博物馆站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3863" s="*送车点" add="大林路（近西藏南路），地铁8、9号线4号口" time="19" from_time="9" rel="陆家浜路站送车点"
                  p="021-63087003" locationtype="0" air="">
                <em>陆家浜路站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5821" s="*送车点" add="南京东路地铁站6号口" time="18" from_time="9" rel="南京东路地铁站送车点" p="021-51013275"
                  locationtype="0" air="">
                <em>南京东路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5822" s="*送车点" add="新昌路/南京西路（新昌路全家便利店门口）" time="18" from_time="9" rel="黄浦区人民广场送车点"
                  p="021-51013275" locationtype="0" air="">
                <em>黄浦区人民广场送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="4917" s="" add="上海市浦东新区申江路288号，五洲大道申江路交汇处" time="18" from_time="9" rel="永达奥诚申江便捷点"
                  p="15720820853" locationtype="0" air="">
                <em>永达奥诚申江便捷点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3358" s="" add="秀浦路3018号（地铁11号线康新公路站2号口旁）" time="21" from_time="8" rel="康新公路站便捷点" p="13162240159"
                  locationtype="0" air="">
                <em>康新公路站便捷点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3359" s="" add="华夏东路地铁站5号口（华夏东路和青艺路交叉口）" time="21" from_time="8" rel="川沙华夏东路便捷点" p="13062720317"
                  locationtype="0" air="">
                <em>川沙华夏东路便捷点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4864" s="" add="浦东新区惠南镇拱北路598号（南祝路拱北路交口）" time="21" from_time="8" rel="惠南店" p="021-61583226"
                  locationtype="0" air="">
                <em>惠南店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="615" s="" add="上海市浦东新区启帆路271号1楼" time="21" from_time="8" rel="洲海路店" p="021-68367696"
                  locationtype="0" air="">
                <em>洲海路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1211" s="" add="浦东新区华绣路267号" time="21" from_time="8" rel="华绣路店" p="021-68390726" locationtype="0"
                  air="">
                <em>华绣路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1213" s="" add="浦东新区齐河路沃尔玛顶层停车场内" time="21" from_time="8" rel="齐河路沃尔玛便捷点" p="19945656922"
                  locationtype="0" air="">
                <em>齐河路沃尔玛便捷点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="660" s="" add="东方路8号雅典皇宫酒店旁（东方路昌邑路）" time="21" from_time="8" rel="浦东大道便捷点" p="13020138653"
                  locationtype="0" air="">
                <em>浦东大道便捷点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="391" s="" add="张杨北路529号" time="21" from_time="8" rel="金桥店" p="021-50175866" locationtype="0"
                  air="">
                <em>金桥店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="855" s="" add="上南路3817号(上南路和杨南路交口)" time="21" from_time="8" rel="上南路店" p="021-58567278"
                  locationtype="0" air="">
                <em>上南路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="970" s="" add="上南路6872号(上南路沪南公路)" time="21" from_time="8" rel="周浦店" p="021-68072615"
                  locationtype="0" air="">
                <em>周浦店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5" s="" add="速航路110号；接机位置：T1航站楼P1地下停车库B1层C10区（从到达大厅4号口走出，过马路至对面即到）" time="23" from_time="0"
                  rel="浦东机场T1店" p="021-68336816" locationtype="1" air="">
                <em>浦东机场T1店</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="87" s="" add="亮秀路/湖秀路口(门店由湖秀路进入)" time="21" from_time="8" rel="张江店" p="021-50898682"
                  locationtype="0" air="">
                <em>张江店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="533" s="" add="杜鹃路24号" time="21" from_time="8" rel="浦建路店" p="021-50281139" locationtype="0"
                  air="">
                <em>浦建路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1244" s="" add="杨高中路2128号（近四方路，卜蜂莲花停车场3号口直行50米左侧）" time="21" from_time="8" rel="杨高中路便捷点"
                  p="021-58421106" locationtype="0" air="">
                <em>杨高中路便捷点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="4769" s="*送车点" add="上海市浦东新区北中路187弄15号" time="19" from_time="9" rel="北蔡休闲广场送车点" p="021-68390726"
                  locationtype="0" air="">
                <em>北蔡休闲广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4770" s="*送车点" add="上海市浦东新区高青路2617号" time="19" from_time="9" rel="家乐福新里城店送车点" p="021-68390726"
                  locationtype="0" air="">
                <em>家乐福新里城店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4771" s="*送车点" add="上海市浦东新区西营路98号" time="19" from_time="9" rel="农工商超市送车点" p="19945656922"
                  locationtype="0" air="">
                <em>农工商超市送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4955" s="*送车点" add="上海市浦东新区张杨路2757号" time="18" from_time="9" rel="永达奥诚张杨路送车点" p="021-58421106"
                  locationtype="0" air="">
                <em>永达奥诚张杨路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3440" s="*送车点" add="上海市浦东新区康桥镇秀沿路1028弄" time="19" from_time="10" rel="康桥大润发送车点" p="021-68072615"
                  locationtype="0" air="">
                <em>康桥大润发送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3019" s="*送车点" add="秀浦路叠桥路" time="19" from_time="10" rel="康桥诺富特酒店送车点" p="13162240159"
                  locationtype="0" air="">
                <em>康桥诺富特酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4376" s="*送车点" add="4号线塘桥站3号出口" time="19" from_time="9" rel="塘桥站送车点" p="021-50281139"
                  locationtype="0" air="">
                <em>塘桥站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4377" s="*送车点" add="花园石桥路，银城中路交叉口" time="19" from_time="9" rel="金茂大厦送车点" p="13020138653"
                  locationtype="0" air="">
                <em>金茂大厦送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3060" s="*送车点" add="上海市浦东新区周园路年家浜路口" time="19" from_time="10" rel="绿地缤纷广场送车点" p="021-68072615"
                  locationtype="0" air="">
                <em>绿地缤纷广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4350" s="*送车点" add="上海市浦东新区博华路999弄1-116号" time="19" from_time="9" rel="绿川新村送车点" p="021-68390726"
                  locationtype="0" air="">
                <em>绿川新村送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4351" s="*送车点" add="上海市浦东新区浦三路208号（浦三路与临沂路交汇处）" time="19" from_time="9" rel="浦三路锦江之星送车点"
                  p="021-68390726" locationtype="0" air="">
                <em>浦三路锦江之星送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3207" s="*送车点" add="浦东新区申迪西路" time="19" from_time="10" rel="玩具总动员酒店送车点" p="13162240159"
                  locationtype="0" air="">
                <em>玩具总动员酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3205" s="*送车点" add="浦东新区西环路" time="19" from_time="10" rel="迪士尼乐园酒店送车点" p="13162240159"
                  locationtype="0" air="">
                <em>迪士尼乐园酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4342" s="*送车点" add="上海市浦东新区永泰路1138号(沃尔玛超市入口)" time="19" from_time="9" rel="三林城市广场送车点"
                  p="021-58567278" locationtype="0" air="">
                <em>三林城市广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4343" s="*送车点" add="上海市浦东新区云台路800号（板泉路与云台路交汇处）" time="19" from_time="9" rel="亿丰时代广场送车点"
                  p="021-58567278" locationtype="0" air="">
                <em>亿丰时代广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3987" s="*送车点" add="康新公路4528号" time="19" from_time="9" rel="康新公路ABB送车点" p="13162240159"
                  locationtype="0" air="">
                <em>康新公路ABB送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3988" s="*送车点" add="周祝公路2445号" time="19" from_time="9" rel="南六公路汉庭送车点" p="13162240159"
                  locationtype="0" air="">
                <em>南六公路汉庭送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3989" s="*送车点" add="秀浦路3999弄" time="19" from_time="9" rel="度假区万怡酒店送车点" p="13162240159"
                  locationtype="0" air="">
                <em>度假区万怡酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3990" s="*送车点" add="秀沿路2532号" time="19" from_time="9" rel="秀沿路全季酒店送车点" p="13162240159"
                  locationtype="0" air="">
                <em>秀沿路全季酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3991" s="*送车点" add="迪士尼官方停车场临时上下客区" time="19" from_time="9" rel="迪士尼停车场送车点" p="13162240159"
                  locationtype="0" air="">
                <em>迪士尼停车场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3992" s="*送车点" add="川周公路2689号" time="19" from_time="9" rel="康桥凯莱酒店送车点" p="13162240159"
                  locationtype="0" air="">
                <em>康桥凯莱酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5051" s="*送车点" add="灵感街99弄233号（奕欧来国际旅游度假区创意停车场）" time="19" from_time="9" rel="P3创意停车场送车点"
                  p="13162240159" locationtype="0" air="">
                <em>P3创意停车场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1638" s="*送车点" add="广兰路1112号（嘿客店门口）" time="19" from_time="9" rel="广兰路格林豪泰送车点" p="021-50898682"
                  locationtype="0" air="">
                <em>广兰路格林豪泰送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1640" s="*送车点" add="2号线、磁悬浮列车、16号线龙阳路站" time="19" from_time="9" rel="龙阳路交通枢纽送车点" p="021-50281139"
                  locationtype="0" air="">
                <em>龙阳路交通枢纽送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1658" s="*送车点" add="长岛路1273号（嘿客店门口）" time="19" from_time="9" rel="长岛路嘿客送车点" p="021-50175866"
                  locationtype="0" air="">
                <em>长岛路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1661" s="*送车点" add="新园路98弄17号（嘿客店门口）" time="18" from_time="9" rel="月亮湾广场嘿客送车点" p="021-68367696"
                  locationtype="0" air="">
                <em>月亮湾广场嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5112" s="*送车点" add="地铁16号线惠南站1号口（南祝路拱极路交口）" time="19" from_time="10" rel="惠南地铁站送车点"
                  p="021-61583226" locationtype="0" air="">
                <em>惠南地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1031" s="*送车点" add="速航路110号；接机点：T2航站楼P2地下停车库B1层M1区（到达大厅往停车库P方向前行50m，乘电梯直达）" time="23"
                  from_time="0" rel="浦东机场T2送车点" p="021-68336816" locationtype="1" air="">
                <em>浦东机场T2送车点</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="632" s="*送车点" add="川沙路 新德路路口" time="19" from_time="9" rel="川沙农工商送车点" p="13062720317"
                  locationtype="0" air="">
                <em>川沙农工商送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="9" s="*送车点" add="福山路388号（福山路向城路路口）" time="19" from_time="9" rel="宏嘉大厦送车点" p="13020138653"
                  locationtype="0" air="">
                <em>宏嘉大厦送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="717" s="*送车点" add="夏碧路季景路交汇处" time="19" from_time="9" rel="外高桥世纪联华送车点" p="021-68367696"
                  locationtype="0" air="">
                <em>外高桥世纪联华送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1000" s="*送车点" add="2号线世纪公园站3号出口" time="19" from_time="9" rel="世纪公园地铁站送车点" p="021-50281139"
                  locationtype="0" air="">
                <em>世纪公园地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="758" s="*送车点" add="地铁2号线川沙站(川环南路和川沙路交口)" time="19" from_time="9" rel="川沙地铁站送车点" p="13062720317"
                  locationtype="0" air="">
                <em>川沙地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="722" s="*送车点" add="浦东机场启航路1100号" time="23" from_time="0" rel="浦机华美达酒店送车点" p="021-68336816"
                  locationtype="1" air="接送机位置：浦机华美达酒店大厅入口处">
                <em>浦机华美达酒店送车点</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="723" s="*送车点" add="迎宾大道6001号" time="19" from_time="9" rel="大众空港宾馆送车点" p="021-68336816"
                  locationtype="1" air="接送机位置：大众空港宾馆南楼或北楼大厅入口处">
                <em>大众空港宾馆送车点</em>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="724" s="*送车点" add="浦东国际机场机场大道850号" time="19" from_time="9" rel="浦机锦江二店送车点" p="021-68336816"
                  locationtype="1" air="接送机位置：浦机锦江之星二店大厅入口处">
                <em>浦机锦江二店送车点</em>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="725" s="*送车点" add="国际机场启航路8号" time="19" from_time="9" rel="浦机锦江一店送车点" p="021-68336816"
                  locationtype="1" air="">
                <em>浦机锦江一店送车点</em>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="874" s="*送车点" add="科苑路88号(李时珍路科苑路路口)" time="19" from_time="9" rel="张江德国中心送车点" p="021-50898682"
                  locationtype="0" air="">
                <em>张江德国中心送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="875" s="*送车点" add="祖冲之路哈雷路路口（地铁1号口出）(送车点)" time="19" from_time="9" rel="金科路地铁站送车点"
                  p="021-50898682" locationtype="0" air="">
                <em>金科路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2042" s="*送车点" add="康杉路108弄3号" time="18" from_time="9" rel="开新御桥路店送车点" p="021-68390726"
                  locationtype="0" air="">
                <em>开新御桥路店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2043" s="*送车点" add="浦建路1352号" time="18" from_time="9" rel="开新浦建路店送车点" p="021-50281139"
                  locationtype="0" air="">
                <em>开新浦建路店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="185" s="*送车点" add="耀华路7号线&amp;8号线地铁站3号口靠近上南路" time="19" from_time="9" rel="耀华路地铁送车点"
                  p="19945656922" locationtype="0" air="">
                <em>耀华路地铁送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="187" s="*送车点" add="上海市浦东新区张杨路3611号" time="19" from_time="9" rel="金桥商业广场送车点" p="021-50175866"
                  locationtype="0" air="">
                <em>金桥商业广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="188" s="*送车点" add="上海市浦东新区草高支路651号" time="19" from_time="9" rel="外高桥港城路地铁站送车点" p="021-68367696"
                  locationtype="0" air="">
                <em>外高桥港城路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="254" s="*送车点" add="上南路3521号1楼商场2号门口靠近肯德基边门旁" time="19" from_time="9" rel="卜蜂莲花上南店送车点"
                  p="021-58567278" locationtype="0" air="">
                <em>卜蜂莲花上南店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="255" s="*送车点" add="江月路1800号" time="19" from_time="9" rel="卜蜂莲花浦江店送车点" p="021-54733699"
                  locationtype="0" air="">
                <em>卜蜂莲花浦江店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1624" s="*送车点" add="高科西路严中路口" time="19" from_time="9" rel="严中路沃尔玛送车点" p="021-68390726"
                  locationtype="0" air="">
                <em>严中路沃尔玛送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1614" s="*送车点" add="建韵路500号" time="19" from_time="10" rel="天纳商汇送车点" p="021-68072615"
                  locationtype="0" air="">
                <em>天纳商汇送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1635" s="*送车点" add="板泉路2110号1层（嘿客店门口）" time="19" from_time="9" rel="板泉路嘿客送车点" p="021-68390726"
                  locationtype="0" air="">
                <em>板泉路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1206" s="*送车点" add="浦东白桦路260号1楼底层" time="19" from_time="9" rel="碧云送车点" p="021-58421106"
                  locationtype="0" air="">
                <em>碧云送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1140" s="*送车点" add="浦东新区晨阳路450号（江镇东方现代广场对面）" time="19" from_time="9" rel="南航明珠大酒店送车点"
                  p="021-68336816" locationtype="1" air="">
                <em>南航明珠大酒店送车点</em>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="1550" s="*送车点" add="年家浜路康沈路（公车站）" time="19" from_time="10" rel="小上海送车点" p="021-68072615"
                  locationtype="0" air="">
                <em>小上海送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1311" s="*送车点" add="施新路256弄1号（接车点：沃尔玛超市停车库入口处）" time="19" from_time="9" rel="施湾沃尔玛送车点"
                  p="021-68336816" locationtype="0" air="">
                <em>施湾沃尔玛送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1410" s="*送车点" add="昌里路337号（昌里路和历城路交口）" time="19" from_time="9" rel="浦东商场送车点" p="19945656922"
                  locationtype="0" air="">
                <em>浦东商场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1411" s="*送车点" add="地铁6号线东明路站2号口（成山路和东明路交口）" time="19" from_time="9" rel="东明地铁站送车点"
                  p="19945656922" locationtype="0" air="">
                <em>东明地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1412" s="*送车点" add="长清路杨新路（公交车站旁）" time="19" from_time="9" rel="恒大华城广场送车点" p="19945656922"
                  locationtype="0" air="">
                <em>恒大华城广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1413" s="*送车点" add="齐河路258号近云台路" time="19" from_time="9" rel="齐河路沃尔玛送车点" p="19945656922"
                  locationtype="0" air="">
                <em>齐河路沃尔玛送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2236" s="*送车点" add="浦建路1281号(近牡丹路)" time="18" from_time="9" rel="东昌别克4S店送车点" p="021-50281139"
                  locationtype="0" air="">
                <em>东昌别克4S店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2161" s="*送车点" add="接送点：东靖路1881号万嘉商业广场东靖路新行路路口（交接位置：草高支路340号）" time="19" from_time="9"
                  rel="高行沃尔玛送车点" p="021-68367696" locationtype="0" air="">
                <em>高行沃尔玛送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2162" s="*送车点" add="接送点：张杨北路庭安路路口（交接位置：草高支路340号）" time="19" from_time="9" rel="高行绿洲社区送车点"
                  p="021-68367696" locationtype="0" air="">
                <em>高行绿洲社区送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1245" s="*送车点" add="接送点：张杨路999弄（交接位置：浦东白桦路260号1楼底层）" time="18" from_time="9" rel="云山星座苑送车点"
                  p="021-58421106" locationtype="0" air="">
                <em>云山星座苑送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4041" s="*送车点" add="唐镇地铁站-公交站处" time="19" from_time="9" rel="唐镇地铁站送车点" p="13062720317"
                  locationtype="0" air="">
                <em>唐镇地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5517" s="*送车点" add="浦东新区启帆路628号（靠近张扬北路口）" time="20" from_time="9" rel="森兰商都送车点" p="021-68367696"
                  locationtype="0" air="">
                <em>森兰商都送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1401" s="" add="古北路21号一层(靠近古北路长宁路口,古北路桥下)" time="21" from_time="8" rel="长宁店" p="021-62089599"
                  locationtype="0" air="">
                <em>长宁店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="205" s="" add="蒲淞北路21号(近天山西路)" time="21" from_time="8" rel="北新泾店" p="021-62338565"
                  locationtype="0" air="">
                <em>北新泾店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="40" s="" add="凯旋路413号(中山公园96路公交总站对过轻轨下)" time="21" from_time="8" rel="中山公园店" p="021-62607389"
                  locationtype="0" air="">
                <em>中山公园店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="898" s="*送车点" add="仙霞西路88号(剑河路交汇处)" time="19" from_time="9" rel="百联西郊送车点" p="021-62338565"
                  locationtype="0" air="">
                <em>百联西郊送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2278" s="*送车点" add="凯旋路延安西路" time="19" from_time="9" rel="延安西路地铁站送车点" p="021-62607389"
                  locationtype="0" air="">
                <em>延安西路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2279" s="*送车点" add="凯旋路虹桥路" time="19" from_time="9" rel="虹桥路地铁站送车点" p="021-62607389"
                  locationtype="0" air="">
                <em>虹桥路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2248" s="*送车点" add="天山西路淞虹路交叉路口" time="19" from_time="9" rel="淞虹路地铁站送车点" p="021-62338565"
                  locationtype="0" air="">
                <em>淞虹路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2249" s="*送车点" add="水城路虹桥路（水城路地铁站1号口）" time="19" from_time="9" rel="水城路地铁站送车点" p="021-62089599"
                  locationtype="0" air="">
                <em>水城路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1686" s="*送车点" add="新渔东路316号靠近安龙路（嘿客店门口）" time="19" from_time="9" rel="新渔东路嘿客送车点"
                  p="021-62338565" locationtype="0" air="">
                <em>新渔东路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="982" s="*送车点" add="凯旋路413号(中山公园96路公交总站对过轻轨下)" time="21" from_time="8" rel="中山公园送车点"
                  p="021-62607389" locationtype="0" air="">
                <em>中山公园送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="620" s="" add="天宝路1028号近四平路" time="21" from_time="8" rel="四平路店" p="021-63060989" locationtype="0"
                  air="">
                <em>四平路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="613" s="" add="新同心路220号近广中路" time="21" from_time="8" rel="新同心路店" p="021-36532683"
                  locationtype="0" air="">
                <em>新同心路店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1660" s="*送车点" add="上海虹口区天虹路623号地铁4号线临平路站2号出口" time="19" from_time="9" rel="临平路地铁送车点"
                  p="021-63060989" locationtype="0" air="">
                <em>临平路地铁送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1655" s="*送车点" add="虹口区逸仙路614号（日升停车场）" time="18" from_time="10" rel="江湾镇地铁站送车点" p="021-65062009"
                  locationtype="0" air="">
                <em>江湾镇地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1652" s="*送车点" add="广灵四路308号（嘿客店门口）" time="19" from_time="9" rel="广灵四路嘿客送车点" p="021-36532683"
                  locationtype="0" air="">
                <em>广灵四路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1653" s="*送车点" add="东体育会路886号（嘿客店门口）" time="19" from_time="9" rel="东体育会路嘿客送车点" p="021-36532683"
                  locationtype="0" air="">
                <em>东体育会路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="266" s="*送车点" add="新港路245号1楼商场大门左侧靠近上行自动扶梯对面" time="19" from_time="9" rel="卜蜂莲花新港店送车点"
                  p="021-63060989" locationtype="0" air="">
                <em>卜蜂莲花新港店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1339" s="*送车点" add="四川北路1888号(四川北路多伦路路口)" time="19" from_time="9" rel="四川北路送车点" p="021-36532683"
                  locationtype="0" air="">
                <em>四川北路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2079" s="*送车点" add="东江湾路444号（虹口足球场4号门门口）" time="19" from_time="9" rel="虹口足球场送车点" p="021-36532683"
                  locationtype="0" air="">
                <em>虹口足球场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1402" s="*送车点" add="上海虹口区广粤路418号麦德龙商场" time="19" from_time="9" rel="广粤路麦德龙送车点" p="021-36532683"
                  locationtype="0" air="">
                <em>广粤路麦德龙送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="192" s="*送车点" add="四平路8号线和10号线地铁站1号口靠近肯德基门口" time="19" from_time="9" rel="四平路地铁送车点"
                  p="021-63060989" locationtype="0" air="">
                <em>四平路地铁送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4872" s="*送车点" add="赤峰路150号" time="18" from_time="9" rel="同继大众赤峰路送车点" p="021-63060989"
                  locationtype="0" air="">
                <em>同继大众赤峰路送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1144" s="" add="秣陵路355号乙（上海铁路大厦旁）" time="21" from_time="8" rel="上海火车站店" p="021-51013275"
                  locationtype="3" air="接送机位置：上海铁路大厦酒店大门口（上海站西南出口出来右转直行200米）">
                <em>上海火车站店</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="34" s="" add="共和新路2750号(近灵石路口,地铁1号线4号出口)" time="21" from_time="8" rel="马戏城店" p="021-66302501"
                  locationtype="0" air="">
                <em>马戏城店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="2405" s="*送车点" add="高平路598弄（卜蜂莲花对面）" time="18" from_time="9" rel="高平路阳城美景小区送车点" p="021-66302501"
                  locationtype="0" air="">
                <em>高平路阳城美景小区送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1648" s="*送车点" add="洛川中路733号" time="18" from_time="9" rel="洛川中路送车点" p="021-66302501"
                  locationtype="0" air="">
                <em>洛川中路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4367" s="*送车点" add="大统路660号旁停车场内（沿大统路地道右侧的地面道路直行进停车场后右转）" time="19" from_time="9" rel="上海站北广场送车点"
                  p="021-51013275" locationtype="3" air="">
                <em>上海站北广场送车点</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1590" s="" add="杨浦区民府路475号（靠近闸殷路）" time="21" from_time="8" rel="三门路店" p="021-65062009"
                  locationtype="0" air="">
                <em>三门路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1510" s="" add="周家嘴路2077号(周家嘴路和许昌路路口)" time="21" from_time="8" rel="周家嘴店" p="021-35322206"
                  locationtype="0" air="">
                <em>周家嘴店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="90" s="" add="杨浦区佳木斯路777号（地下车库P2）" time="21" from_time="8" rel="黄兴公园小南国便捷点" p="021-55093063"
                  locationtype="0" air="">
                <em>黄兴公园小南国便捷点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1656" s="*送车点" add="长阳路1646号（嘿客店门口）" time="19" from_time="9" rel="长阳路嘿客送车点" p="021-35322206"
                  locationtype="0" air="">
                <em>长阳路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1657" s="*送车点" add="周家嘴路2130号（嘿客店门口）" time="19" from_time="9" rel="周家嘴路嘿客送车点" p="021-35322206"
                  locationtype="0" air="">
                <em>周家嘴路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1659" s="*送车点" add="控江路1155号" time="18" from_time="9" rel="杨浦大剧院送车点" p="021-35322206"
                  locationtype="0" air="">
                <em>杨浦大剧院送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="747" s="*送车点" add="营口路669号，地铁2号出口（上汽名爵4S店门口）" time="19" from_time="9" rel="黄兴公园地铁站送车点"
                  p="021-55093063" locationtype="0" air="">
                <em>黄兴公园地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1654" s="*送车点" add="政立路651号（嘿客店门口）" time="19" from_time="9" rel="政立路嘿客送车点" p="021-65062009"
                  locationtype="0" air="">
                <em>政立路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1208" s="*送车点" add="大连路地铁站1号口（宝地广场）" time="19" from_time="9" rel="大连路地铁站送车点" p="021-35322206"
                  locationtype="0" air="">
                <em>大连路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1390" s="" add="金沙江路2123号（13号线祁连山南路地铁站2号出口向东150米左右，浣沙时尚酒店楼下）" time="21" from_time="8" rel="金沙江路店"
                  p="021-62567790" locationtype="0" air="">
                <em>金沙江路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="788" s="" add="白丽路107号靠近红棉路(桃浦新村地铁站2号口出来红棉路往南走约200米)" time="21" from_time="8" rel="桃浦店"
                  p="021-56529676" locationtype="0" air="">
                <em>桃浦店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="614" s="" add="真北路3045号" time="21" from_time="8" rel="大华店" p="021-62500806" locationtype="0"
                  air="">
                <em>大华店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="195" s="*送车点" add="曹杨路3号线和4号线地铁站2号口" time="19" from_time="9" rel="曹杨路地铁送车点" p="021-62607389"
                  locationtype="0" air="">
                <em>曹杨路地铁送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2277" s="*送车点" add="宁夏路金沙江路" time="19" from_time="9" rel="金沙江路地铁站送车点" p="021-62607389"
                  locationtype="0" air="">
                <em>金沙江路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1094" s="*送车点" add="云岭东路近大渡河路（公交车站处）" time="19" from_time="9" rel="长风景畔广场送车点" p="021-62089599"
                  locationtype="0" air="">
                <em>长风景畔广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1539" s="*送车点" add="金沙江路与祁连山南路交叉口（祁连山南路地铁站3号出口）" time="19" from_time="9" rel="祁连山南路送车点"
                  p="021-62567790" locationtype="0" air="">
                <em>祁连山南路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1684" s="*送车点" add="桃浦路693号（嘿客店门口）" time="19" from_time="9" rel="桃浦路嘿客送车点" p="021-62567790"
                  locationtype="0" air="">
                <em>桃浦路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1631" s="*送车点" add="新村路1292号（嘿客店门口）" time="19" from_time="9" rel="新村路嘿客送车点" p="021-62500806"
                  locationtype="0" air="">
                <em>新村路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1266" s="*送车点" add="李子园地铁站1号口（真南路与交通路交叉口）" time="19" from_time="9" rel="李子园地铁站送车点"
                  p="021-62500806" locationtype="0" air="">
                <em>李子园地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1210" s="*送车点" add="祁连山路地铁站2号出口" time="19" from_time="9" rel="祁连山路地铁站送车点" p="021-56529676"
                  locationtype="0" air="">
                <em>祁连山路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="716" s="*送车点" add="武威东路祁顺路路口" time="19" from_time="9" rel="祁顺路送车点" p="021-62500806"
                  locationtype="0" air="">
                <em>祁顺路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1165" s="*送车点" add="中潭路地铁站（1、2号出口停车场）" time="19" from_time="9" rel="中潭路地铁站送车点" p="021-51013275"
                  locationtype="0" air="">
                <em>中潭路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5438" s="*送车点" add="真北路3045号（该位置属于门店停车场）" time="19" from_time="9" rel="真北路公兴搬场送车点"
                  p="021-62500806" locationtype="0" air="">
                <em>真北路公兴搬场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5882" s="*送车点" add="普陀区真北路2158号" time="19" from_time="9" rel="奥迪铜川路送车点" p="021-62500806"
                  locationtype="0" air="">
                <em>奥迪铜川路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5623" s="*送车点" add="武威东路294号（原大华店）" time="19" from_time="9" rel="一嗨大华店原址送车点" p="021-62500806"
                  locationtype="0" air="">
                <em>一嗨大华店原址送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4888" s="*送车点" add="上海市普陀区红柳路233号" time="18" from_time="9" rel="众国宝鸿宝马送车点" p="021-56529676"
                  locationtype="0" air="">
                <em>众国宝鸿宝马送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4378" s="*送车点" add="上海市普陀区东新路88弄" time="19" from_time="9" rel="新湖明珠城送车点" p="021-52110651"
                  locationtype="0" air="">
                <em>新湖明珠城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4379" s="*送车点" add="上海市普陀区石泉东路168弄" time="19" from_time="9" rel="香溢花城送车点" p="021-52110651"
                  locationtype="0" air="">
                <em>香溢花城送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="887" s="" add="漕宝路1245号(莲花路漕宝路往西100米，宏源停车场内）" time="21" from_time="8" rel="漕宝路店" p="021-64159708"
                  locationtype="0" air="">
                <em>漕宝路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="675" s="" add="虹井路610号(红松路和虹井路路口,龙柏一村对面)" time="21" from_time="8" rel="龙柏店" p="021-54392606"
                  locationtype="0" air="">
                <em>龙柏店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="45" s="" add="闵行区珠城路99弄14号（富都路闵城路路口）" time="21" from_time="8" rel="莘庄店" p="021-64603417"
                  locationtype="0" air="">
                <em>莘庄店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1324" s="" add="龙茗路2789号1层(靠近9号线合川路站)" time="21" from_time="8" rel="静安新城店" p="021-64025726"
                  locationtype="0" air="">
                <em>静安新城店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1454" s="" add="东川路2065号(金海马家具广场对面)" time="21" from_time="8" rel="老闵行店" p="021-33505288"
                  locationtype="0" air="">
                <em>老闵行店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1778" s="" add="江月路1500号内（汽配城内2幢，地铁8号线1号口）" time="21" from_time="8" rel="浦江店" p="021-54733699"
                  locationtype="0" air="">
                <em>浦江店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1323" s="" add="吴中路2370号（10号线航中路站4号口对面)" time="21" from_time="8" rel="七宝店" p="021-54337309"
                  locationtype="0" air="">
                <em>七宝店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="799" s="" add="取车：虹桥机场T2航站楼一楼到达大厅交通服务中心柜台；还车地址：虹桥机场P13停车场进出岗亭按喇叭即可，导航地址（申达一路）" time="23"
                  from_time="0" rel="虹桥机场T2店" p="18149790731" locationtype="1" air="">
                <em>虹桥机场T2店</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="4371" s="*送车点" add="七宝镇沪星路105号" time="19" from_time="9" rel="七宝车配龙广场送车点" p="021-54337309"
                  locationtype="0" air="">
                <em>七宝车配龙广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4372" s="*送车点" add="上海市闵行区新镇路456号" time="19" from_time="9" rel="闵行体育公园送车点" p="021-54337309"
                  locationtype="0" air="">
                <em>闵行体育公园送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4373" s="*送车点" add="上海市闵行区龙茗路1650号" time="19" from_time="10" rel="莫泰168酒店送车点" p="021-64025726"
                  locationtype="0" air="">
                <em>莫泰168酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4374" s="*送车点" add="上海市闵行区宜山路合川路地铁站" time="19" from_time="10" rel="合川路地铁站送车点" p="021-64025726"
                  locationtype="0" air="">
                <em>合川路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4874" s="*送车点" add="上海市闵行区浦江镇联航路1239号" time="18" from_time="9" rel="浦江别克4S店送车点" p="021-54733699"
                  locationtype="0" air="">
                <em>浦江别克4S店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4398" s="*送车点" add="顾戴路80号" time="20" from_time="9" rel="闵行麦德龙送车点" p="021-54247177"
                  locationtype="0" air="">
                <em>闵行麦德龙送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4399" s="*送车点" add="全州路39" time="20" from_time="9" rel="徐汇华悦家园送车点" p="021-64159708"
                  locationtype="0" air="">
                <em>徐汇华悦家园送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4395" s="*送车点" add="虹桥路2381号（靠近虹井路口）" time="19" from_time="10" rel="上海动物园站送车点" p="021-54392606"
                  locationtype="0" air="">
                <em>上海动物园站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4396" s="*送车点" add="虹中路535号" time="19" from_time="10" rel="剑河路沃尔玛送车点" p="021-54392606"
                  locationtype="0" air="">
                <em>剑河路沃尔玛送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5658" s="*送车点" add="闵行区吴中路729号" time="19" from_time="9" rel="全季酒店（吴中路店）送车点" p="021-64025726"
                  locationtype="0" air="">
                <em>全季酒店（吴中路店）送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2597" s="*送车点" add="莲花南路2338号4幢" time="16" from_time="10" rel="林肯4S店送车点" p="021-64603417"
                  locationtype="0" air="">
                <em>林肯4S店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5477" s="*送车点" add="闵行区吴中路1799号" time="19" from_time="9" rel="闵行区万象城送车点" p="021-64025726"
                  locationtype="0" air="">
                <em>闵行区万象城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5478" s="*送车点" add="闵行区虹莘路3005号" time="19" from_time="9" rel="星宝广场送车点" p="021-64025726"
                  locationtype="0" air="">
                <em>星宝广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1673" s="*送车点" add="闵行区万源路932号" time="17" from_time="9" rel="万源城送车点" p="021-64159708"
                  locationtype="0" air="">
                <em>万源城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4465" s="*送车点" add="江文路浦江中心休闲广场一层" time="19" from_time="10" rel="江文路国美接送点" p="021-54733699"
                  locationtype="0" air="">
                <em>江文路国美接送点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4487" s="*送车点" add="七宝9号线中春路地铁站2号口" time="19" from_time="9" rel="中春路地铁站送车点" p="021-54337309"
                  locationtype="0" air="">
                <em>中春路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4407" s="*送车点" add="北华路168弄金色西郊城西北门" time="18" from_time="10" rel="金色西郊城送车点" p="021-69002120"
                  locationtype="0" air="">
                <em>金色西郊城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="888" s="*送车点" add="七莘路3060号(工商银行门口,近漕宝路)" time="19" from_time="9" rel="七宝站6号口送车点"
                  p="021-54337309" locationtype="0" air="">
                <em>七宝站6号口送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2041" s="*送车点" add="吴中路1876号" time="18" from_time="9" rel="开新吴中路店送车点" p="021-54392606"
                  locationtype="0" air="">
                <em>开新吴中路店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2111" s="*送车点" add="上海市闵行区水清南路19号近莘建东路（平安银行）门口" time="17" from_time="10" rel="莘庄站北广场送车点"
                  p="021-64603417" locationtype="0" air="">
                <em>莘庄站北广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2113" s="*送车点" add="沪闵路颛桥地铁站" time="16" from_time="10" rel="颛桥地铁站送车点" p="021-64603417"
                  locationtype="0" air="">
                <em>颛桥地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2115" s="*送车点" add="沪闵路剑川路地铁站" time="20" from_time="10" rel="剑川路地铁站送车点" p="021-33505288"
                  locationtype="0" air="">
                <em>剑川路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2116" s="*送车点" add="沪闵路东川路地铁站" time="20" from_time="10" rel="东川路地铁站送车点" p="021-33505288"
                  locationtype="0" air="">
                <em>东川路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2117" s="*送车点" add="沪闵路金平路地铁站" time="19" from_time="9" rel="金平路地铁站送车点" p="021-33505288"
                  locationtype="0" air="">
                <em>金平路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1665" s="*送车点" add="上中西路1285弄7号（嘿客店门口）" time="19" from_time="9" rel="梅陇城送车点" p="021-54247177"
                  locationtype="0" air="">
                <em>梅陇城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1667" s="*送车点" add="罗秀路1352-3号（嘿客店门口）" time="19" from_time="9" rel="罗秀路送车点" p="021-54247177"
                  locationtype="0" air="">
                <em>罗秀路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1668" s="*送车点" add="红松路348号（嘿客店门口）" time="19" from_time="9" rel="红松路嘿客送车点" p="021-54392606"
                  locationtype="0" air="">
                <em>红松路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1669" s="*送车点" add="航华路190号（嘿客店门口）" time="19" from_time="9" rel="航东路嘿客送车点" p="021-54337309"
                  locationtype="0" air="">
                <em>航东路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1670" s="*送车点" add="七莘路2855弄2号（嘿客店门口）" time="19" from_time="9" rel="七莘路嘿客送车点" p="021-54337309"
                  locationtype="0" air="">
                <em>七莘路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="863" s="*送车点" add="虹桥机场T1航站楼到达P1停车库B2层2410-2414号车位接待点" time="23" from_time="0" rel="虹桥机场T1送车点"
                  p="18149790731" locationtype="1" air="接送机位置：虹桥机场T1航站楼到达P1停车库B1层旅客接送点（还车请至T1航站楼P1停车场B1层)">
                <em>虹桥机场T1送车点</em>
                    <i class="allhour"></i>
                            <i class="airport"></i>
                            </span>
                                                    </dd>


                                                    <dd>
            <span sid="864" s="*送车点" add="虹桥机场申达一路P13停车场" time="23" from_time="0" rel="虹桥高铁送车点" p="18149790731"
                  locationtype="3" air="接送机位置：虹桥高铁到达厅B1层到达北1号门旁快捷巴士柜台处（还车请至申达一路P13停车场）">
                <em>虹桥高铁送车点</em>
                    <i class="allhour"></i>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="264" s="*送车点" add="吴中路1218号1楼卖场靠近停车场侧入口处" time="19" from_time="9" rel="卜蜂莲花吴中店送车点"
                  p="021-64025726" locationtype="0" air="">
                <em>卜蜂莲花吴中店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2118" s="*送车点" add="沪闵路华宁路地铁站" time="20" from_time="10" rel="华宁路地铁站送车点" p="021-33505288"
                  locationtype="0" air="">
                <em>华宁路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2119" s="*送车点" add="沪闵路文井路地铁站" time="20" from_time="10" rel="文井路地铁站送车点" p="021-33505288"
                  locationtype="0" air="">
                <em>文井路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2120" s="*送车点" add="沪闵路闵行开发区地铁站" time="20" from_time="10" rel="闵行开发区站送车点" p="021-33505288"
                  locationtype="0" air="">
                <em>闵行开发区站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2131" s="*送车点" add="陈行公路2688号（进浦星公路）" time="19" from_time="9" rel="浦江镇家乐福送车点" p="021-54733699"
                  locationtype="0" air="">
                <em>浦江镇家乐福送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1070" s="" add="罗芬路1188号世纪联华B1地下车库（靠近地铁7号线美兰湖站一号出口)" time="21" from_time="8" rel="美兰湖店"
                  p="15900444588" locationtype="0" air="">
                <em>美兰湖店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="908" s="" add="同济路1115号(靠近地铁3号线友谊路站)" time="21" from_time="8" rel="同济路店" p="021-56453116"
                  locationtype="0" air="">
                <em>同济路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="392" s="" add="长江西路2315号一楼商铺" time="21" from_time="8" rel="通河新村店" p="021-66010996"
                  locationtype="0" air="">
                <em>通河新村店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="979" s="" add="顾北路731号近沪太路" time="21" from_time="8" rel="顾村店" p="021-56129936" locationtype="0"
                  air="">
                <em>顾村店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2689" s="" add="沪太路2398号沪太路洛场路（地铁7号线3号口文欣楼一楼大厅）" time="21" from_time="8" rel="大场便捷点"
                  p="15002147174" locationtype="0" air="">
                <em>大场便捷点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1060" s="*送车点" add="接送点：顾村公园7号线地铁站2号口靠近麦当劳（交接位置：顾北路731号）" time="20" from_time="9"
                  rel="顾村公园地铁站送车点" p="021-56129936" locationtype="0" air="">
                <em>顾村公园地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2407" s="*送车点" add="大场镇行知路地铁站2号口（行知路与沪太路交叉口）" time="19" from_time="9" rel="行知路地铁站送车点"
                  p="021-62500806" locationtype="0" air="">
                <em>行知路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1745" s="*送车点" add="呼玛路通河路路口（红太阳广场）" time="19" from_time="9" rel="红太阳广场送车点" p="021-66010996"
                  locationtype="0" air="">
                <em>红太阳广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2426" s="*送车点" add="德都路18号世纪联华月浦店内近四元路" time="19" from_time="9" rel="月浦世纪联华送车点" p="021-56453116"
                  locationtype="0" air="">
                <em>月浦世纪联华送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2427" s="*送车点" add="3号线淞发路地铁站1号口" time="19" from_time="9" rel="淞发路地铁站送车点" p="021-56453116"
                  locationtype="0" air="">
                <em>淞发路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="265" s="*送车点" add="蕴川路1557号2楼顾客服务台对面靠近肯德基2楼门对面" time="17" from_time="9" rel="卜蜂莲花蕴川店送车点"
                  p="021-66010996" locationtype="0" air="">
                <em>卜蜂莲花蕴川店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3598" s="*送车点" add="宝杨路临江大道路口国际游轮码头停车场PB区(出口)" time="19" from_time="9" rel="上海国际邮轮港送车点"
                  p="021-56453116" locationtype="0" air="">
                <em>上海国际邮轮港送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1236" s="*送车点" add="大华三路地铁站3号口（华灵路与大华三路交叉口）" time="19" from_time="9" rel="大华三路地铁站送车点"
                  p="021-62500806" locationtype="0" air="">
                <em>大华三路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1651" s="*送车点" add="电台路644号嘿客店门口（交接位置：顾北路731号）" time="19" from_time="9" rel="电台路嘿客送车点"
                  p="021-56129936" locationtype="0" air="">
                <em>电台路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4647" s="*送车点" add="上海市宝山区沪联路451号靠近菊盛路工商银行门口（车辆交接顾村门店）" time="19" from_time="10" rel="潘广路接送点"
                  p="021-56129936" locationtype="0" air="">
                <em>潘广路接送点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4648" s="*送车点" add="锦秋路锦秋花园正门" time="19" from_time="10" rel="锦秋花园正门接送点" p="15002147174"
                  locationtype="0" air="">
                <em>锦秋花园正门接送点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3325" s="*送车点" add="上海市宝山区上大路99号" time="19" from_time="9" rel="上海大学宝山区送车点" p="15002147174"
                  locationtype="0" air="">
                <em>上海大学宝山区送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1663" s="*送车点" add="聚丰园路91弄1号（嘿客店门口）" time="19" from_time="9" rel="聚丰园路嘿客送车点" p="021-56529676"
                  locationtype="0" air="">
                <em>聚丰园路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2414" s="*送车点" add="富联路水产西路靠近肯德基门口" time="19" from_time="9" rel="富联路水产西路送车点" p="021-66010996"
                  locationtype="0" air="">
                <em>富联路水产西路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4415" s="*送车点" add="上海市宝山区同济路305号（近水产路）" time="19" from_time="9" rel="西上海别克送车点" p="021-56453116"
                  locationtype="0" air="">
                <em>西上海别克送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="2" s="" add="松江区通跃路29号" time="21" from_time="8" rel="松江店" p="021-37698020" locationtype="0"
                  air="">
                <em>松江店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1242" s="" add="人民北路83号(松江人民北路与中山中路交接往北200米)" time="21" from_time="8" rel="人民路店" p="021-67846646"
                  locationtype="0" air="">
                <em>人民路店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1243" s="" add="沪松公路1476号(靠近9号线九亭站)" time="21" from_time="8" rel="九亭店" p="021-67769710"
                  locationtype="0" air="">
                <em>九亭店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="4921" s="*送车点" add="上海市松江区北松公路6656号" time="18" from_time="9" rel="越之林林肯4S店送车点" p="021-37698020"
                  locationtype="0" air="">
                <em>越之林林肯4S店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4493" s="*送车点" add="沪亭北路388弄" time="19" from_time="9" rel="贝尚湾（西门）送车点" p="021-67769710"
                  locationtype="0" air="">
                <em>贝尚湾（西门）送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1643" s="*送车点" add="泗宝路86号" time="17" from_time="10" rel="泗泾送车点" p="021-67769710"
                  locationtype="0" air="">
                <em>泗泾送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1674" s="*送车点" add="梅家浜路1557号（嘿客店门口）" time="19" from_time="9" rel="梅家浜路嘿客送车点" p="021-37698020"
                  locationtype="0" air="">
                <em>梅家浜路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1675" s="*送车点" add="亭知路737号（嘿客店门口）" time="19" from_time="9" rel="亭知路嘿客送车点" p="021-67769710"
                  locationtype="0" air="">
                <em>亭知路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1676" s="*送车点" add="永丰路270弄254号（嘿客店门口）" time="19" from_time="9" rel="永丰路嘿客送车点" p="021-37698020"
                  locationtype="0" air="">
                <em>永丰路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4544" s="*送车点" add="上海市松江区九杜路351号" time="19" from_time="9" rel="如家快捷酒店送车点" p="021-67769710"
                  locationtype="0" air="">
                <em>如家快捷酒店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4545" s="*送车点" add="上海市松江区九新公路180弄" time="19" from_time="9" rel="云润花园送车点" p="021-67769710"
                  locationtype="0" air="">
                <em>云润花园送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="2044" s="*送车点" add="松汇中路472号-478号" time="18" from_time="9" rel="开新松江店送车点" p="021-37698020"
                  locationtype="0" air="">
                <em>开新松江店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1253" s="*送车点" add="松江体育中心地铁站1号口" time="19" from_time="9" rel="松江体育中心送车点" p="021-67846646"
                  locationtype="0" air="">
                <em>松江体育中心送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1254" s="*送车点" add="醉白池地铁站3号口" time="19" from_time="9" rel="醉白池地铁站送车点" p="021-67846646"
                  locationtype="0" air="">
                <em>醉白池地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1250" s="*送车点" add="佘山地铁站（嘉松南路与古楼公路交叉口）" time="17" from_time="10" rel="佘山地铁站送车点" p="021-67769710"
                  locationtype="0" air="">
                <em>佘山地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1252" s="*送车点" add="松江大学城地铁站（嘉松南路梅家浜路交口）" time="19" from_time="9" rel="松江大学城送车点" p="021-37698020"
                  locationtype="0" air="">
                <em>松江大学城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="579" s="*送车点" add="盐仓路与盐平公路附近" time="19" from_time="9" rel="松江高铁南站送车点" p="021-67846646"
                  locationtype="3" air="">
                <em>松江高铁南站送车点</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="889" s="" add="墨玉路402号(墨玉路与和静路交口)" time="21" from_time="8" rel="安亭店" p="021-59963297"
                  locationtype="0" air="">
                <em>安亭店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="36" s="" add="塔城路269号(近金沙路口)" time="21" from_time="8" rel="嘉定店" p="021-59911866" locationtype="0"
                  air="">
                <em>嘉定店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="651" s="" add="高潮路257号3幢（金沙江西路与高潮路交界口，地铁13号线金沙江西路4号口）" time="21" from_time="8" rel="江桥店"
                  p="021-69002120" locationtype="0" air="">
                <em>江桥店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1388" s="" add="嘉定区沪宜公路306号（近古猗园路，嘉定东方有线隔壁）" time="21" from_time="8" rel="南翔店" p="021-59117652"
                  locationtype="0" air="">
                <em>南翔店</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="5026" s="" add="嘉定区塔秀路98-7号（诚实果品批发行旁停车场入口）" time="21" from_time="8" rel="嘉定新城店" p="021-59967155"
                  locationtype="0" air="">
                <em>嘉定新城店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="930" s="*送车点" add="南翔镇沪宜路218号" time="19" from_time="9" rel="古漪园送车点" p="021-59117652"
                  locationtype="0" air="">
                <em>古漪园送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1730" s="*送车点" add="新郁路822号近曹安公路" time="19" from_time="9" rel="新郁路大润发送车点" p="021-62567790"
                  locationtype="0" air="">
                <em>新郁路大润发送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="897" s="*送车点" add="安亭博园路7568-3号(上海国际汽车城内)" time="19" from_time="9" rel="安亭高瞻4s店送车点"
                  p="021-59963297" locationtype="0" air="">
                <em>安亭高瞻4s店送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="899" s="*送车点" add="曹安公路4800号" time="19" from_time="9" rel="同济黄渡校区送车点" p="021-59963297"
                  locationtype="0" air="">
                <em>同济黄渡校区送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="900" s="*送车点" add="安亭博园路7575号(汽车博览公园内)" time="19" from_time="9" rel="试乘试驾中心送车点" p="021-59963297"
                  locationtype="0" air="">
                <em>试乘试驾中心送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="901" s="*送车点" add="墨玉南路1055号" time="19" from_time="9" rel="嘉亭荟广场送车点" p="021-59963297"
                  locationtype="0" air="">
                <em>嘉亭荟广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1338" s="*送车点" add="地铁11号线嘉定西站2号口" time="18" from_time="10" rel="嘉定西站送车点" p="021-59911866"
                  locationtype="3" air="">
                <em>嘉定西站送车点</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>


                                                    <dd>
            <span sid="1209" s="*送车点" add="宝翔路888弄—1号（南翔4路公交陈翔路宝翔路站）" time="19" from_time="9" rel="南翔森林公馆送车点"
                  p="021-59117652" locationtype="0" air="">
                <em>南翔森林公馆送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1314" s="*送车点" add="接送点：南翔金润路478弄1号靠近银翔路（交接位置：古猗园路638号）" time="19" from_time="9" rel="永翔佳苑送车点"
                  p="021-59117652" locationtype="0" air="">
                <em>永翔佳苑送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1664" s="*送车点" add="曹安公路2300弄127号附近" time="19" from_time="9" rel="江桥沃尔玛送车点" p="021-56529676"
                  locationtype="0" air="">
                <em>江桥沃尔玛送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1682" s="*送车点" add="柳梁路118弄8号（嘿客店门口）" time="18" from_time="10" rel="柳梁路嘿客送车点" p="021-59911866"
                  locationtype="0" air="">
                <em>柳梁路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1683" s="*送车点" add="安谐路75号靠近安悦路（嘿客店门口）" time="19" from_time="9" rel="汽车城嘿客送车点" p="021-59963297"
                  locationtype="0" air="">
                <em>汽车城嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="728" s="*送车点" add="金沙江西路1008号大宅风范城（东南门）" time="18" from_time="10" rel="大宅风范城送车点" p="021-69002120"
                  locationtype="0" air="">
                <em>大宅风范城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4406" s="*送车点" add="黄家花园路225号" time="18" from_time="10" rel="黄家花园路石化送车点" p="021-69002120"
                  locationtype="0" air="">
                <em>黄家花园路石化送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4417" s="*送车点" add="花桥绿地大道269号" time="18" from_time="10" rel="绿地大道易买得送车点" p="021-59963297"
                  locationtype="0" air="">
                <em>绿地大道易买得送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4413" s="*送车点" add="曹安公路1488号" time="18" from_time="10" rel="曹安公路好美家服务点" p="021-62567790"
                  locationtype="0" air="">
                <em>曹安公路好美家服务点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4414" s="*送车点" add="丰庄西路433弄" time="18" from_time="10" rel="清峪路金沙社区服务点" p="021-62567790"
                  locationtype="0" air="">
                <em>清峪路金沙社区服务点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3864" s="*送车点" add="11号线白银路地铁站" time="18" from_time="10" rel="嘉定白银路送车点" p="021-59967155"
                  locationtype="0" air="">
                <em>嘉定白银路送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1680" s="*送车点" add="安亭镇伊宁路2199号上海国际赛车场配套区（伊宁路公交车站斜对面）" time="18" from_time="10" rel="上海赛车场送车点"
                  p="021-59967155" locationtype="0" air="">
                <em>上海赛车场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3835" s="*送车点" add="胜辛路嘉定新城地铁站" time="18" from_time="10" rel="嘉定新城送车点" p="021-59967155"
                  locationtype="0" air="">
                <em>嘉定新城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4591" s="*送车点" add="澄浏中路3172号" time="18" from_time="10" rel="嘉定百联广场送车点" p="021-59911866"
                  locationtype="0" air="">
                <em>嘉定百联广场送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1003" s="" add="城中西路260弄5号（取还车请至三元河菜市场入口左转光明眼镜店楼下）" time="21" from_time="8" rel="青浦店"
                  p="021-69227360" locationtype="0" air="">
                <em>青浦店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1677" s="*送车点" add="华科路275号（嘿客店门口）" time="19" from_time="9" rel="华科路嘿客送车点" p="021-69227360"
                  locationtype="0" air="">
                <em>华科路嘿客送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1382" s="*送车点" add="青湖路华青南路交叉口（联华超市前）" time="17" from_time="10" rel="夏阳湖送车点" p="021-69227360"
                  locationtype="0" air="">
                <em>夏阳湖送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1383" s="*送车点" add="祥凝浜路339号（朱家角汽车站）" time="17" from_time="10" rel="朱家角送车点" p="021-69227360"
                  locationtype="0" air="">
                <em>朱家角送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3646" s="*送车点" add="青浦区清河湾路900弄" time="17" from_time="10" rel="卓越世纪中心送车点" p="021-69227360"
                  locationtype="0" air="">
                <em>卓越世纪中心送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3647" s="*送车点" add="青浦区朱家角镇石家浜东路99号" time="17" from_time="10" rel="朱家角人民医院送车点" p="021-69227360"
                  locationtype="0" air="">
                <em>朱家角人民医院送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="3648" s="*送车点" add="青浦区汇金路宜达新居东门（地铁17号线4号口）" time="17" from_time="10" rel="汇金路地铁站送车点"
                  p="021-69227360" locationtype="0" air="">
                <em>汇金路地铁站送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="883" s="" add="板桥西路508号一层(板桥西路和蒙山路路口往西100米)" time="21" from_time="8" rel="金山店" p="021-67297229"
                  locationtype="0" air="">
                <em>金山店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="1332" s="*送车点" add="上海市金山区卫阳南路120号" time="16" from_time="10" rel="金山卫铁路南广场送车点" p="021-67297229"
                  locationtype="0" air="">
                <em>金山卫铁路南广场送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1333" s="*送车点" add="金山区金山大道4168号" time="16" from_time="10" rel="金山香港城送车点" p="021-67297229"
                  locationtype="0" air="">
                <em>金山香港城送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="1331" s="*送车点" add="金山区龙皓路1088号" time="16" from_time="10" rel="金山万达广场送车点" p="021-67297229"
                  locationtype="0" air="">
                <em>金山万达广场送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="937" s="" add="南桥镇南奉公路8942号" time="21" from_time="8" rel="南桥店" p="021-37568278" locationtype="0"
                  air="">
                <em>南桥店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="4934" s="*送车点" add="奉贤区百齐路588号" time="16" from_time="10" rel="南桥百联送车点" p="021-37568278"
                  locationtype="0" air="接送机位置：.30.920775">
                <em>南桥百联送车点</em>
                                    </span>
                                                    </dd>


                                                    <dd>
            <span sid="4935" s="*送车点" add="上海市金奉贤望园南路1529号" time="16" from_time="10" rel="行政服务中心送车点" p="021-37568278"
                  locationtype="0" air="">
                <em>行政服务中心送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="868" s="" add="城桥镇东门路83号1层(环保局对面)" time="21" from_time="8" rel="崇明南门店" p="021-69699985"
                  locationtype="0" air="">
                <em>崇明南门店</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                            <div class="mendian-wrap car-point">
                                                <h3>送车点</h3>
                                                <dl class="dl-mendian clearfix">


                                                    <dd>
            <span sid="3554" s="*送车点" add="城桥镇八一路南门支路" time="18" from_time="9" rel="南门码头车站送车点" p="021-69699985"
                  locationtype="0" air="">
                <em>南门码头车站送车点</em>
                                    </span>
                                                    </dd>


                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="937" s="" add="南桥镇南奉公路8942号" time="21" from_time="8" rel="正阳世纪星城" p="021-37568278" type="0"
                  air="">
                <em>南桥店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="970" s="" add="上南路6872号(上南路沪南公路)" time="21" from_time="8" rel="康桥/周浦" p="021-68072615" type="0"
                  air="">
                <em>周浦店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="613" s="" add="新同心路220号近广中路" time="21" from_time="8" rel="虹口足球场" p="021-36532683" type="0"
                  air="">
                <em>新同心路店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="392" s="" add="长江西路2315号一楼商铺" time="21" from_time="8" rel="通河/泗塘" p="021-66010996" type="0"
                  air="">
                <em>通河新村店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="40" s="" add="凯旋路413号(中山公园96路公交总站对过轻轨下)" time="21" from_time="8" rel="中山公园" p="021-62607389"
                  type="0" air="">
                <em>中山公园店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="34" s="" add="共和新路2750号(近灵石路口,地铁1号线4号出口)" time="21" from_time="8" rel="大宁地区" p="021-66302501"
                  type="0" air="">
                <em>马戏城店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="675" s="" add="虹井路610号(红松路和虹井路路口,龙柏一村对面)" time="21" from_time="8" rel="龙柏地区" p="021-54392606"
                  type="0" air="">
                <em>龙柏店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="908" s="" add="同济路1115号(靠近地铁3号线友谊路站)" time="21" from_time="8" rel="淞滨地区" p="021-56453116"
                  type="0" air="">
                <em>同济路店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="36" s="" add="塔城路269号(近金沙路口)" time="21" from_time="8" rel="博乐广场" p="021-59911866" type="0"
                  air="">
                <em>嘉定店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="1003" s="" add="城中西路260弄5号（取还车请至三元河菜市场入口左转光明眼镜店楼下）" time="21" from_time="8" rel="青浦城区"
                  p="021-69227360" type="0" air="">
                <em>青浦店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="886" s="" add="徐汇区斜土路2899号甲（光启文化广场内，进来第一个入口左转）" time="21" from_time="8" rel="万体馆"
                  p="021-64160981" type="0" air="">
                <em>八万人体育场店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="3" s="*送车点" add="华石路103号" time="19" from_time="9" rel="徐家汇" p="021-64160981" type="0" air="">
                <em>徐家汇宜家送车点</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="615" s="" add="上海市浦东新区启帆路271号1楼" time="21" from_time="8" rel="外高桥" p="021-68367696" type="0"
                  air="">
                <em>洲海路店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="205" s="" add="蒲淞北路21号(近天山西路)" time="21" from_time="8" rel="北新泾" p="021-62338565" type="0"
                  air="">
                <em>北新泾店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="1144" s="" add="秣陵路355号乙（上海铁路大厦旁）" time="21" from_time="8" rel="火车站" p="021-51013275" type="3"
                  air="接送机位置：上海铁路大厦酒店大门口（上海站西南出口出来右转直行200米）">
                <em>上海火车站店</em>
                                            <i class="trainstation"></i>
            </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="1454" s="" add="东川路2065号(金海马家具广场对面)" time="21" from_time="8" rel="老闵行" p="021-33505288" type="0"
                  air="">
                <em>老闵行店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="883" s="" add="板桥西路508号一层(板桥西路和蒙山路路口往西100米)" time="21" from_time="8" rel="蒙山路" p="021-67297229"
                  type="0" air="">
                <em>金山店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="391" s="" add="张杨北路529号" time="21" from_time="8" rel="金桥" p="021-50175866" type="0" air="">
                <em>金桥店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="87" s="" add="亮秀路/湖秀路口(门店由湖秀路进入)" time="21" from_time="8" rel="张江" p="021-50898682" type="0"
                  air="">
                <em>张江店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="1624" s="*送车点" add="高科西路严中路口" time="19" from_time="9" rel="北蔡" p="021-68390726" type="0" air="">
                <em>严中路沃尔玛送车点</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="1401" s="" add="古北路21号一层(靠近古北路长宁路口,古北路桥下)" time="21" from_time="8" rel="古北" p="021-62089599"
                  type="0" air="">
                <em>长宁店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="788" s="" add="白丽路107号靠近红棉路(桃浦新村地铁站2号口出来红棉路往南走约200米)" time="21" from_time="8" rel="桃浦"
                  p="021-56529676" type="0" air="">
                <em>桃浦店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="45" s="" add="闵行区珠城路99弄14号（富都路闵城路路口）" time="21" from_time="8" rel="莘庄" p="021-64603417" type="0"
                  air="">
                <em>莘庄店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="889" s="" add="墨玉路402号(墨玉路与和静路交口)" time="21" from_time="8" rel="安亭" p="021-59963297" type="0"
                  air="">
                <em>安亭店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                        <li class="businessDistrict" style="display: none;">
                                            <div class="mendian-wrap">
                                                <dl class="dl-mendian clearfix">

                                                    <dd>
            <span sid="651" s="" add="高潮路257号3幢（金沙江西路与高潮路交界口，地铁13号线金沙江西路4号口）" time="21" from_time="8" rel="江桥"
                  p="021-69002120" type="0" air="">
                <em>江桥店</em>
                                    </span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="inf-box">
                                    <ul class="inf-address clearfix">
                                        <li class="key">门店地址：</li>
                                        <li class="value">
                                            <span class="address">速航路110号；接机位置：T1航站楼P1地下停车库<br>B1层C10区（从到达大厅4号口走出，过马路<br>至对面即到）</span>
                                            <span style="display: inline-block; white-space: nowrap;">
                        <a class="link-map" href="http://www.1hai.cn/storeguide.aspx?sid=5&amp;c=%u4E0A%u6D77"
                           target="_blank"></a>
                    </span>
                                        </li>
                                        <li style="padding-left: 60px; display: none;" id="jsj"></li>
                                    </ul>
                                    <div class="inf-time">
                                        <div class="txt-time">
                                            营业时间：<span class="time" style="display: none;"><span
                                                class="get-hour">8</span>:<span class="get-min">00</span>-<span
                                                class="ret-hour">21</span>:<span class="ret-min">00</span></span>
                                            <span class="allDay">24小时营业</span></div>
                                        <div class="storephone">门店电话：<span class="time">021-68336816</span></div>
                                    </div>
                                </div>

                                <div class="near-search" id="NearSearch">
                                </div>--%>
                            </div>
                            <!-- 查询车系列表 -->
                            <div class="wraplist carlist" id="reservationList" data-count="6" data-nostockcount="17">


                                <c:if test="${requestScope.cars!=null}">
                                    <c:forEach var="car" items="${requestScope.cars}">
                                        <%--第一排--%>
                                        <div class="det-carlist" style="z-index: 299;" id="flag">
                                            <ul class="clearfix">
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <li class="licar-pic">
                                                        <a href="#" class="car-pic" data-iscargourp="True" data-cid="1">
                                                            <img src="${car.image}"
                                                                 class="lazy img-responsive"
                                                                 data-original="https://image.1hai.cn/images/cartype/20151228/61923620-8185-433d-930e-9bc9ad999a81.jpg?v=6cf132b9bfa3425ba39c90cc5417b3a3"
                                                                 onerror="" alt="${car.kind.type}"
                                                                 style="display: inline;">
                                                        </a>
                                                    </li>
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-8 right_test">
                                                    <li class="licar-name">
                                                        <div class="namesub">
                                                            <div class="namecontent">
                                                                <p class="car-nameinfo">
                                                                    <span>${car.header}</span><a href="#"
                                                                                                 class="sp-aczs sp-box"><i
                                                                        class="lv5"></i></a>
                                                                    <c:if test="${car.isReturn==1}">
                                                                        <span class="rebate">返</span>
                                                                    </c:if>
                                                                </p>
                                                                <p class="car-distribute">
                                                                        ${car.description}
                                                                </p>

                                                                <p class="car-introinfo">
                                                                    <span>SUV|自动|5座</span>
                                                                </p>
                                                                <p class="car-typeinfo">
                                                                    <span></span>
                                                                </p>
                                                                <p class="car-activeinfo">
                                                                    <c:if test="${car.isPrice==1}">
                                                                        <span class="shalloworg">特价</span>
                                                                    </c:if>
                                                                    <c:if test="${car.isFast==1}">
                                                                        <span class="shallowblue sp-box icon-quickrent">可闪租</span>
                                                                    </c:if>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </div>
                                                <div class="col-md-6 col-sm-3 col-xs-4">
                                                    <li class="licar-info">
                                                        <p class="condition1">
                                                            <!--标准价-->
                                                            <span class="cartitle hidden-xs">
                <i class="sp-box discount icon-ticket "></i>2天日租价
            </span>
                                                            <span class="carprice">
                <i class="symbol">¥</i>
                    <em class="total-price">${car.retPrice}</em>/日均
            </span>

                                                            <span class="licar-btn btnopen1 hidden-xs">预订</span>
                                                            <span class="typebtn btntop1 ">
                    <a href="${pageContext.request.contextPath}/NewOrdersServlet?carid=${car.cId}&fastPrice=${car.fastPrice}"
                       class="type-four type-fourone btn-book" data-price-type="7" data-cid="1"
                       data-gid="6">
                        <span>
                            闪租价<br>
                        </span><i class="symbol">¥</i>
                            <em class="total-price">${car.fastPrice}</em>
                    </a>
                    <a href="${pageContext.request.contextPath}/NewOrdersServlet?carid=${car.cId}&netPrice=${car.netPrice}"
                       class="type-four type-fourone btn-book" data-price-type="1" data-cid="564"
                       data-gid="6">
                        <span>
                            门店现付<br>
                        </span><i class="symbol">¥</i>
                            <em class="total-price">${car.netPrice}</em>
                    </a>
                    <a href="${pageContext.request.contextPath}/NewOrdersServlet?carid=${car.cId}&retPrice=${car.retPrice}"
                       class="type-four type-fourtwo btn-book" data-price-type="5" data-cid="564"
                       data-gid="6">
                        <span>
                            返现价<br>
                                    <em>${car.retPrice}元返现12元/天</em>
                        </span><i class="symbol">¥</i>
                            <em class="total-price">${car.retPrice}</em>
                    </a>
                    <a href="${pageContext.request.contextPath}/NewOrdersServlet?carid=${car.cId}&prePrice=${car.prePrice}"
                       class="type-four type-fourtwo notchoose" data-price-type="3" data-cid="564"
                       data-gid="6">
                        <span>
                            在线预付<br>
                                    <em>需要提前3天预订</em>
                        </span><i class="symbol">¥</i>
                            <em class="total-price">${car.prePrice}</em>
                    </a>
            </span>
                                                        </p>


                                                        <p class="line hidden-xs"></p>
                                                        <p class="condition3 hidden-xs">
            <span class="cartitle">
                <c:if test="${car.isHot==1}"><i class="sp-box discount icon-promote"></i></c:if>3天打包价
            </span>
                                                            <span class="carprice">
                <i class="symbol">¥</i>
                <em class="total-price">${car.onlinePrice}</em>/日均
            </span>
                                                            <span class="licar-btn btnopen4 hidden-xs"></span>
                                                            <span class="typebtn btntop1">
                <a href="${pageContext.request.contextPath}/NewOrdersServlet?carid=${car.cId}&onlinePrice=${car.onlinePrice}"
                   class="type-two btn-next-price" data-days="3" data-cid="564"
                   data-gid="eHi.UI.CommonService.Model.OutputDto.StoreStock.ModelBookingGroupItemNew?.Id">
                    <span>在线支付</span>
                    <i class="symbol">¥</i><em class="total-price">${car.onlinePrice}</em>
                </a>
            </span>
                                                        </p>
                                                    </li>
                                                </div>
                                            </ul>
                                        </div>
                                    </c:forEach>
                                </c:if>


                                <%--第二排--%>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="">
                    <!--s城市列表-->
                    <div id="ydcityBox" class="ydcity-box">
                        <div class="wrap-title">
                            <ul id="mark">
                                <li class="city-help">可直接输入城市或城市拼音</li>
                            </ul>
                            <ul class="tabHF-title list-type">
                                <li class="current">热门</li>
                                <li>ABCDE</li>
                                <li>FGHJ</li>
                                <li>KLMN</li>
                                <li>PQRST</li>
                                <li>WXYZ</li>
                            </ul>
                        </div>
                        <ul class="tabHF-content list-city">
                            <li class="current">
                                <div class="inner-box">
                                    <dl>
                                        <dd>
                                            <span class="selected" sendcar="Y" rel="上海" pre="SH  " dsi="3" data-id="77">上海</span>
                                        </dd>
                                        <dd>
                                            <span rel="北京" sendcar="Y" pre="BJ  " dsi="6" data-id="5">北京</span>
                                        </dd>
                                        <dd>
                                            <span rel="广州" sendcar="Y" pre="GD  " dsi="32" data-id="16">广州</span>
                                        </dd>
                                        <dd>
                                            <span rel="深圳" sendcar="Y" pre="GD  " dsi="26" data-id="21">深圳</span>
                                        </dd>
                                        <dd>
                                            <span rel="三亚" sendcar="Y" pre="AN  " dsi="165" data-id="5">三亚</span>
                                        </dd>
                                        <dd>
                                            <span rel="海口" sendcar="Y" pre="AN  " dsi="301" data-id="2">海口</span>
                                        </dd>
                                        <dd>
                                            <span rel="杭州" sendcar="Y" pre="ZJ  " dsi="10" data-id="88">杭州</span>
                                        </dd>
                                        <dd>
                                            <span rel="成都" sendcar="Y" pre="SC  " dsi="30" data-id="3">成都</span>
                                        </dd>
                                        <dd>
                                            <span rel="重庆" sendcar="Y" pre="CQ  " dsi="38" data-id="1">重庆</span>
                                        </dd>
                                        <dd>
                                            <span rel="武汉" sendcar="Y" pre="UB  " dsi="475" data-id="81">武汉</span>
                                        </dd>
                                        <dd>
                                            <span rel="昆明" sendcar="Y" pre="YN  " dsi="342" data-id="86">昆明</span>
                                        </dd>
                                        <dd>
                                            <span rel="天津" sendcar="Y" pre="TJ  " dsi="16" data-id="79">天津</span>
                                        </dd>
                                        <dd>
                                            <span rel="南京" sendcar="Y" pre="JS  " dsi="14" data-id="50">南京</span>
                                        </dd>
                                        <dd>
                                            <span rel="长沙" sendcar="N" pre="UN  " dsi="21" data-id="82">长沙</span>
                                        </dd>
                                        <dd>
                                            <span rel="珠海" sendcar="N" pre="GD  " dsi="27" data-id="25">珠海</span>
                                        </dd>
                                        <dd>
                                            <span rel="西安" sendcar="Y" pre="AX  " dsi="23" data-id="4">西安</span>
                                        </dd>
                                        <dd>
                                            <span rel="郑州" sendcar="Y" pre="HN  " dsi="1018" data-id="42">郑州</span>
                                        </dd>
                                        <dd>
                                            <span rel="大理" sendcar="N" pre="YN  " dsi="1074" data-id="108">大理</span>
                                        </dd>
                                        <dd>
                                            <span rel="青岛" sendcar="Y" pre="SD  " dsi="11" data-id="74">青岛</span>
                                        </dd>
                                        <dd>
                                            <span rel="贵阳" sendcar="Y" pre="GZ  " dsi="335" data-id="31">贵阳</span>
                                        </dd>
                                        <dd>
                                            <span rel="桂林" sendcar="N" pre="GX  " dsi="28" data-id="28">桂林</span>
                                        </dd>
                                    </dl>
                                </div>
                            </li>
                            <li>
                                <div class="inner-box">
                                    <dl>
                                        <div class='city-initial'><em>A</em>
                                            <dd>
                                                <span rel="安康" sendcar="N" pre="AX  " dsi="2739" data-id="224">安康</span>
                                            </dd>
                                            <dd>
                                                <span rel="安庆" sendcar="N" pre="AH  " dsi="2628" data-id="204">安庆</span>
                                            </dd>
                                            <dd>
                                                <span rel="安顺" sendcar="N" pre="GZ  " dsi="2359" data-id="157">安顺</span>
                                            </dd>
                                            <dd>
                                                <span rel="安阳" sendcar="N" pre="HN  " dsi="4322" data-id="277">安阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="鞍山" sendcar="Y" pre="LN  " dsi="1106" data-id="111">鞍山</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>B</em>
                                            <dd>
                                                <span rel="巴彦淖尔" sendcar="N" pre="NMG " dsi="5764"
                                                      data-id="334">巴彦淖尔</span>
                                            </dd>
                                            <dd>
                                                <span rel="巴中" sendcar="N" pre="SC  " dsi="5790" data-id="341">巴中</span>
                                            </dd>
                                            <dd>
                                                <span rel="白城" sendcar="N" pre="JL  " dsi="5688" data-id="332">白城</span>
                                            </dd>
                                            <dd>
                                                <span rel="百色" sendcar="N" pre="GX  " dsi="5332" data-id="309">百色</span>
                                            </dd>
                                            <dd>
                                                <span rel="蚌埠" sendcar="N" pre="AH  " dsi="2257" data-id="140">蚌埠</span>
                                            </dd>
                                            <dd>
                                                <span rel="包头" sendcar="N" pre="NMG " dsi="839" data-id="64">包头</span>
                                            </dd>
                                            <dd>
                                                <span rel="宝鸡" sendcar="N" pre="AX  " dsi="2281" data-id="141">宝鸡</span>
                                            </dd>
                                            <dd>
                                                <span rel="保定" sendcar="N" pre="HB  " dsi="785" data-id="32">保定</span>
                                            </dd>
                                            <dd>
                                                <span rel="保山" sendcar="N" pre="YN  " dsi="5796" data-id="345">保山</span>
                                            </dd>
                                            <dd>
                                                <span rel="北海" sendcar="N" pre="GX  " dsi="2363" data-id="159">北海</span>
                                            </dd>
                                            <dd>
                                                <span rel="北京" sendcar="Y" pre="BJ  " dsi="6" data-id="5">北京</span>
                                            </dd>
                                            <dd>
                                                <span rel="本溪" sendcar="N" pre="LN  " dsi="2500" data-id="173">本溪</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>C</em>
                                            <dd>
                                                <span rel="沧州" sendcar="N" pre="HB  " dsi="2021" data-id="138">沧州</span>
                                            </dd>
                                            <dd>
                                                <span rel="昌江" sendcar="N" pre="AN  " dsi="5424" data-id="312">昌江</span>
                                            </dd>
                                            <dd>
                                                <span rel="常德" sendcar="N" pre="UN  " dsi="1495" data-id="128">常德</span>
                                            </dd>
                                            <dd>
                                                <span rel="常熟" sendcar="N" pre="JS  " dsi="1" data-id="45">常熟</span>
                                            </dd>
                                            <dd>
                                                <span rel="常州" sendcar="Y" pre="JS  " dsi="232" data-id="46">常州</span>
                                            </dd>
                                            <dd>
                                                <span rel="潮州" sendcar="N" pre="GD  " dsi="2583" data-id="194">潮州</span>
                                            </dd>
                                            <dd>
                                                <span rel="郴州" sendcar="N" pre="UN  " dsi="2353" data-id="153">郴州</span>
                                            </dd>
                                            <dd>
                                                <span rel="成都" sendcar="Y" pre="SC  " dsi="30" data-id="71">成都</span>
                                            </dd>
                                            <dd>
                                                <span rel="澄迈" sendcar="N" pre="AN  " dsi="5137" data-id="301">澄迈</span>
                                            </dd>
                                            <dd>
                                                <span rel="池州" sendcar="N" pre="AH  " dsi="5677" data-id="323">池州</span>
                                            </dd>
                                            <dd>
                                                <span rel="赤峰" sendcar="N" pre="NMG " dsi="2893" data-id="236">赤峰</span>
                                            </dd>
                                            <dd>
                                                <span rel="滁州" sendcar="N" pre="AH  " dsi="2752" data-id="229">滁州</span>
                                            </dd>
                                            <dd>
                                                <span rel="楚雄" sendcar="N" pre="YN  " dsi="5818" data-id="349">楚雄</span>
                                            </dd>
                                            <dd>
                                                <span rel="长春" sendcar="Y" pre="JL  " dsi="83" data-id="43">长春</span>
                                            </dd>
                                            <dd>
                                                <span rel="长沙" sendcar="N" pre="UN  " dsi="21" data-id="82">长沙</span>
                                            </dd>
                                            <dd>
                                                <span rel="重庆" sendcar="Y" pre="CQ  " dsi="38" data-id="7">重庆</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>D</em>
                                            <dd>
                                                <span rel="达州" sendcar="N" pre="SC  " dsi="3708" data-id="264">达州</span>
                                            </dd>
                                            <dd>
                                                <span rel="大理" sendcar="N" pre="YN  " dsi="1074" data-id="108">大理</span>
                                            </dd>
                                            <dd>
                                                <span rel="大连" sendcar="Y" pre="LN  " dsi="856" data-id="61">大连</span>
                                            </dd>
                                            <dd>
                                                <span rel="大庆" sendcar="N" pre="HLJ " dsi="2618" data-id="197">大庆</span>
                                            </dd>
                                            <dd>
                                                <span rel="大同" sendcar="N" pre="SX  " dsi="1273" data-id="119">大同</span>
                                            </dd>
                                            <dd>
                                                <span rel="丹东" sendcar="N" pre="LN  " dsi="1939" data-id="137">丹东</span>
                                            </dd>
                                            <dd>
                                                <span rel="儋州" sendcar="N" pre="AN  " dsi="5170" data-id="304">儋州</span>
                                            </dd>
                                            <dd>
                                                <span rel="稻城" sendcar="N" pre="SC  " dsi="3388" data-id="250">稻城</span>
                                            </dd>
                                            <dd>
                                                <span rel="德宏" sendcar="N" pre="YN  " dsi="4333" data-id="282">德宏</span>
                                            </dd>
                                            <dd>
                                                <span rel="德阳" sendcar="N" pre="SC  " dsi="2357" data-id="156">德阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="德州" sendcar="N" pre="SD  " dsi="2624" data-id="200">德州</span>
                                            </dd>
                                            <dd>
                                                <span rel="定安" sendcar="N" pre="AN  " dsi="5680" data-id="326">定安</span>
                                            </dd>
                                            <dd>
                                                <span rel="东方" sendcar="N" pre="AN  " dsi="5195" data-id="306">东方</span>
                                            </dd>
                                            <dd>
                                                <span rel="东莞" sendcar="Y" pre="GD  " dsi="49" data-id="14">东莞</span>
                                            </dd>
                                            <dd>
                                                <span rel="东营" sendcar="N" pre="SD  " dsi="3002" data-id="239">东营</span>
                                            </dd>
                                            <dd>
                                                <span rel="都匀" sendcar="N" pre="GZ  " dsi="5681" data-id="327">都匀</span>
                                            </dd>
                                            <dd>
                                                <span rel="敦化" sendcar="N" pre="JL  " dsi="4849" data-id="290">敦化</span>
                                            </dd>
                                            <dd>
                                                <span rel="敦煌" sendcar="Y" pre="GS  " dsi="2800" data-id="230">敦煌</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>E</em>
                                            <dd>
                                                <span rel="鄂尔多斯" sendcar="N" pre="NMG " dsi="2338"
                                                      data-id="152">鄂尔多斯</span>
                                            </dd>
                                            <dd>
                                                <span rel="鄂州" sendcar="N" pre="UB  " dsi="5820" data-id="351">鄂州</span>
                                            </dd>
                                            <dd>
                                                <span rel="恩施" sendcar="N" pre="UB  " dsi="3387" data-id="249">恩施</span>
                                            </dd>
                                        </div>
                                    </dl>
                                </div>
                            </li>
                            <li>
                                <div class="inner-box">
                                    <dl>
                                        <div class='city-initial'><em>F</em>
                                            <dd>
                                                <span rel="防城港" sendcar="N" pre="GX  " dsi="5839"
                                                      data-id="355">防城港</span>
                                            </dd>
                                            <dd>
                                                <span rel="佛山" sendcar="Y" pre="GD  " dsi="303" data-id="15">佛山</span>
                                            </dd>
                                            <dd>
                                                <span rel="福州" sendcar="Y" pre="FJ  " dsi="325" data-id="8">福州</span>
                                            </dd>
                                            <dd>
                                                <span rel="抚顺" sendcar="Y" pre="LN  " dsi="837" data-id="62">抚顺</span>
                                            </dd>
                                            <dd>
                                                <span rel="抚州" sendcar="N" pre="JX  " dsi="4584" data-id="285">抚州</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>G</em>
                                            <dd>
                                                <span rel="赣州" sendcar="N" pre="JX  " dsi="3510" data-id="252">赣州</span>
                                            </dd>
                                            <dd>
                                                <span rel="格尔木" sendcar="N" pre="QH  " dsi="3072"
                                                      data-id="243">格尔木</span>
                                            </dd>
                                            <dd>
                                                <span rel="广安" sendcar="N" pre="SC  " dsi="5791" data-id="342">广安</span>
                                            </dd>
                                            <dd>
                                                <span rel="广元" sendcar="N" pre="SC  " dsi="2578" data-id="189">广元</span>
                                            </dd>
                                            <dd>
                                                <span rel="广州" sendcar="Y" pre="GD  " dsi="32" data-id="16">广州</span>
                                            </dd>
                                            <dd>
                                                <span rel="贵港" sendcar="N" pre="GX  " dsi="2736" data-id="221">贵港</span>
                                            </dd>
                                            <dd>
                                                <span rel="贵阳" sendcar="Y" pre="GZ  " dsi="335" data-id="31">贵阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="桂林" sendcar="N" pre="GX  " dsi="28" data-id="28">桂林</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>H</em>
                                            <dd>
                                                <span rel="哈尔滨" sendcar="Y" pre="HLJ " dsi="310" data-id="38">哈尔滨</span>
                                            </dd>
                                            <dd>
                                                <span rel="海口" sendcar="Y" pre="AN  " dsi="301" data-id="2">海口</span>
                                            </dd>
                                            <dd>
                                                <span rel="邯郸" sendcar="N" pre="HB  " dsi="1096" data-id="109">邯郸</span>
                                            </dd>
                                            <dd>
                                                <span rel="汉中" sendcar="N" pre="AX  " dsi="2683" data-id="206">汉中</span>
                                            </dd>
                                            <dd>
                                                <span rel="杭州" sendcar="Y" pre="ZJ  " dsi="10" data-id="88">杭州</span>
                                            </dd>
                                            <dd>
                                                <span rel="合肥" sendcar="Y" pre="AH  " dsi="17" data-id="1">合肥</span>
                                            </dd>
                                            <dd>
                                                <span rel="河源" sendcar="N" pre="GD  " dsi="1473" data-id="127">河源</span>
                                            </dd>
                                            <dd>
                                                <span rel="菏泽" sendcar="N" pre="SD  " dsi="3693" data-id="260">菏泽</span>
                                            </dd>
                                            <dd>
                                                <span rel="贺州" sendcar="N" pre="GX  " dsi="4242" data-id="272">贺州</span>
                                            </dd>
                                            <dd>
                                                <span rel="鹤岗" sendcar="N" pre="HLJ " dsi="5799" data-id="348">鹤岗</span>
                                            </dd>
                                            <dd>
                                                <span rel="衡水" sendcar="N" pre="HB  " dsi="3275" data-id="248">衡水</span>
                                            </dd>
                                            <dd>
                                                <span rel="衡阳" sendcar="N" pre="UN  " dsi="1375" data-id="122">衡阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="红河" sendcar="N" pre="YN  " dsi="5675" data-id="321">红河</span>
                                            </dd>
                                            <dd>
                                                <span rel="侯马" sendcar="N" pre="SX  " dsi="5320" data-id="308">侯马</span>
                                            </dd>
                                            <dd>
                                                <span rel="呼和浩特" sendcar="Y" pre="NMG " dsi="334"
                                                      data-id="66">呼和浩特</span>
                                            </dd>
                                            <dd>
                                                <span rel="呼伦贝尔" sendcar="N" pre="NMG " dsi="2685"
                                                      data-id="207">呼伦贝尔</span>
                                            </dd>
                                            <dd>
                                                <span rel="葫芦岛" sendcar="N" pre="LN  " dsi="1577"
                                                      data-id="129">葫芦岛</span>
                                            </dd>
                                            <dd>
                                                <span rel="湖州" sendcar="N" pre="ZJ  " dsi="2355" data-id="163">湖州</span>
                                            </dd>
                                            <dd>
                                                <span rel="怀化" sendcar="N" pre="UN  " dsi="4327" data-id="279">怀化</span>
                                            </dd>
                                            <dd>
                                                <span rel="淮安" sendcar="N" pre="JS  " dsi="882" data-id="47">淮安</span>
                                            </dd>
                                            <dd>
                                                <span rel="淮南" sendcar="N" pre="AH  " dsi="2577" data-id="188">淮南</span>
                                            </dd>
                                            <dd>
                                                <span rel="黄冈" sendcar="N" pre="UB  " dsi="5819" data-id="350">黄冈</span>
                                            </dd>
                                            <dd>
                                                <span rel="黄山" sendcar="N" pre="AH  " dsi="2576" data-id="187">黄山</span>
                                            </dd>
                                            <dd>
                                                <span rel="黄石" sendcar="N" pre="UB  " dsi="5168" data-id="303">黄石</span>
                                            </dd>
                                            <dd>
                                                <span rel="惠州" sendcar="N" pre="GD  " dsi="306" data-id="17">惠州</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>J</em>
                                            <dd>
                                                <span rel="鸡西" sendcar="N" pre="HLJ " dsi="5836" data-id="353">鸡西</span>
                                            </dd>
                                            <dd>
                                                <span rel="吉安" sendcar="N" pre="JX  " dsi="2283" data-id="143">吉安</span>
                                            </dd>
                                            <dd>
                                                <span rel="吉林" sendcar="N" pre="JL  " dsi="2287" data-id="147">吉林</span>
                                            </dd>
                                            <dd>
                                                <span rel="吉首" sendcar="N" pre="UN  " dsi="5651" data-id="319">吉首</span>
                                            </dd>
                                            <dd>
                                                <span rel="济南" sendcar="Y" pre="SD  " dsi="375" data-id="72">济南</span>
                                            </dd>
                                            <dd>
                                                <span rel="济宁" sendcar="N" pre="SD  " dsi="5474" data-id="73">济宁</span>
                                            </dd>
                                            <dd>
                                                <span rel="佳木斯" sendcar="N" pre="HLJ " dsi="2684"
                                                      data-id="39">佳木斯</span>
                                            </dd>
                                            <dd>
                                                <span rel="嘉兴" sendcar="Y" pre="ZJ  " dsi="322" data-id="89">嘉兴</span>
                                            </dd>
                                            <dd>
                                                <span rel="嘉峪关" sendcar="N" pre="GS  " dsi="2627"
                                                      data-id="203">嘉峪关</span>
                                            </dd>
                                            <dd>
                                                <span rel="简阳" sendcar="N" pre="SC  " dsi="5678" data-id="324">简阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="江门" sendcar="N" pre="GD  " dsi="789" data-id="18">江门</span>
                                            </dd>
                                            <dd>
                                                <span rel="江阴" sendcar="Y" pre="JS  " dsi="731" data-id="48">江阴</span>
                                            </dd>
                                            <dd>
                                                <span rel="焦作" sendcar="N" pre="HN  " dsi="5781" data-id="339">焦作</span>
                                            </dd>
                                            <dd>
                                                <span rel="揭阳" sendcar="N" pre="GD  " dsi="2735" data-id="220">揭阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="金华" sendcar="N" pre="ZJ  " dsi="740" data-id="90">金华</span>
                                            </dd>
                                            <dd>
                                                <span rel="锦州" sendcar="N" pre="LN  " dsi="2501" data-id="174">锦州</span>
                                            </dd>
                                            <dd>
                                                <span rel="晋江" sendcar="N" pre="FJ  " dsi="833" data-id="9">晋江</span>
                                            </dd>
                                            <dd>
                                                <span rel="缙云" sendcar="Y" pre="ZJ  " dsi="4992" data-id="293">缙云</span>
                                            </dd>
                                            <dd>
                                                <span rel="荆门" sendcar="N" pre="UB  " dsi="1698" data-id="133">荆门</span>
                                            </dd>
                                            <dd>
                                                <span rel="荆州" sendcar="N" pre="UB  " dsi="2700" data-id="217">荆州</span>
                                            </dd>
                                            <dd>
                                                <span rel="景德镇" sendcar="N" pre="JX  " dsi="2623"
                                                      data-id="202">景德镇</span>
                                            </dd>
                                            <dd>
                                                <span rel="九江" sendcar="N" pre="JX  " dsi="983" data-id="103">九江</span>
                                            </dd>
                                            <dd>
                                                <span rel="九寨沟" sendcar="N" pre="SC  " dsi="2848"
                                                      data-id="234">九寨沟</span>
                                            </dd>
                                        </div>
                                    </dl>
                                </div>
                            </li>
                            <li>
                                <div class="inner-box">
                                    <dl>
                                        <div class='city-initial'><em>K</em>
                                            <dd>
                                                <span rel="喀纳斯" sendcar="N" pre="XJ  " dsi="3067"
                                                      data-id="241">喀纳斯</span>
                                            </dd>
                                            <dd>
                                                <span rel="开封" sendcar="Y" pre="HN  " dsi="557" data-id="154">开封</span>
                                            </dd>
                                            <dd>
                                                <span rel="凯里" sendcar="N" pre="GZ  " dsi="2498" data-id="171">凯里</span>
                                            </dd>
                                            <dd>
                                                <span rel="库尔勒" sendcar="N" pre="XJ  " dsi="5118"
                                                      data-id="299">库尔勒</span>
                                            </dd>
                                            <dd>
                                                <span rel="昆明" sendcar="Y" pre="YN  " dsi="342" data-id="86">昆明</span>
                                            </dd>
                                            <dd>
                                                <span rel="昆山" sendcar="Y" pre="JS  " dsi="78" data-id="49">昆山</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>L</em>
                                            <dd>
                                                <span rel="拉萨" sendcar="N" pre="XZ  " dsi="2037" data-id="139">拉萨</span>
                                            </dd>
                                            <dd>
                                                <span rel="来宾" sendcar="N" pre="GX  " dsi="3733" data-id="265">来宾</span>
                                            </dd>
                                            <dd>
                                                <span rel="莱芜" sendcar="N" pre="SD  " dsi="3694" data-id="261">莱芜</span>
                                            </dd>
                                            <dd>
                                                <span rel="兰州" sendcar="N" pre="GS  " dsi="605" data-id="27">兰州</span>
                                            </dd>
                                            <dd>
                                                <span rel="阆中" sendcar="N" pre="SC  " dsi="4223" data-id="270">阆中</span>
                                            </dd>
                                            <dd>
                                                <span rel="廊坊" sendcar="N" pre="HB  " dsi="1124" data-id="114">廊坊</span>
                                            </dd>
                                            <dd>
                                                <span rel="乐东" sendcar="N" pre="AN  " dsi="5766" data-id="336">乐东</span>
                                            </dd>
                                            <dd>
                                                <span rel="乐山" sendcar="N" pre="SC  " dsi="4324" data-id="278">乐山</span>
                                            </dd>
                                            <dd>
                                                <span rel="丽江" sendcar="N" pre="YN  " dsi="1142" data-id="116">丽江</span>
                                            </dd>
                                            <dd>
                                                <span rel="丽水" sendcar="N" pre="ZJ  " dsi="2753" data-id="228">丽水</span>
                                            </dd>
                                            <dd>
                                                <span rel="连云港" sendcar="N" pre="JS  " dsi="4621"
                                                      data-id="286">连云港</span>
                                            </dd>
                                            <dd>
                                                <span rel="辽阳" sendcar="N" pre="LN  " dsi="5840" data-id="356">辽阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="聊城" sendcar="N" pre="SD  " dsi="3695" data-id="262">聊城</span>
                                            </dd>
                                            <dd>
                                                <span rel="林芝" sendcar="N" pre="XZ  " dsi="2815" data-id="232">林芝</span>
                                            </dd>
                                            <dd>
                                                <span rel="临汾" sendcar="N" pre="SX  " dsi="987" data-id="104">临汾</span>
                                            </dd>
                                            <dd>
                                                <span rel="临高" sendcar="N" pre="AN  " dsi="5686" data-id="331">临高</span>
                                            </dd>
                                            <dd>
                                                <span rel="临沂" sendcar="N" pre="SD  " dsi="3696" data-id="263">临沂</span>
                                            </dd>
                                            <dd>
                                                <span rel="陵水" sendcar="N" pre="AN  " dsi="4287" data-id="276">陵水</span>
                                            </dd>
                                            <dd>
                                                <span rel="浏阳" sendcar="N" pre="UN  " dsi="3731" data-id="267">浏阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="柳州" sendcar="N" pre="GX  " dsi="1775" data-id="135">柳州</span>
                                            </dd>
                                            <dd>
                                                <span rel="六安" sendcar="N" pre="AH  " dsi="1104" data-id="110">六安</span>
                                            </dd>
                                            <dd>
                                                <span rel="六盘水" sendcar="N" pre="GZ  " dsi="5841"
                                                      data-id="357">六盘水</span>
                                            </dd>
                                            <dd>
                                                <span rel="龙岩" sendcar="N" pre="FJ  " dsi="1470" data-id="126">龙岩</span>
                                            </dd>
                                            <dd>
                                                <span rel="娄底" sendcar="N" pre="UN  " dsi="4328" data-id="280">娄底</span>
                                            </dd>
                                            <dd>
                                                <span rel="泸州" sendcar="N" pre="SC  " dsi="2581" data-id="192">泸州</span>
                                            </dd>
                                            <dd>
                                                <span rel="洛阳" sendcar="N" pre="HN  " dsi="699" data-id="40">洛阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="漯河" sendcar="N" pre="HN  " dsi="581" data-id="41">漯河</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>M</em>
                                            <dd>
                                                <span rel="马鞍山" sendcar="N" pre="AH  " dsi="962"
                                                      data-id="100">马鞍山</span>
                                            </dd>
                                            <dd>
                                                <span rel="茂名" sendcar="N" pre="GD  " dsi="946" data-id="98">茂名</span>
                                            </dd>
                                            <dd>
                                                <span rel="眉山" sendcar="N" pre="SC  " dsi="5641" data-id="316">眉山</span>
                                            </dd>
                                            <dd>
                                                <span rel="梅州" sendcar="N" pre="GD  " dsi="1456" data-id="124">梅州</span>
                                            </dd>
                                            <dd>
                                                <span rel="汨罗" sendcar="N" pre="UN  " dsi="2740" data-id="226">汨罗</span>
                                            </dd>
                                            <dd>
                                                <span rel="绵阳" sendcar="N" pre="SC  " dsi="977" data-id="102">绵阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="牡丹江" sendcar="N" pre="HLJ " dsi="1143"
                                                      data-id="115">牡丹江</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>N</em>
                                            <dd>
                                                <span rel="南昌" sendcar="Y" pre="JX  " dsi="22" data-id="59">南昌</span>
                                            </dd>
                                            <dd>
                                                <span rel="南充" sendcar="N" pre="SC  " dsi="1747" data-id="134">南充</span>
                                            </dd>
                                            <dd>
                                                <span rel="南京" sendcar="Y" pre="JS  " dsi="14" data-id="50">南京</span>
                                            </dd>
                                            <dd>
                                                <span rel="南宁" sendcar="Y" pre="GX  " dsi="307" data-id="29">南宁</span>
                                            </dd>
                                            <dd>
                                                <span rel="南平" sendcar="N" pre="FJ  " dsi="3686" data-id="258">南平</span>
                                            </dd>
                                            <dd>
                                                <span rel="南通" sendcar="Y" pre="JS  " dsi="15" data-id="51">南通</span>
                                            </dd>
                                            <dd>
                                                <span rel="南阳" sendcar="N" pre="HN  " dsi="2586" data-id="195">南阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="内江" sendcar="N" pre="SC  " dsi="5782" data-id="340">内江</span>
                                            </dd>
                                            <dd>
                                                <span rel="宁波" sendcar="Y" pre="ZJ  " dsi="12" data-id="91">宁波</span>
                                            </dd>
                                            <dd>
                                                <span rel="宁德" sendcar="N" pre="FJ  " dsi="2694" data-id="214">宁德</span>
                                            </dd>
                                        </div>
                                    </dl>
                                </div>
                            </li>
                            <li>
                                <div class="inner-box">
                                    <dl>
                                        <div class='city-initial'><em>P</em>
                                            <dd>
                                                <span rel="攀枝花" sendcar="N" pre="SC  " dsi="5771"
                                                      data-id="338">攀枝花</span>
                                            </dd>
                                            <dd>
                                                <span rel="盘锦" sendcar="N" pre="LN  " dsi="2502" data-id="175">盘锦</span>
                                            </dd>
                                            <dd>
                                                <span rel="萍乡" sendcar="N" pre="JX  " dsi="3729" data-id="257">萍乡</span>
                                            </dd>
                                            <dd>
                                                <span rel="莆田" sendcar="N" pre="FJ  " dsi="2286" data-id="146">莆田</span>
                                            </dd>
                                            <dd>
                                                <span rel="普洱" sendcar="N" pre="YN  " dsi="5392" data-id="310">普洱</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>Q</em>
                                            <dd>
                                                <span rel="齐齐哈尔" sendcar="N" pre="HLJ " dsi="2381"
                                                      data-id="165">齐齐哈尔</span>
                                            </dd>
                                            <dd>
                                                <span rel="潜江" sendcar="N" pre="UB  " dsi="2699" data-id="216">潜江</span>
                                            </dd>
                                            <dd>
                                                <span rel="钦州" sendcar="N" pre="GX  " dsi="5208" data-id="307">钦州</span>
                                            </dd>
                                            <dd>
                                                <span rel="秦皇岛" sendcar="N" pre="HB  " dsi="2841"
                                                      data-id="233">秦皇岛</span>
                                            </dd>
                                            <dd>
                                                <span rel="青岛" sendcar="Y" pre="SD  " dsi="11" data-id="74">青岛</span>
                                            </dd>
                                            <dd>
                                                <span rel="清远" sendcar="N" pre="GD  " dsi="1157" data-id="117">清远</span>
                                            </dd>
                                            <dd>
                                                <span rel="琼海" sendcar="N" pre="AN  " dsi="2362" data-id="160">琼海</span>
                                            </dd>
                                            <dd>
                                                <span rel="衢州" sendcar="N" pre="ZJ  " dsi="2354" data-id="164">衢州</span>
                                            </dd>
                                            <dd>
                                                <span rel="曲阜" sendcar="N" pre="SD  " dsi="2504" data-id="177">曲阜</span>
                                            </dd>
                                            <dd>
                                                <span rel="曲靖" sendcar="N" pre="YN  " dsi="2737" data-id="222">曲靖</span>
                                            </dd>
                                            <dd>
                                                <span rel="泉州" sendcar="N" pre="FJ  " dsi="834" data-id="11">泉州</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>R</em>
                                            <dd>
                                                <span rel="日照" sendcar="N" pre="SD  " dsi="2981" data-id="238">日照</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>S</em>
                                            <dd>
                                                <span rel="三明" sendcar="N" pre="FJ  " dsi="5107" data-id="295">三明</span>
                                            </dd>
                                            <dd>
                                                <span rel="三亚" sendcar="Y" pre="AN  " dsi="165" data-id="3">三亚</span>
                                            </dd>
                                            <dd>
                                                <span rel="汕头" sendcar="N" pre="GD  " dsi="878" data-id="19">汕头</span>
                                            </dd>
                                            <dd>
                                                <span rel="汕尾" sendcar="N" pre="GD  " dsi="2625" data-id="199">汕尾</span>
                                            </dd>
                                            <dd>
                                                <span rel="商洛" sendcar="N" pre="AX  " dsi="5798" data-id="347">商洛</span>
                                            </dd>
                                            <dd>
                                                <span rel="商丘" sendcar="N" pre="HN  " dsi="3697" data-id="256">商丘</span>
                                            </dd>
                                            <dd>
                                                <span rel="上海" sendcar="Y" pre="SH  " dsi="3" data-id="2">上海</span>
                                            </dd>
                                            <dd>
                                                <span rel="上饶" sendcar="N" pre="JX  " dsi="999" data-id="105">上饶</span>
                                            </dd>
                                            <dd>
                                                <span rel="韶关" sendcar="N" pre="GD  " dsi="907" data-id="20">韶关</span>
                                            </dd>
                                            <dd>
                                                <span rel="邵阳" sendcar="N" pre="UN  " dsi="4561" data-id="284">邵阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="绍兴" sendcar="Y" pre="ZJ  " dsi="305" data-id="93">绍兴</span>
                                            </dd>
                                            <dd>
                                                <span rel="深圳" sendcar="Y" pre="GD  " dsi="26" data-id="21">深圳</span>
                                            </dd>
                                            <dd>
                                                <span rel="沈阳" sendcar="Y" pre="LN  " dsi="19" data-id="63">沈阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="十堰" sendcar="N" pre="UB  " dsi="2738" data-id="223">十堰</span>
                                            </dd>
                                            <dd>
                                                <span rel="石家庄" sendcar="Y" pre="HB  " dsi="309" data-id="34">石家庄</span>
                                            </dd>
                                            <dd>
                                                <span rel="朔州" sendcar="N" pre="SX  " dsi="5127" data-id="300">朔州</span>
                                            </dd>
                                            <dd>
                                                <span rel="四平" sendcar="N" pre="JL  " dsi="2499" data-id="172">四平</span>
                                            </dd>
                                            <dd>
                                                <span rel="苏州" sendcar="Y" pre="JS  " dsi="7" data-id="52">苏州</span>
                                            </dd>
                                            <dd>
                                                <span rel="随州" sendcar="N" pre="UB  " dsi="4774" data-id="289">随州</span>
                                            </dd>
                                            <dd>
                                                <span rel="遂宁" sendcar="N" pre="SC  " dsi="2513" data-id="184">遂宁</span>
                                            </dd>
                                            <dd>
                                                <span rel="遂溪" sendcar="N" pre="GD  " dsi="5679" data-id="325">遂溪</span>
                                            </dd>
                                            <dd>
                                                <span rel="宿迁" sendcar="N" pre="JS  " dsi="4275" data-id="273">宿迁</span>
                                            </dd>
                                            <dd>
                                                <span rel="宿州" sendcar="N" pre="AH  " dsi="3934" data-id="269">宿州</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>T</em>
                                            <dd>
                                                <span rel="台山" sendcar="N" pre="GD  " dsi="5684" data-id="329">台山</span>
                                            </dd>
                                            <dd>
                                                <span rel="台州" sendcar="N" pre="ZJ  " dsi="1899" data-id="94">台州</span>
                                            </dd>
                                            <dd>
                                                <span rel="太仓" sendcar="N" pre="JS  " dsi="535" data-id="53">太仓</span>
                                            </dd>
                                            <dd>
                                                <span rel="太原" sendcar="Y" pre="SX  " dsi="82" data-id="78">太原</span>
                                            </dd>
                                            <dd>
                                                <span rel="泰安" sendcar="N" pre="SD  " dsi="2358" data-id="162">泰安</span>
                                            </dd>
                                            <dd>
                                                <span rel="泰州" sendcar="N" pre="JS  " dsi="2291" data-id="106">泰州</span>
                                            </dd>
                                            <dd>
                                                <span rel="腾冲" sendcar="N" pre="YN  " dsi="2361" data-id="158">腾冲</span>
                                            </dd>
                                            <dd>
                                                <span rel="天津" sendcar="Y" pre="TJ  " dsi="16" data-id="79">天津</span>
                                            </dd>
                                            <dd>
                                                <span rel="天水" sendcar="N" pre="GS  " dsi="5642" data-id="317">天水</span>
                                            </dd>
                                            <dd>
                                                <span rel="通辽" sendcar="N" pre="NMG " dsi="5847" data-id="359">通辽</span>
                                            </dd>
                                            <dd>
                                                <span rel="铜川" sendcar="N" pre="AX  " dsi="5797" data-id="346">铜川</span>
                                            </dd>
                                            <dd>
                                                <span rel="铜陵" sendcar="N" pre="AH  " dsi="5804" data-id="274">铜陵</span>
                                            </dd>
                                            <dd>
                                                <span rel="铜仁" sendcar="N" pre="GZ  " dsi="3844" data-id="268">铜仁</span>
                                            </dd>
                                        </div>
                                    </dl>
                                </div>
                            </li>
                            <li>
                                <div class="inner-box">
                                    <dl>
                                        <div class='city-initial'><em>W</em>
                                            <dd>
                                                <span rel="万宁" sendcar="N" pre="AN  " dsi="5147" data-id="302">万宁</span>
                                            </dd>
                                            <dd>
                                                <span rel="威海" sendcar="N" pre="SD  " dsi="2360" data-id="161">威海</span>
                                            </dd>
                                            <dd>
                                                <span rel="潍坊" sendcar="N" pre="SD  " dsi="783" data-id="75">潍坊</span>
                                            </dd>
                                            <dd>
                                                <span rel="渭南" sendcar="N" pre="AX  " dsi="2509" data-id="180">渭南</span>
                                            </dd>
                                            <dd>
                                                <span rel="温州" sendcar="Y" pre="ZJ  " dsi="619" data-id="95">温州</span>
                                            </dd>
                                            <dd>
                                                <span rel="文昌" sendcar="N" pre="AN  " dsi="4240" data-id="271">文昌</span>
                                            </dd>
                                            <dd>
                                                <span rel="文山" sendcar="N" pre="YN  " dsi="5676" data-id="322">文山</span>
                                            </dd>
                                            <dd>
                                                <span rel="乌兰察布" sendcar="N" pre="NMG " dsi="5845"
                                                      data-id="358">乌兰察布</span>
                                            </dd>
                                            <dd>
                                                <span rel="乌鲁木齐" sendcar="Y" pre="XJ  " dsi="1099"
                                                      data-id="112">乌鲁木齐</span>
                                            </dd>
                                            <dd>
                                                <span rel="无锡" sendcar="Y" pre="JS  " dsi="56" data-id="54">无锡</span>
                                            </dd>
                                            <dd>
                                                <span rel="芜湖" sendcar="N" pre="AH  " dsi="2292" data-id="150">芜湖</span>
                                            </dd>
                                            <dd>
                                                <span rel="梧州" sendcar="N" pre="GX  " dsi="4326" data-id="283">梧州</span>
                                            </dd>
                                            <dd>
                                                <span rel="武汉" sendcar="Y" pre="UB  " dsi="475" data-id="81">武汉</span>
                                            </dd>
                                            <dd>
                                                <span rel="武夷山" sendcar="N" pre="FJ  " dsi="2402"
                                                      data-id="121">武夷山</span>
                                            </dd>
                                            <dd>
                                                <span rel="婺源" sendcar="N" pre="JX  " dsi="2622" data-id="201">婺源</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>X</em>
                                            <dd>
                                                <span rel="厦门" sendcar="Y" pre="FJ  " dsi="25" data-id="12">厦门</span>
                                            </dd>
                                            <dd>
                                                <span rel="西安" sendcar="Y" pre="AX  " dsi="23" data-id="4">西安</span>
                                            </dd>
                                            <dd>
                                                <span rel="西昌" sendcar="N" pre="SC  " dsi="4936" data-id="292">西昌</span>
                                            </dd>
                                            <dd>
                                                <span rel="西宁" sendcar="N" pre="QH  " dsi="511" data-id="70">西宁</span>
                                            </dd>
                                            <dd>
                                                <span rel="西双版纳" sendcar="Y" pre="YN  " dsi="1116"
                                                      data-id="113">西双版纳</span>
                                            </dd>
                                            <dd>
                                                <span rel="锡林浩特" sendcar="N" pre="NMG " dsi="5765"
                                                      data-id="335">锡林浩特</span>
                                            </dd>
                                            <dd>
                                                <span rel="仙桃" sendcar="N" pre="UB  " dsi="2512" data-id="183">仙桃</span>
                                            </dd>
                                            <dd>
                                                <span rel="咸宁" sendcar="N" pre="UB  " dsi="1403" data-id="123">咸宁</span>
                                            </dd>
                                            <dd>
                                                <span rel="咸阳" sendcar="N" pre="AX  " dsi="2356" data-id="155">咸阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="湘潭" sendcar="N" pre="UN  " dsi="2294" data-id="151">湘潭</span>
                                            </dd>
                                            <dd>
                                                <span rel="襄阳" sendcar="N" pre="UB  " dsi="1468" data-id="125">襄阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="孝感" sendcar="N" pre="UB  " dsi="5650" data-id="318">孝感</span>
                                            </dd>
                                            <dd>
                                                <span rel="忻州" sendcar="N" pre="SX  " dsi="5596" data-id="315">忻州</span>
                                            </dd>
                                            <dd>
                                                <span rel="新乡" sendcar="N" pre="HN  " dsi="5769" data-id="337">新乡</span>
                                            </dd>
                                            <dd>
                                                <span rel="新余" sendcar="N" pre="JX  " dsi="2511" data-id="182">新余</span>
                                            </dd>
                                            <dd>
                                                <span rel="新郑" sendcar="N" pre="HN  " dsi="5655" data-id="320">新郑</span>
                                            </dd>
                                            <dd>
                                                <span rel="信阳" sendcar="N" pre="HN  " dsi="2510" data-id="181">信阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="邢台" sendcar="N" pre="HB  " dsi="2503" data-id="176">邢台</span>
                                            </dd>
                                            <dd>
                                                <span rel="兴义" sendcar="N" pre="GZ  " dsi="5393" data-id="311">兴义</span>
                                            </dd>
                                            <dd>
                                                <span rel="徐州" sendcar="Y" pre="JS  " dsi="750" data-id="56">徐州</span>
                                            </dd>
                                            <dd>
                                                <span rel="许昌" sendcar="N" pre="HN  " dsi="2284" data-id="144">许昌</span>
                                            </dd>
                                            <dd>
                                                <span rel="宣城" sendcar="N" pre="AH  " dsi="5803" data-id="313">宣城</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>Y</em>
                                            <dd>
                                                <span rel="雅安" sendcar="N" pre="SC  " dsi="4865" data-id="291">雅安</span>
                                            </dd>
                                            <dd>
                                                <span rel="烟台" sendcar="Y" pre="SD  " dsi="1192" data-id="118">烟台</span>
                                            </dd>
                                            <dd>
                                                <span rel="延安" sendcar="N" pre="AX  " dsi="3251" data-id="246">延安</span>
                                            </dd>
                                            <dd>
                                                <span rel="延吉" sendcar="N" pre="JL  " dsi="2382" data-id="166">延吉</span>
                                            </dd>
                                            <dd>
                                                <span rel="盐城" sendcar="N" pre="JS  " dsi="943" data-id="96">盐城</span>
                                            </dd>
                                            <dd>
                                                <span rel="扬州" sendcar="Y" pre="JS  " dsi="298" data-id="57">扬州</span>
                                            </dd>
                                            <dd>
                                                <span rel="阳江" sendcar="N" pre="GD  " dsi="1872" data-id="136">阳江</span>
                                            </dd>
                                            <dd>
                                                <span rel="阳泉" sendcar="N" pre="SX  " dsi="5849" data-id="360">阳泉</span>
                                            </dd>
                                            <dd>
                                                <span rel="伊宁" sendcar="N" pre="XJ  " dsi="2803" data-id="231">伊宁</span>
                                            </dd>
                                            <dd>
                                                <span rel="宜宾" sendcar="N" pre="SC  " dsi="2579" data-id="190">宜宾</span>
                                            </dd>
                                            <dd>
                                                <span rel="宜昌" sendcar="N" pre="UB  " dsi="976" data-id="101">宜昌</span>
                                            </dd>
                                            <dd>
                                                <span rel="宜春" sendcar="N" pre="JX  " dsi="2741" data-id="225">宜春</span>
                                            </dd>
                                            <dd>
                                                <span rel="宜兴" sendcar="Y" pre="JS  " dsi="2285" data-id="145">宜兴</span>
                                            </dd>
                                            <dd>
                                                <span rel="义乌" sendcar="Y" pre="ZJ  " dsi="273" data-id="97">义乌</span>
                                            </dd>
                                            <dd>
                                                <span rel="益阳" sendcar="N" pre="UN  " dsi="5115" data-id="298">益阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="银川" sendcar="N" pre="NX  " dsi="843" data-id="68">银川</span>
                                            </dd>
                                            <dd>
                                                <span rel="英德" sendcar="N" pre="GD  " dsi="5683" data-id="328">英德</span>
                                            </dd>
                                            <dd>
                                                <span rel="鹰潭" sendcar="N" pre="JX  " dsi="2894" data-id="237">鹰潭</span>
                                            </dd>
                                            <dd>
                                                <span rel="营口" sendcar="N" pre="LN  " dsi="1308" data-id="120">营口</span>
                                            </dd>
                                            <dd>
                                                <span rel="永州" sendcar="N" pre="UN  " dsi="2882" data-id="235">永州</span>
                                            </dd>
                                            <dd>
                                                <span rel="榆林" sendcar="N" pre="AX  " dsi="5999" data-id="361">榆林</span>
                                            </dd>
                                            <dd>
                                                <span rel="玉溪" sendcar="N" pre="YN  " dsi="3679" data-id="255">玉溪</span>
                                            </dd>
                                            <dd>
                                                <span rel="岳阳" sendcar="N" pre="UN  " dsi="950" data-id="99">岳阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="云浮" sendcar="N" pre="GD  " dsi="2693" data-id="213">云浮</span>
                                            </dd>
                                            <dd>
                                                <span rel="运城" sendcar="N" pre="SX  " dsi="2288" data-id="148">运城</span>
                                            </dd>
                                        </div>
                                        <div class='city-initial'><em>Z</em>
                                            <dd>
                                                <span rel="枣庄" sendcar="Y" pre="SD  " dsi="2619" data-id="198">枣庄</span>
                                            </dd>
                                            <dd>
                                                <span rel="湛江" sendcar="N" pre="GD  " dsi="791" data-id="23">湛江</span>
                                            </dd>
                                            <dd>
                                                <span rel="张家港" sendcar="N" pre="JS  " dsi="5022"
                                                      data-id="196">张家港</span>
                                            </dd>
                                            <dd>
                                                <span rel="张家界" sendcar="N" pre="UN  " dsi="3569"
                                                      data-id="254">张家界</span>
                                            </dd>
                                            <dd>
                                                <span rel="张家口" sendcar="N" pre="HB  " dsi="2383"
                                                      data-id="167">张家口</span>
                                            </dd>
                                            <dd>
                                                <span rel="张掖" sendcar="N" pre="GS  " dsi="5111" data-id="297">张掖</span>
                                            </dd>
                                            <dd>
                                                <span rel="漳州" sendcar="N" pre="FJ  " dsi="857" data-id="13">漳州</span>
                                            </dd>
                                            <dd>
                                                <span rel="昭通" sendcar="N" pre="YN  " dsi="5833" data-id="352">昭通</span>
                                            </dd>
                                            <dd>
                                                <span rel="肇庆" sendcar="N" pre="GD  " dsi="2290" data-id="149">肇庆</span>
                                            </dd>
                                            <dd>
                                                <span rel="镇江" sendcar="N" pre="JS  " dsi="580" data-id="58">镇江</span>
                                            </dd>
                                            <dd>
                                                <span rel="郑州" sendcar="Y" pre="HN  " dsi="1018" data-id="42">郑州</span>
                                            </dd>
                                            <dd>
                                                <span rel="中山" sendcar="N" pre="GD  " dsi="720" data-id="24">中山</span>
                                            </dd>
                                            <dd>
                                                <span rel="中卫" sendcar="N" pre="NX  " dsi="4743" data-id="287">中卫</span>
                                            </dd>
                                            <dd>
                                                <span rel="舟山" sendcar="Y" pre="ZJ  " dsi="3068" data-id="242">舟山</span>
                                            </dd>
                                            <dd>
                                                <span rel="周口" sendcar="N" pre="HN  " dsi="5794" data-id="343">周口</span>
                                            </dd>
                                            <dd>
                                                <span rel="珠海" sendcar="N" pre="GD  " dsi="27" data-id="25">珠海</span>
                                            </dd>
                                            <dd>
                                                <span rel="株洲" sendcar="N" pre="UN  " dsi="959" data-id="83">株洲</span>
                                            </dd>
                                            <dd>
                                                <span rel="驻马店" sendcar="N" pre="HN  " dsi="5795"
                                                      data-id="344">驻马店</span>
                                            </dd>
                                            <dd>
                                                <span rel="资阳" sendcar="N" pre="SC  " dsi="5685" data-id="330">资阳</span>
                                            </dd>
                                            <dd>
                                                <span rel="淄博" sendcar="Y" pre="SD  " dsi="756" data-id="76">淄博</span>
                                            </dd>
                                            <dd>
                                                <span rel="自贡" sendcar="N" pre="SC  " dsi="2580" data-id="191">自贡</span>
                                            </dd>
                                            <dd>
                                                <span rel="遵义" sendcar="N" pre="GZ  " dsi="2692" data-id="212">遵义</span>
                                            </dd>
                                        </div>
                                    </dl>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2  visible-lg" style="border: 1px solid #cccccc; padding: 0 0; margin-top: 10px;">
            <div class="div_api" id="container" style="width: 100%;height: 35%;"></div>
            <ul class="ul-line">
                <li>取车门店:</li>
                <li>八万人体育场店</li>
                <li>徐汇区斜土路2899号甲（光启文化广场内，进来第一个入口左转）</li>
                <li>门店电话：021-64160981</li>
                <li>营业时间：08:00-21:00</li>
                <li><a href="#" class="a_explain">上海地区限行政策说明>></a></li>
                <!-- 按钮触发模态框 -->
                <li><a href="#" class="a_explain" data-toggle="modal" data-target="#myModal">预订规则说明>></a></li>
                <!-- 模态框（Modal） -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="book-rule">
                                    <h3>一、在线预付产品预订规则</h3>
                                    <div class="ruleinfo">
                                        <ul>
                                            <li>
                                                <p class="rule-lgbt">1、适用范围</p>
                                                <ol style="color: #eb5c00;">
                                                    <li>a) 此规则仅限平日适用，春节、国庆等法定节假日请以具体公示的活动页为准；</li>
                                                    <li>b) 此规则仅限普通车型使用，高端车型请下拉查看具体规则。</li>
                                                </ol>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">2、支付方式</p>
                                                <p>选择在线预付产品，请在订单确认后1小时内完成支付，过时订单将自动取消。</p>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">3、订单取消</p>
                                                <ol>
                                                    <li>a) 在取车时间前48小时外取消订单，预付订单金额将全额退款。</li>
                                                    <li>b) 在取车时间前48小时内取消订单，一嗨将收取最低一日日租金作为违约金，剩余已预付的订单金额将全部退还给客户。</li>
                                                    <li>c) 天气不可抗力（比如洪水、地震等自然灾害）导致用户取消订单，不扣除违约金。</li>
                                                </ol>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">4、订单修改</p>
                                                <ol>
                                                    <li>a) 订单支付完成后，允许修改订单信息。</li>
                                                    <li>b)
                                                        修改后订单金额可能发生变化，若修改后订单金额低于原来订单金额，差价将会在3-5个工作日原路径返还；若修改后订单金额高于原来订单金额，您可选择在线支付或取车时到店支付订单剩余金额。
                                                    </li>
                                                </ol>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">5、续租</p>
                                                <p>取车后增加租期，视为续租，续租部分按照非预付优惠价计算。</p>
                                            </li>
                                        </ul>
                                    </div>

                                    <h3>二、高端车预订规则</h3>
                                    <div class="ruleinfo">
                                        <ul>
                                            <li>
                                                <p class="rule-lgbt">1、等级要求</p>
                                                <p>选择高端车产品，需要爱车指数达到6级及以上才可以预订。</p>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">2、支付方式</p>
                                                <p>选择高端车产品，请在订单确认后1小时内完成支付，过时订单将自动取消。</p>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">3、订单取消</p>
                                                <ol>
                                                    <li>a) 若在取车前48-72小时取消，收取订单金额的15%作为违约金；</li>
                                                    <li>b) 若在取车前24-48小时取消，收取订单金额的50%作为违约金；</li>
                                                    <li>c) 若在取车前24小时内取消，收取订单金额100%作为违约金；</li>
                                                    <li>d) 天气不可抗力（比如洪水、地震等自然灾害）导致用户取消订单，不扣除违约金。</li>
                                                </ol>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">4、订单修改</p>
                                                <ol>
                                                    <li>订单支付完成后，允许修改订单信息：</li>
                                                    <li>a）若在取车前48-72小时修改，收取订单金额的10%作为改签费；</li>
                                                    <li>b）若在取车前24-48小时修改，收取订单金额的25%作为改签费；</li>
                                                    <li>c）若在取车前24小时内修改，收取订单金额50%作为改签费；</li>
                                                    <li>d）天气不可抗力（比如洪水、地震等自然灾害）导致用户修改订单，不扣除改签费；</li>
                                                </ol>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">5、提前还车</p>
                                                <p>允许提前还车，但已预付的租金不退。</p>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">6、订单支付</p>
                                                <p>不可使用礼品E卡支付，其他支付方式不限。</p>
                                            </li>
                                        </ul>
                                    </div>

                                    <h3>三、升级租期产品规则</h3>
                                    <div class="ruleinfo">
                                        <ul>
                                            <li>
                                                <p class="rule-lgbt">1、价格显示</p>
                                                <p>价格显示处为您选择的日期的日均价，在升级租期后一嗨所提供的优惠价格，不包含您升级后增加租期的价格，具体订单金额以实际订单成交价为准</p>
                                            </li>
                                            <li>
                                                <p class="rule-lgbt">2、无任何退改规则要求</p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal -->
                </div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>

<script>
$(function () {
$(".zijia").attr("class","active");

})
</script>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/moment-with-locales(1).js"></script>
<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=BeesNY2WSx8qrQCtvoT55fpo7AgrhPkt"></script>
<%@include file="publicbot.jsp" %>
<script type="text/javascript">
    /*时间弹窗点击事件*/
    $('.form_time1').datetimepicker({
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1,
        minView: "month"//设置只显示到月份
    });
    $('.form_time2').datetimepicker({
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1,
        minView: "month"//设置只显示到月份
    });


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
        geolocation.getCurrentPosition(function (r) {
            if (this.getStatus() == BMAP_STATUS_SUCCESS) {
                var mk = new BMap.Marker(r.point);
                map.addOverlay(mk);
                map.panTo(r.point);
            }
            else {
            }
        });
        //浏览器定位

        //jquery代码
        $("#ydcityBox").hide();
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
        /*箭头菜单切换*/
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
        });
        $(".inner-box").find("span").hover(function () {
                $(this).addClass("hover");
            },
            function () {
                $(this).removeClass("hover");
            });
        /*弹窗菜单切换*/
        $(".tabHF-title").children("li").hover(function () {
                var $this = $(this);
                if ($this.text() == "热门") {
                    $(this).addClass("current").siblings().removeClass("current");
                    $(".tabHF-content").children("li:nth-of-type(1)").addClass("current").siblings().removeClass("current");
                } else if ($this.text() == "ABCDE") {
                    $(this).addClass("current").siblings().removeClass("current");
                    $(".tabHF-content").children("li:nth-of-type(2)").addClass("current").siblings().removeClass("current");
                } else if ($this.text() == "FGHJ") {
                    $(this).addClass("current").siblings().removeClass("current");
                    $(".tabHF-content").children("li:nth-of-type(3)").addClass("current").siblings().removeClass("current");
                } else if ($this.text() == "KLMN") {
                    $(this).addClass("current").siblings().removeClass("current");
                    $(".tabHF-content").children("li:nth-of-type(4)").addClass("current").siblings().removeClass("current");
                } else if ($this.text() == "PQRST") {
                    $(this).addClass("current").siblings().removeClass("current");
                    $(".tabHF-content").children("li:nth-of-type(5)").addClass("current").siblings().removeClass("current");
                } else if ($this.text() == "WXYZ") {
                    $(this).addClass("current").siblings().removeClass("current");
                    $(".tabHF-content").children("li:nth-of-type(6)").addClass("current").siblings().removeClass("current");
                }
            },
            function () {
//             $(".tabHF-content").children("li:first").addClass("current").siblings().removeClass("current");
            });
        <!--文本框的点击事件-->
        $("#PickupCity").click(function () {
            $("#ydcityBox").show();
        });
        $("#PickupCity").parent().siblings().click(function () {
            $("#ydcityBox").hide();
        });
        <!--下拉框的点击事件-->
        $(".inner-box").find("span").click(function () {
            var $city = $(this).text();
            $("#PickupCity").val($city);
            $("#ReturnCity").val($city);
            $("#ydcityBox").hide();
        });


        $(".btnopen1").hover(function () {
            $(this).next().addClass("typedis");
        }, function () {

        });

        $(".typebtn").hover(function () {
            $(this).addClass("typedis");
        }, function () {
            $(this).removeClass("typedis");
        });
        $(".btnopen4").hover(function () {
            $(this).next().addClass("typedis");
        }, function () {

        });

        $(".typebtn").hover(function () {
            $(this).addClass("typedis");
        }, function () {
            $(this).removeClass("typedis");
        });

        //城市点击绑定时间
        if ($("#flag")) {
            $("#imgLoad").hide();
        }


    });

    $("#ReturnCity").blur(function () {
        alert("11111");
        var city=$(this).val();
        $.ajax({
            type:"POST",
            url:"/AreaSelServlet",
            dataType:"JSON",
            data:"city="+city,
            success:function (data) {
                alert(data);
            },
            error:function () {
                alert("获取数据失败!");
            }
        })
    })



    //市区AJAX获取区域数据
    $(function () {
        $("#PickupCity").blur(function () {
            var city = $(this).val();
            $.ajax({
                type: "POST",
                url: "/AreaSelServlet",
                dataType: "JSON",
                data: "city=" + city,
                success: function (data) {
                    $(".arealist").empty().append("<ul id=\"setAllStore\" class=\"list-area tabHF-title\"></ul>");
                    //JSON遍历List<Map>的方法
                    /* for(var i=0,l=data.length;i<l;i++){
                         for(var key in data[i]){//其中KEY为下标
                             if (i==0){
                                 $("#setAllStore").append("<li class=\"current\">"+data[i][key]+"</li>");
                             }else {
                                 console.log(data[i][key])
                                 $("#setAllStore").append("<li>"+data[i][key]+"</li>");
                             }
                         }
                     }*/

                    for (var i = 0; i < data.length; i++) {
                        if (i == 0) {
                            $("#setAllStore").append("<li class=\"current\">" + data[i].aName + "</li>");
                        } else {
                            $("#setAllStore").append("<li>" + data[i].aName + "</li>");
                        }
                    }//标签返回页面时注册事件...

                    $("#getStore").parent().siblings().click(function () {
                        $("#ydkBox").hide();
                    });
                    $(".arealist").find("li").hover(function () {
                        $(this).addClass("current").siblings().removeClass("current");
                    }, function () {
                        $(this).removeClass("current").parent().find("li").eq(1).addClass("current");
                    });

                    $("#setAllStore").find("li").click(function () {
                        var $area = $(this).text();
                        $("#getStore").val($area);
                        $("#retStore").val($area);
                        $("#ydkBox").hide();
                    });
                },
                error: function () {
                    console.log("获取数据失败!");
                }

            })
        })
        $("#getStore").focus(function () {
            $("#ydkBox").show();
        })
        /*$("#getStore").blur(function () {
            $("#ydkBox").hide();
        })*/
        //下拉框的点击事件-->
        $("#getStore").parent().siblings().click(function () {
            $("#ydkBox").hide();
        });
         $(".arealist").find("li").hover(function () {
             $(this).addClass("current").siblings().removeClass("current");
         },function () {
             $(this).removeClass("current").parent().eq(1).addClass("current");
         })
        $("#btnSubmit").click(function () {
            var area1=$("#getStore").val();
            /*var city=$("#PickupCity").val();
            var area1=$("#getStore").val();
            $.ajax({
                type: "POST",
                url: "/BtnSubmitServlet",
                dataType: "JSON",
                data: "area1=" + area1,
                success: function (data){
                    console.log(data);
                },
                error:function () {
                    alert("获取失败,请重试!");
                }
            })*/
            location.href="/BtnSubmitServlet?area1="+area1;
        })




    })


</script>
</html>
