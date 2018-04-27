<%--
  Created by IntelliJ IDEA.
  User: win7
  Date: 2018/4/8
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<%--<script type="text/javascript" src="jquery-2.1.4/jquery.js"></script>
<link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
--%>
<style>

    li {
        list-style: none;
    }

    .itrow{
        font-size: 16px;
    }
    .rownewon{
        color: #93939e;
        font-size: 16px;
    }
    .itrow ul{
        padding-left: -13%;
    }
    .itrow li {
        color:#93939e;
        line-height: 30px;
        font-size: 8px;

    }

.footList{
    color:#93939e;
}
    .footList ul{
        padding-left: 0px;
    }
    .footList  {
        line-height: 24px;
        font-size: 16px;

    }
    .footList div {
        height: 245px;
        text-align: center;
    }

    .liti {
        font-size: 24px;
padding-top:30px;
        padding-bottom: 10px;
        color: #333;
    }

    .citymy {

        width: 100%;
        height: auto;
        background: black;
        padding: 0;

    }

    .cityti {
        font-size: 22px;

        height: 30px;

        margin-top: 16px;
        padding-bottom: 10px;
        text-align: center;
    }

    .down div {
        padding: 0;
    }

    .down p {
        cursor: pointer;
    }

    .rownewon div {
        height: auto;
    }

    .hhr {
        margin-top: 120px;
    }

    .moreWeb {
        padding: 0;
        margin-top: 20px;
    }

    .aboutUs {
        margin-top: 20px;
    }

    .english {
        color: white;
        cursor: pointer;
        padding-left: 2px;
    }

    .english:hover {
        background: green;
    }

    .email {
        margin-top: 20px;

        font-size: 9px;
        padding: 0;
    }

    .emailweb1 {
        color: #eab519;
        cursor: pointer;

    }

    .kexin {
        padding-top: 10px;
        padding-bottom: 100px;
        padding-left: 0px;
    }
    .footpi{
        text-align: center;
        padding-top:4%;
        color:black;
        font-weight: 100;
        font-size:20px;
        font-family:微软雅黑;

    }
</style>
<script>
    $(document).ready(function () {
        $(".liti").nextAll().hover(function () {
            $(this).css({"color": "#eab519", "cursor": "pointer"});
        }, function () {
            $(this).css("color", "#93939e");
        });

    })
    
</script>





<div class="container"><div class="row itrow">
    <div class="col-sm-6 col-md-3 col-xs-6 footpi"><span class="glyphicon glyphicon-search" aria-hidden="true" style="margin-bottom:15px;color:#eab519;font-size:40px;width:100%;height:50px;"></span>100+车型</div>
    <div class="col-sm-6 col-md-3 col-xs-6 footpi"><span class="glyphicon glyphicon-home" aria-hidden="true" style="margin-bottom:15px;color:#eab519;font-size:40px;width:100%;height:50px;"></span>1000+网点</div>
    <div class="col-sm-6 col-md-3 col-xs-6 footpi"><span class="glyphicon glyphicon-ok-circle" aria-hidden="true" style="margin-bottom:15px;color:#eab519;font-size:40px;width:100%;height:50px;"></span>100%车险</div>
    <div class="col-sm-6 col-md-3 col-xs-6 footpi"><span class="glyphicon glyphicon-road" aria-hidden="true" style="margin-bottom:15px;color:#eab519;font-size:40px;width:100%;height:50px;"></span>无限里程</div>

</div></div>

<hr/>
<div class="container">
    <div class="row footList">

        <div class="col-xs-6 col-sm-6 col-md-3">

            <ul>


                <li class="liti">租车预订说明</li>
                <li>服务时间</li>
                <li>待租车况</li>
                <li>服务预订</li>
                <li>短租产品</li>
                <li>租车资格</li>
                <li>取还车说明</li>
            </ul>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3">
            <ul>


                <li class="liti">会员管理</li>
                <li>会员章程</li>
                <li>会员细则</li>
                <li>定级积分</li>
            </ul>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3">


            <ul>

                <li class="liti">紧急事务处理</li>
                <li>保险责任</li>
                <li>理赔说明</li>
                <li>事故处理</li>
                <li>救援及备用车</li>

            </ul>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3">
            <ul>
                <li class="liti">帮助中心</li>
                <li>常见问题</li>
                <li>新手上路</li>
                <li>服务规则</li>
            </ul>

        </div>
    </div>
