<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/12
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>english</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="jquery-2.1.4/jquery.js"></script>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <style>
        .mynav {
            border-radius: 0;
            background: black;
            color: white;
            font-size: 18px;
            padding-left: 8%;
            z-index:10;
            margin-top: 70px;
        }

        .tittleen {
            float: left;
            margin-top: 1.3%;
            color: #eab519;
            font-size: 26px;

        }

        .lunboright {
            height: 300px;
            padding: 0;

        }

        .lunboleft {
            border: 1px gray solid;
            height: 300px;
            padding-top: 2%;

        }

        .myul {
            list-style: none;
            font-size: 16px;
            /*padding-left: 0px;*/
        }

        .myul b {
            font-size: 26px;
            color: #eab519;

        }

        .myul li:hover {
            color: #eab519;
        }

        .enfoot {
            background: url("/images/img/english.png");
            background-size: 100% 100%;
            height: 600px;
        }

        .enlunbo {
            height: 100%;
        }

        .lun {
            height: 100%;
        }

        .l1 {
            background: url("/images/img/banner2.jpg") no-repeat;
            background-size: auto 100%;
        }

        .l2 {
            background: url("/images/img/baner4.jpg") no-repeat;
            background-size: auto 100%;
        }

        .l3 {
            background: url("/images/img/banner2.jpg") no-repeat;
            background-size: auto 100%;
        }

        .enlun {
            padding: 0;
        }

        .last {
            height: 100px;
            text-align: center;
            width: 100%;
            font-size: 8px;
            color: #93939e;
            background: black;
            padding-top: 8px;
            margin-top: 20px;
        }

        .entel {
            height: 51px;
            padding-top: 5.3%;
        }

        .first {
            line-height: 30px;
            text-align: center;
            height: 70px;
            text-align: center;
            width: 100%;
            font-size: 20px;
            color: darkslategray;
            background: #eab519;
            padding-top: 8px;
            position:fixed;
            top:0;
            z-index:1;

        }

        .entel {
            height: 51px;
            padding-top: 5.3%;
        }

    </style>

    <script>
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
    </script>
</head>
<body>


<div class="first">
    Chaina's Leading Auto Rental Service Provider &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/main.jsp">中文></a>
</div>


<nav class="navbar navbar-inverse mynav" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <b class="tittleen">OneRent&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse" style="overflow-x:hidden;">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">AboutUs</a></li>
                <li><a href="#">Investor Relations</a></li>
                <li><a href="#">Products & Services</a></li>
                <li><a href="#">ServiceNetwork</a></li>


                <li><a href="#">Partners</a></li>
                <li><a href="#">PressRoom</a></li>
                <li>
                    <form class="navbar-form<%-- navbar-left--%> " role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-warning">Search</button>
                    </form>
                </li>
                <li>
                    <div class="entel">Telephone：400-321-321
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="container ">
    <div class="row ">
        <div class="col-md-5 lunboleft">
            <ul class="myul">
                <li><b>Head Lines</b></li>
                <li>China Auto Rental Changes English Name to CAR Inc.</li>
                <li>CTO of IBM Greater China Joins CAR Inc.</li>
                <li>Beckham and China Auto Rental Launch Partnership</li>
                <li>Hertz partners with China Auto Rental</li>
                <li>CAR received RMB 2-billion credit support from China Merchants Bank</li>
            </ul>
        </div>
        <div class="col-md-7 lunboright">

            <div id="myCarousel" class="carousel slide enlunbo">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0"
                        class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active lun l1">

                    </div>
                    <div class="item lun l2">

                    </div>
                    <div class="item lun l3">

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
                <!-- 控制按钮 -->
                <%-- <div style="text-align:center;">
                     <input type="button" class="btn start-slide" value="Start">
                     <input type="button" class="btn pause-slide" value="Pause">
                     <input type="button" class="btn prev-slide" value="Previous Slide">
                     <input type="button" class="btn next-slide" value="Next Slide">
                     <input type="button" class="btn slide-one" value="Slide 1">
                     <input type="button" class="btn slide-two" value="Slide 2">
                     <input type="button" class="btn slide-three" value="Slide 3">
                 </div>--%>
            </div>
        </div>

        <div class="row enlun">
            <div class="col-md-12 enfoot hidden-xs hidden-sm"></div>
        </div>


    </div>
</div>

<div class="last">
    Copyright©2010-2016 www.zuche.com All Right Reserved.<br/>
    Please email us at: web@zuche.com for any suggestions or inquiries about our site<br/>
    京ICP证 10005002号<br/>
</div>

</body>
</html>
