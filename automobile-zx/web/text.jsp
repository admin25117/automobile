<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/24
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="/jquery-2.1.4/jquery.js"></script>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>

    <title>Title</title>
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            </div>
            <div class="modal-body">按下 ESC 按钮退出。</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<script>
    $(function() {
        $('#myModal').modal({
            keyboard: true
        })
    });
</script>


<h2>创建模态框（Modal）</h2>
<!-- 按钮触发模态框 -->
<div class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">开始演示模态框</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel1">模态框（Modal）标题</h4>
            </div>
            <div class="modal-body">在这里添加一些文本</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


</body>
</html>