</div>

<div class="citymy">
    <div class="container">
        <div class="row rownewon">

            <div class="col-lg-12 cityti">
                城市快捷入口
            </div>


            <ul id="myTab" class="nav nav-tabs">
                <li class="active"><a href="#home" data-toggle="tab">
                    热门</a>
                </li>

                <li class="dropdown">
                    <a href="#" id="myTabDrop1" class="dropdown-toggle"
                       data-toggle="dropdown">城市首字母 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu drop" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#a" tabindex="-1" data-toggle="tab">
                            A</a>
                        </li>
                        <li><a href="#b" tabindex="-1" data-toggle="tab">
                            B</a>
                        </li>
                        <li><a href="#c" tabindex="-1" data-toggle="tab">
                            C</a>
                        </li>
                        <li><a href="#d" tabindex="-1" data-toggle="tab">
                            D</a>
                        </li>
                        <li><a href="#e" tabindex="-1" data-toggle="tab">
                            E</a>
                        <li><a href="#f" tabindex="-1" data-toggle="tab">
                            F</a>
                        </li>
                        <li><a href="#g" tabindex="-1" data-toggle="tab">
                            G</a>
                        </li>
                        <li><a href="#h" tabindex="-1" data-toggle="tab">
                            H</a>
                        </li>
                        <li><a href="#i" tabindex="-1" data-toggle="tab">
                            I</a>
                        </li>
                        <li><a href="#j" tabindex="-1" data-toggle="tab">
                            J</a>
                        </li>
                        <li><a href="#k" tabindex="-1" data-toggle="tab">
                            K</a>
                        </li>
                        <li><a href="#l" tabindex="-1" data-toggle="tab">
                            L</a>
                        </li>
                        <li><a href="#m" tabindex="-1" data-toggle="tab">
                            M</a>
                        </li>
                        <li><a href="#n" tabindex="-1" data-toggle="tab">
                            N</a>
                        </li>
                        <li><a href="#o" tabindex="-1" data-toggle="tab">
                            O</a>
                        </li>
                        <li><a href="#p" tabindex="-1" data-toggle="tab">
                            P</a>
                        </li>
                        <li><a href="#q" tabindex="-1" data-toggle="tab">
                            Q</a>
                        </li>
                        <li><a href="#r" tabindex="-1" data-toggle="tab">
                            R</a>
                        </li>
                        <li><a href="#s" tabindex="-1" data-toggle="tab">
                            S</a>
                        </li>
                        <li><a href="#t" tabindex="-1" data-toggle="tab">
                            T</a>
                        </li>
                        <li><a href="#u" tabindex="-1" data-toggle="tab">
                            U</a>
                        </li>
                        <li><a href="#v" tabindex="-1" data-toggle="tab">
                            V</a>
                        </li>
                        <li><a href="#w" tabindex="-1" data-toggle="tab">
                            W</a>
                        </li>
                        <li><a href="#x" tabindex="-1" data-toggle="tab">
                            X</a>
                        </li>
                        <li><a href="#y" tabindex="-1" data-toggle="tab">
                            Y</a>
                        </li>
                        <li><a href="#z" tabindex="-1" data-toggle="tab">
                            Z</a>
                        </li>


                    </ul>
                </li>
            </ul>
            <div id="myTabContent down" class="tab-content">
                <div class="tab-pane fade in" id="home">
                    <p>北京租车 上海租车 广州租车 深圳租车 成都租车 武汉租车 西安租车 杭州租车 长沙租车 昆明租车 重庆租车 南京租车 沈阳租车 青岛租车 三亚租车 东莞租车 厦门租车 大连租车 天津租车
                        郑州租车 济南租车 贵阳租车 西宁租车 哈尔滨租车</div>

                <div class="tab-pane fade" id="a">
                    <p>鞍山租车 安顺租车 安康租车 安庆租车 阿尔山租车</p>
                </div>
                <div class="tab-pane fade" id="b">
                    <p>北京租车 北海租车 包头租车 宝鸡租车 本溪租车 保定租车 滨海租车 白城租车 蚌埠租车</p>
                </div>
                <div class="tab-pane fade" id="c">
                    <p>
                        成都租车 长沙租车 重庆租车 长春租车 常州租车 郴州租车 承德租车 长白山租车 长治租车 昌吉租车 常德租车 沧州租车 赤峰租车 苍南租车 池州租车 潮州租车</p>
                </div>
                <div class="tab-pane fade" id="d">
                    <p>大连租车 东莞租车 都江堰租车 大理租车 德州租车 丹东租车 都匀租车 大庆租车 多伦租车 东港租车 敦煌租车 大同租车 当涂租车 邓州租车 德阳租车 大足租车 敦化租车</p>
                </div>
                <div class="tab-pane fade" id="e">
                    <p>鄂尔多斯租车 恩施租车</p>
                </div>
                <div class="tab-pane fade" id="f">
                    <p>佛山租车 抚顺租车 福州租车 富阳租车 阜阳租车 福清租车 涪陵租车</p>
                </div>
                <div class="tab-pane fade" id="g">
                    <p>广州租车 桂林租车 贵阳租车 赣州租车</p>
                </div>
                <div class="tab-pane fade" id="h">
                    <p>杭州租车 哈尔滨租车 海口租车 合肥租车 呼和浩特租车 惠州租车 河源租车 海宁租车 葫芦岛租车 淮安租车 衡阳租车 怀化租车 呼伦贝尔租车 衡水租车 含山租车 淮南租车 黄山租车 和林格尔租车
                        黄石租车 汉中租车 邯郸租车 侯马租车 湖州租车 河津租车</p>
                </div>
                <div class="tab-pane fade" id="i">
                    <p></p>
                </div>
                <div class="tab-pane fade" id="j">
                    <p>嘉兴租车 济南租车 晋江租车 锦州租车 荆门租车 佳木斯租车 九江租车 嘉峪关租车 江门租车 晋中租车 建水租车 吉林租车 揭阳租车 吉安租车 荆州租车 九寨沟租车 监利租车 江阴租车</p>
                </div>
                <div class="tab-pane fade" id="k">
                    <p>昆明租车 昆山租车 库尔勒租车 凯里租车 开封租车</p>
                </div>
                <div class="tab-pane fade" id="l">
                    <p>廊坊安次租车 兰州租车 洛阳租车 丽江租车 辽阳租车 凌海租车 柳州租车 浏阳租车 乐山租车 龙海租车 聊城租车 漯河租车 泸州租车 拉萨租车 六安租车 临沂租车 吕梁租车 临汾租车 龙岩租车
                        澧县租车 临安租车 连云港租车</p>
                </div>
                <div class="tab-pane fade" id="m">
                    <p>绵阳租车 马鞍山租车 满洲里租车 牡丹江租车 梅州租车 茂名租车 芒市租车 眉山租车</p>
                </div>
                <div class="tab-pane fade" id="n">
                    <p>南京租车 南昌租车 南宁租车 南通租车 宁波租车 南充租车 南阳租车</p>
                </div>
                <div class="tab-pane fade" id="o">
                    <p></p>
                </div>
                <div class="tab-pane fade" id="p">
                    <p>盘锦租车 平凉租车 莆田租车 普宁租车</p>
                </div>
                <div class="tab-pane fade" id="q">
                    <p>青岛租车 泉州租车 潜江租车 泉港租车 秦皇岛租车 衢州租车 齐齐哈尔租车 曲阜租车 千岛湖租车 蕲春租车 清远租车 曲靖租车</p>
                </div>
                <div class="tab-pane fade" id="r">
                    <p>荣成租车 日照租车 瑞丽租车</p>
                </div>
                <div class="tab-pane fade" id="s">
                    <p>上海租车 深圳租车 沈阳租车 三亚租车 石家庄租车 苏州租车 韶关租车 汕头租车 商丘租车 汕尾租车 宿州租车 宿迁租车 邵阳租车 上蔡租车 松原租车 睢宁租车 朔州租车 绍兴租车 石嘴山租车
                        三门峡租车 上饶租车 随州租车</p>
                </div>
                <div class="tab-pane fade" id="t">
                    <p>
                        太原租车 唐山租车 天津租车 台州租车 太仓租车 通辽租车 腾冲租车 泰安租车 铜陵租车 铜仁租车 太谷租车 泰州租车 天水租车</p>
                </div>
                <div class="tab-pane fade" id="u">
                    <p></p>
                </div>
                <div class="tab-pane fade" id="v">
                    <p></p>
                </div>
                <div class="tab-pane fade" id="w">
                    <p>
                        武汉租车 温州租车 乌鲁木齐租车 无锡租车 芜湖租车 潍坊租车 威海租车 武夷山租车 乌兰浩特租车 乌海租车 乌兰察布租车 婺源租车 万宁租车</p>
                </div>
                <div class="tab-pane fade" id="x">
                    <p>厦门租车 西安租车 湘潭租车 西宁租车 徐州租车 西双版纳租车 仙桃租车 宣城租车 西昌租车 西峡租车 忻州租车 信阳租车 咸宁租车 许昌租车 徐闻租车 新密租车 新余租车 邢台租车 襄阳租车
                        咸阳租车 锡林浩特租车</p>
                </div>
                <div class="tab-pane fade" id="y">
                    <p>扬州租车 烟台租车 银川租车 义乌租车 伊春租车 营口租车 运城租车 永嘉租车 永川租车 牙克石租车 乐清租车 盐城租车 宜宾租车 岳阳租车 宜昌租车 于都租车 阳江租车 宜兴租车 延安租车
                        榆林租车 伊犁租车 延吉租车 益阳租车 玉林租车</p>
                </div>
                <div class="tab-pane fade" id="z">
                    <p>郑州租车 中山租车 珠海租车 株洲租车 漳州租车 肇庆租车 镇江租车 扎兰屯租车 遵义租车 张家界租车 自贡租车 周口租车 中卫租车 张家口租车 漳浦租车 诸暨租车 驻马店租车 枣庄租车
                        景德镇租车 淄博租车 张掖租车 钟祥租车</p>
                </div>


            </div>
            <script>
                $(function () {
                    $('#myTab li:eq(0) a').tab('show');
                });
            </script>


            <div class="hhr" style="BORDER-TOP: #93939e 1px dashed; OVERFLOW: hidden; HEIGHT: 1px"></div>

            <div class="col-lg-1  moreWeb">友情链接:</div>
            <div class="col-lg-11 moreWeb">神州买买车 神州闪贷 北京旅游网 旅游指南 北青网 欣欣旅游商城 免费午餐网 中国街景地图 劲旅网 凤凰古城 二手车交易 旅评网 拉拉勾旅游网 凯撒旅游网
                同程网 新浪旅游 游凤凰网 国旅在线 穷游出境游 首都航空
            </div>
            <div class="hhr" style="BORDER-TOP: #93939e 1px dashed; OVERFLOW: hidden; HEIGHT: 1px"></div>

            <div class="col-lg-11 aboutUs">关于我们 投资者关系 新闻中心 加盟合作 隐私保护 网站导航 联系我们 招贤纳士</div>
            <div class="col-lg-1 aboutUs">
                <div  class="label-warning english" onclick=window.location="/english.jsp">English></div>
            </div>

            <div class="hhr " style="BORDER-TOP: #93939e 1px solid; OVERFLOW: hidden; HEIGHT: 1px"></div>

            <div class="col-lg-12 email">Copyright©2008-2018 www.zuche.com All Rights Reserved.　北京神州汽车租赁有限公司
                京ICP备10005002号 京公网安备号 11010502026705&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果您对一嗨租车网站有任何意见，欢迎发送邮件到&nbsp;&nbsp;&nbsp;<b
                        class="emailweb1">web@zuche.com</b></div>
            <div class="col-lg-12 kexin"><img src="/img/kx1.png" alt="">&nbsp;<img src="/img/kx2.png" alt=""></div>

        </div>


    </div>
</div>

