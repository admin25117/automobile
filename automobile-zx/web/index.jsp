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
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/index.css">

    <%
        //request.getRequestDispatcher("/Cityservlet?method=findAll").forward(request,response);
    %>
    <%--简写--%>
    <jsp:forward page="/CityServlet?method=findAll"></jsp:forward>

    <script type="text/javascript">
        $(function(){

            $(document).ready(function(){
                $('#myCarousel').carousel({interval:5000,pause:false});//每隔5秒自动轮播
            });

            // 初始化轮播
            $(".start-slide").click(function(){
                $("#myCarousel").carousel('cycle');
            });
            // 停止轮播
            $(".pause-slide").click(function(){
                $("#myCarousel").carousel('pause');
            });
            // 循环轮播到上一个项目
            $(".prev-slide").click(function(){
                $("#myCarousel").carousel('prev');
            });
            // 循环轮播到下一个项目
            $(".next-slide").click(function(){
                $("#myCarousel").carousel('next');
            });
            // 循环轮播到某个特定的帧
            $(".slide-one").click(function(){
                $("#myCarousel").carousel(0);
            });
            $(".slide-two").click(function(){
                $("#myCarousel").carousel(1);
            });
            $(".slide-three").click(function(){
                $("#myCarousel").carousel(2);
            });
        });


            $(function () {
                $(".shouye").attr("class","active");

            })


    </script>
</head>
<body>

<%--轮播开始--%>

<div id="myCarousel" class="carousel slide lunbo">
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
            <img src="/images/shouye1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="/images/shouye2.JPG" alt="Second slide">
        </div>
        <div class="item">
            <img src="/images/shouye3.jpg" alt="Third slide">
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
    <div class="row">
        <div class="hot-left col-lg-5 col-md-12">left</div>
        <div class="hot-right col-lg-7 col-md-12">
            <ul id="myTab" class="nav nav-tabs">
                <li class="active">
                    <a href="#bj" data-toggle="tab">
                        北京
                    </a>
                </li>
                <li><a href="#sh" data-toggle="tab">上海</a></li>
                <li><a href="#gz" data-toggle="tab">广州</a></li>
                <li><a href="#sz" data-toggle="tab">深圳</a></li>
                <li><a href="#cq" data-toggle="tab">重庆</a></li>
                <li><a href="#sy" data-toggle="tab">三亚</a></li>
                <li><a href="#hk" data-toggle="tab">海口</a></li>
                <li><a href="....." data-toggle="tab">更多</a></li>
            </ul>
            <div class="clear"></div>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="bj">
                    <div class="hot-middle col-md-6 col-sm-6">
                        <div class="up col-lg-12">up北京</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                    <div class="hot-right col-md-6 col-sm-6">
                        <div class="up col-lg-12">up</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                </div>
                <div class="tab-pane fade" id="sh">
                    <div class="hot-middle col-md-6 col-sm-6">
                        <div class="up col-lg-12">up上海</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                    <div class="hot-right col-md-6 col-sm-6">
                        <div class="up col-lg-12">up</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                </div>
                <div class="tab-pane fade" id="gz">
                    <div class="hot-middle col-md-6 col-sm-6">
                        <div class="up col-lg-12">up广州</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                    <div class="hot-right col-md-6 col-sm-6">
                        <div class="up col-lg-12">up</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                </div>
                <div class="tab-pane fade" id="sz">
                    <div class="hot-middle col-md-6 col-sm-6">
                        <div class="up col-lg-12">up深圳</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                    <div class="hot-right col-md-6 col-sm-6">
                        <div class="up col-lg-12">up</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                </div>
                <div class="tab-pane fade" id="cq">
                    <div class="hot-middle col-md-6 col-sm-6">
                        <div class="up col-lg-12">up重庆</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                    <div class="hot-right col-md-6 col-sm-6">
                        <div class="up col-lg-12">up</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                </div>
                <div class="tab-pane fade" id="sy">
                    <div class="hot-middle col-md-6 col-sm-6">
                        <div class="up col-lg-12">up三亚</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                    <div class="hot-right col-md-6 col-sm-6">
                        <div class="up col-lg-12">up</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                </div>
                <div class="tab-pane fade" id="hk">
                    <div class="hot-middle col-md-6 col-sm-6">
                        <div class="up col-lg-12">up海口</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                    <div class="hot-right col-md-6 col-sm-6">
                        <div class="up col-lg-12">up</div>
                        <div class="down col-lg-12">down</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--热租车型结束 --%>


<div class="container">
    <%--汽车品牌--%>
    <div class="row">
        <div class="type_left col-lg-6">
            <div class="col-xs-3">1</div>
            <div class="col-xs-3">2</div>
            <div class="col-xs-3">3</div>
            <div class="col-xs-3">4</div>
        </div>
        <div class="type_right col-lg-6">
            <div class="col-xs-3">1</div>
            <div class="col-xs-3">2</div>
            <div class="col-xs-3">3</div>
            <div class="col-xs-3">4</div>
        </div>
    </div>
</div>
<%--汽车品牌--%>



<div class="container">
    <%--精彩活动 spl--%>
    <div class="row spl">
        <div class="col-lg-3 col-md-3">a</div>
        <div class="col-lg-3 col-md-3">b</div>
        <div class="col-lg-3 col-md-3">a</div>
        <div class="col-lg-3 col-md-3">b</div>
    </div>

</div>
<%--精彩活动结束 spl--%>


</body>
</html>
