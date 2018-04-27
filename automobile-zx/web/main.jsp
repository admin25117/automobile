<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 2018/4/8
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <%-- <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
     <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
     <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
     <link rel="stylesheet" href="css/index.css">
 --%>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>


    <style>
        .myrow1 {
            margin-top: 7%;
        }

        .lunb {
            margin-top: -20px;
        }

        .hot-left {
            height: 390px;
            margin-top: -2px;
            color: black;
        }

        .hot-right {
            padding: 0;

        }

        /*.up, .down {
            height: 174px;
        }*/

        .biaozhi div {
            border: 1px solid #b92c28;
        }

        .jingcai div {
            border: 1px solid #b92c28;
        }

        .wangdain div {
            border: 1px solid #b92c28;
        }

        .hottext {
            font-size: 22px;
            line-height: 40px;
            font-weight: 400;
            letter-spacing: 2px;
        }

        .hotin {
            background: lightgray;
            background: url("/images/img/hotcar_banner.jpg") no-repeat;
            opacity: 0.9;

            color: black;
            margin-left: -2%;
            width: 105.5%;
            height: 348px;
            margin-top: 2px;
            padding-top: 140px;
            padding-left: 50%;
            font-size: 32px;
            letter-spacing: 3px;
            line-height: 30px;
        }



        .type_left > .col-xs-3 {
            border: 1px solid lightgray;

        }

        .type_right > .col-xs-3 {
            border: 1px solid lightgray;

        }





        .clear {
            clear: both;
        }



        .spl {
            margin-top: 10%;
            margin-bottom: 10%;
        }

        .jcimg {
            padding: 0;
        }

        .jcimg img {
            width: 100%;
        }

        .jcimg:hover {
            opacity: 0.7;
            transition: 0.6s;
        }

        .hot-middle, .hot-right {
            padding: 0px;
        }



        .type_left div {
            text-align: center;
            height: 100px;
        }

        .type_right div {
            text-align: center;
            height: 100px;
        }




        .type_left div:hover {
            opacity: 0.7;
            transition: 400ms;
        }

        .type_right div:hover {
            opacity: 0.7;
            transition: 400ms;
        }

        .jcti {
            color: black;
            font-size: 22px;

        }

        .sele:hover {

            opacity: 0.9;
            transition: 400ms;
        }

        .sele:hover .seleti {
            color: black;

            font-size: 28px;
        }

        .sele:hover .seyuanjia {
            display: none;
            transition: 400ms;
        }

        .sele:hover .sexianjia {

            font-size: 24px;
            color: black;
        }

        .selebj1 {
            background: url("/images/img/bj/1.jpg") no-repeat;

            background-position: 135% 15px;
        }

        .seleti {
            font-weight: 500;
            font-size: 18px;
            padding-left: 2%;

        }

        .seyuanjia {

            font-weight: 400;
            font-size: 16px;
            text-decoration: line-through;

        }

        .sexianjia {
            font-weight: 400;
            font-size: 20px;
            padding-left: 4%;

        }

        /*select的图片开始*/

      /*  .selebj2 {
            background: url("/images/img/bj/2.jpg") no-repeat;

        }

        .selebj3 {
            background: url("/images/img/bj/3.jpg") no-repeat;

        }

        .selebj4 {
            background: url("/images/img/bj/4.jpg") no-repeat;

        }

        .selesh1 {
            background: url("/images/img/sh/1.jpg") no-repeat;
        }

        .selesh2 {
            background: url("/images/img/sh/2.jpg") no-repeat;
        }

        .selesh3 {
            background: url("/images/img/sh/3.jpg") no-repeat;
        }

        .selesh4 {
            background: url("/images/img/sh/4.jpg") no-repeat;
        }

        .selegz1 {
            background: url("/images/img/gz/1.jpg") no-repeat;
        }

        .selegz2 {
            background: url("/images/img/gz/2.jpg") no-repeat;
        }

        .selegz3 {
            background: url("/images/img/gz/3.jpg") no-repeat;
        }

        .selegz4 {
            background: url("/images/img/gz/4.jpg") no-repeat;
        }

        .selesz1 {
            background: url("/images/img/sz/1.jpg") no-repeat;
        }

        .selesz2 {
            background: url("/images/img/sz/2.jpg") no-repeat;
        }

        .selesz3 {
            background: url("/images/img/sz/3.jpg") no-repeat;
        }

        .selesz4 {
            background: url("/images/img/sz/4.jpg") no-repeat;
        }

        .selesz1 {
            background: url("/images/img/sz/4.jpg") no-repeat;

        }

        .selecq1 {
            background: url("/images/img/cq/1.jpg") no-repeat;
        }

        .selecq2 {
            background: url("/images/img/cq/2.jpg") no-repeat;
        }

        .selecq3 {
            background: url("/images/img/cq/3.jpg") no-repeat;
        }

        .selecq4 {
            background: url("/images/img/cq/4.jpg") no-repeat;
        }

        .selesy1 {
            background: url("/images/img/sy/1.jpg") no-repeat;
        }

        .selesy2 {
            background: url("/images/img/sy/2.jpg") no-repeat;
        }

        .selesy3 {
            background: url("/images/img/sy/3.jpg") no-repeat;
        }

        .selesy4 {
            background: url("/images/img/sy/4.jpg") no-repeat;
        }

        .selehk1 {
            background: url("/images/img/hk/1.jpg") no-repeat;
        }

        .selehk2 {
            background: url("/images/img/hk/2.jpg") no-repeat;
        }

        .selehk3 {
            background: url("/images/img/hk/3.jpg") no-repeat;
        }

        .selehk4 {
            background: url("/images/img/hk/4.jpg") no-repeat;
        }*/

        /*select的图片结束*/
    .sele {

            font-weight: 400;
            cursor: pointer;

           height:250px;
        }

        .triangle-topleft {
            float: left;
            width: 4px;
            height: 4px;
            border-top: 8px solid lightgray;
            border-right: 8px solid transparent;

            margin-left: 0px;
        }
        .sele{padding:0;}
    </style>
    <script type="text/javascript">
        $(function () {
            $(document).ready(function () {
                $('#myCarousel').carousel({interval: 5000, pause: false});//每隔5秒自动轮播
            });

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

        $(function () {
            $(".shouye").attr("class","active");

        })
    </script>
</head>

<%@include file="/publictop.jsp" %>

<body>

<%--轮播开始--%>

<div id="myCarousel" class="carousel slide lunb">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0"
            class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="/images/img/shouye1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="/images/img/shouye2.JPG" alt="Second slide">
        </div>
        <div class="item">
            <img src="/images/img/shouye3.jpg" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<%--轮播结束--%>


<div class="container">
    <%--热租车型 hot--%>
    <div class="row myrow1">
        <div class="hot-left col-lg-5 col-md-12"><b class="hottext">热租车型</b>
            <div class="hotin"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        </div>
        <div class="hot-right col-lg-7 col-md-12">
            <ul id="myTab" class="nav nav-pills">
                <%--<li></li>
                <li >
                    <a href="#bj" data-toggle="tab">
                        北京
                    </a>
                </li>
                <li ><a href="#sh" data-toggle="tab">上海</a></li>
                <li><a href="#gz" data-toggle="tab">广州</a></li>
                <li ><a href="#sz" data-toggle="tab">深圳</a></li>
                <li><a href="#cq" data-toggle="tab">重庆</a></li>
                <li class="active"><a href="#sy" data-toggle="tab">三亚</a></li>
                <li><a href="#hk" data-toggle="tab">海口</a></li>--%>
                <c:forEach items="${cityList}" var="city" varStatus="status">
                        <li><a href="" data-toggle="tab" onclick="sel(this)" id="${city.cityId}">${city.cName}</a></li>
                </c:forEach>
                <li id="gengduo"><a href="....." data-toggle="tab">更多</a></li>
            </ul>
            <div class="clear"></div>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade show active in" id="hot">
                    <div class="hot-middle col-md-6 col-sm-6">
                        <div class="up col-lg-12 sele selesh1">
                         <%--   <div class="triangle-topleft"></div>--%>
                            <div class="seleti">${carList[0].header}</div><br/><div class="sexianjia">￥${carList[0].netPrice}</div>
                            <img src="${carList[0].image}">
                        </div>
                        <div class="down col-lg-12 sele selesh2">
                           <%-- <div class="triangle-topleft"></div>--%>
                            <div class="seleti">${carList[1].header}</div><br/><div class="sexianjia">￥${carList[1].netPrice}</div>
                            <img src="${carList[1].image}">
                        </div>
                    </div>
                    <div class="hot-right col-md-6 col-sm-6">
                        <div class="up col-lg-12 sele selesh3">
                           <%-- <div class="triangle-topleft"></div>--%>
                            <div class="seleti">${carList[2].header}</div><br/><div class="sexianjia">￥${carList[2].netPrice}</div>
                            <img src="${carList[2].image}">
                        </div>
                        <div class="down col-lg-12 sele selesh4">
                          <%--  <div class="triangle-topleft"></div>--%>
                            <div class="seleti">${carList[3].header}</div><br/><div class="sexianjia">￥${carList[3].netPrice}</div>
                            <img src="${carList[3].image}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--热租车型结束 --%>


<%--<div class="container">
    &lt;%&ndash;汽车品牌&ndash;%&gt;
    <div class="row rowlr">
        <div class="type_left col-lg-6">
            <div class="col-xs-3 b1"></div>
            <div class="col-xs-3 b2"></div>
            <div class="col-xs-3 b3"></div>
            <div class="col-xs-3 b4"></div>
        </div>
        <div class="type_right col-lg-6">
            <div class="col-xs-3 b5"></div>
            <div class="col-xs-3 b6"></div>
            <div class="col-xs-3 b7"></div>
            <div class="col-xs-3 b8">...</div>
        </div>
    </div>
</div>--%>
<%--汽车品牌--%>


<div class="container">
    <%--精彩活动 spl--%>
    <div class="row spl">
        <div class="jcti">&nbsp;&nbsp;精彩活动</div>
        <div class="col-lg-3 col-xs-6 jcimg"><img src="/images/img/1.jpg" alt=""></div>
        <div class="col-lg-3 col-xs-6 jcimg"><img src="/images/img/2.png" alt=""></div>
        <div class="col-lg-3 col-xs-6 jcimg"><img src="/images/img/3.jpg" alt=""></div>
        <div class="col-lg-3 col-xs-6 jcimg"><img src="/images/img/4.jpg" alt=""></div>
    </div>

</div>
<%--精彩活动结束 spl--%>

<%-------------------动态查询热租车型城市列表参数----------------------%>
<script type="text/javascript">


   function sel(node){
       var id=$(node).attr('id');
        //$("#myTabContent").hide();
        $.get("${pageContext.request.contextPath}/CarServlet",{"method":"mainOfHot","id":id},function (data) {
            //alert(data);
            var content = "";
            //alert(data[0].header);
            $(data).each(function (index,item) {
                //alert(index);

             /*   content += "<div class=\"triangle-topleft\"></div>\n" +
                                  "<b class=\"seleti\">"+this.header+"</b>\n" +
                                  "<b class=\"sexianjia\">￥"+this.netPrice+"</b>\n" +
                                  "<img src="+this.image+">";*/

             if(index == 0){
                 content = " <div class=\"seleti\">"+item.header+"</div><br/><div class=\"sexianjia\">￥"+item.netPrice+"</div>\n" +
                            "<img src="+item.image+">";
                 $('.selesh1').html(content);
             }else if(index == 1){
                 content = " <div class=\"seleti\">"+item.header+"</div><br/><div class=\"sexianjia\">￥"+item.netPrice+"</div>\n" +
                     "<img src="+item.image+">";
                 $('.selesh2').html(content);
             }else if(index == 2){
                 content = " <div class=\"seleti\">"+item.header+"</div><br/><div class=\"sexianjia\">￥"+item.netPrice+"</div>\n" +
                     "<img src="+item.image+">";
                 $('.selesh3').html(content);
             }else {
                 content = " <div class=\"seleti\">"+item.header+"</div><br/><div class=\"sexianjia\">￥"+item.netPrice+"</div>\n" +
                     "<img src="+item.image+">";
                 $('.selesh4').html(content);
             }

            })

            //$('#hot').html(content);


        },"json");
    }
    $(".selesh1").click(function () {
        location.href="${pageContext.request.contextPath}/renting-car.jsp";
    })

</script>


</body>
<%@include file="/publicbot.jsp" %>
</html>
