<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/16
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="../../jquery-2.1.4/jquery.js"></script>
    <link type="text/css" rel="stylesheet" href="../../bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript" src="../../bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <link href="../../bootstrap-3.3.7-dist/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <script src="../../bootstrap-3.3.7-dist/moment-with-locales(1).js"></script>
    <script src="../../bootstrap-3.3.7-dist/bootstrap-datetimepicker.min.js"></script>
    <script src="../../bootstrap-3.3.7-dist/bootstrap-datetimepicker.zh-CN.js"></script>

    <link rel="stylesheet" href="../../bootstrap-3.3.7-dist/city-picker.css">

    <script src="../../bootstrap-3.3.7-dist/city-picker.data.js"></script>
    <script src="../../bootstrap-3.3.7-dist/city-picker.js"></script>
    <script src="../../bootstrap-3.3.7-dist/main.js"></script>
    <title>车辆详情</title>

    <style>
        .mmmcon {
            margin-bottom: 10%;
            margin-top: 2%;
        }

        .gezi {
            border: lightgray solid 1px;
            padding: 0;
            margin-top: 2%;

        }

        .gezi img {
            margin-left: 4%
        }

        .text {
            padding-left: 5%;
        }

        .gezi:hover .text {
            background: black;
        }

        .gezi:hover {
            border: black solid 1px;
            color: white;
        }

        .gezi:hover .tit {
            color: white;
        }

        .tit {
            font-size: 26px;
            color: dimgray;
            font-weight: 800;
        }

        .bot {
            width: 100%;
            height: 30px;
            text-align: center;
            line-height: 30px;
            background: #eab519;
            color: white;
            font-weight: 600;
            font-size: 18px;
            border-radius: 2px;
            cursor: pointer;
        }

        .fengye {
            /*border: 1px solid red;*/
            float: right;
            font-size: 18px;
        }

    </style>
    <script type="text/javascript">
        function Datetime() {
            $('#datetimepicker1').datetimepicker({
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
            document.getElementById("nowdate").value = mydate;
        };

        function Datetime2() {
            $('#datetimepicker2').datetimepicker({
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
            document.getElementById("nowdate2").value = mydate;
        };

        $(function () {
            $(".chexing").attr("class","active");

        })
    </script>
</head>
<%@include file="/publictop.jsp" %>

<body>

<div class="container mmmcon">
    <div class="row">
        <form class="form-inline" id="chaxunform" action="${pageContext.request.contextPath}/CarServlet">
            <input type="hidden" name="method"  value="getCars">
            <input type="hidden" name="citys" value="" id="citys">
            <input type="hidden" name="currentPage" value="${page.firstPage}">

            <div class="col-md-4 col-sm-12">
                <div id="distpicker">
                    <div class="form-group">
                        <div style="position: relative;">
                            <input id="city-picker3" class="form-control" readonly type="text" value="江苏省/常州市/溧阳市"
                                   data-toggle="city-picker">

                        </div>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-warning" id="reset" type="button">重置</button>
                    </div>
                </div>
                <div class="docs-methods">
                </div>

            </div>
            <%--<div class="col-md-1 col-sm-12">取： </div>--%>
            <div class="col-md-3 col-sm-12"><a onclick="Datetime()" class='input-group date' id='datetimepicker1'>
                <input value="取车时间" name="getdate" type='text' class="form-control" id='nowdate' style="width: 150px; height: 30px;"/>
                <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </a></div>
            <%-- <div class="col-md-1 col-sm-12">还：</div>--%>
            <div class="col-md-3 col-sm-12">
                <a onclick="Datetime2()" class='input-group date' id='datetimepicker2'>
                    <input value="还车时间" name="backdate" type='text' class="form-control" id='nowdate2'
                           style="width: 150px; height: 30px;"/>
                    <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                </a></div>
            <div class="col-md-1 col-sm-12">&nbsp;</div>
            <div class="col-md-1 col-sm-12">
                <div class="bot" onclick="chaxun()">查询</div>
            </div>
        </form>
    </div>
    <div class="row">
        <c:forEach items="${page.data}" var="car">
            <div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="${car.image}" alt="">
                <div class="text"><span class="tit">${car.header}</span><%--加入的字不要超过11个--%>
                    <br/>自动/5座
                </div>
            </div>
        </c:forEach>
        <%--<div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="/images/img/gezi/1.jpg" alt=""><div class="text"><span class="tit">aaaaaaaa</span>&lt;%&ndash;加入的字不要超过11个&ndash;%&gt;
            <br/>自动/5座</div></div>
        <div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="/images/img/gezi/2.jpg" alt=""><div class="text"><span class="tit">XC90或同组车型</span>
            <br/>SUV/自动/5座</div></div>
        <div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="/images/img/gezi/3.jpg" alt=""><div class="text"><span class="tit">斯柯达速派或同组车型</span>
            <br/>自动/5座</div></div>
        <div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="/images/img/gezi/4.jpg" alt=""><div class="text"><span class="tit">全新胜达或同组车型</span>
            <br/>SUV/自动/5座</div></div>

        <div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="/images/img/gezi/1.jpg" alt=""><div class="text"><span class="tit">大众朗逸或同组车型</span>
            <br/>自动/5座</div></div>
        <div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="/images/img/gezi/2.jpg" alt=""><div class="text"><span class="tit">XC90或同组车型</span>
            <br/>SUV/自动/5座</div></div>
        <div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="/images/img/gezi/3.jpg" alt=""><div class="text"><span class="tit">斯柯达速派或同组车型</span>
            <br/>自动/5座</div></div>
        <div class="col-md-3 col-sm-6 col-xs-12 gezi"><img src="/images/img/gezi/4.jpg" alt=""><div class="text"><span class="tit">全新胜达或同组车型</span>
            <br/>SUV/自动/5座</div></div>--%>
        <div class="col-sm-12">
            <div class="fengye">
                <a href="${pageContext.request.contextPath}/CarServlet?currentPage=${page.firstPage}&method=getCars">首页</a>&nbsp;
                <c:if test="${page.currentPage > 1}">
                    <a href="${pageContext.request.contextPath}/CarServlet?currentPage=${page.prePage}&method=getCars">上一页</a>&nbsp;
                </c:if>
                <c:if test="${page.currentPage < page.totalPage}">
                    <a href="${pageContext.request.contextPath}/CarServlet?currentPage=${page.nextPage}&method=getCars">下一页</a>&nbsp;
                </c:if>
                <a href="${pageContext.request.contextPath}/CarServlet?currentPage=${page.totalPage}&method=getCars">末页</a>&nbsp;
                当前为第${page.currentPage}页/共${page.totalPage}页&nbsp;共${page.totalCount}条记录&nbsp;每页显示${page.pageSize}条
            </div>
        </div>

    </div>
</div>


<script type="text/javascript">

    function chaxun() {
        var code=$('[data-count="district"]').attr("data-code");
        $("#citys").val(code);
        $("#chaxunform").submit();
    }
</script>


</body>
<%@include file="/publicbot.jsp" %>

</html>
