<%--
  User: Young
  Date: 2018/4/24
  Time: 16:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>支付界面</title>
</head>
<body>
<div style="text-align: center" class="showDiv"><img src="${ercodeUrl}"><img src="${pageContext.request.contextPath}/images/saomao.jpg" width="261px" height="220px" id="imgSHOW"></div>
<h1 class="hidecode" style="display: none;color: #d58512;text-align: center">支付成功!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-mao" id="spanmao">5</span>秒跳转页面.....</h1>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
         var test1=document.getElementById("imgSHOW");
        test1=setInterval(function(){setInter1()},3000);
        function setInter1() {
            var $id=${requestScope.id};
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/PaysaomaServlet",
                dataType: "JSON",
                data:"id="+$id,
                success: function (data){
                    if (data.status=="1"){
                        clearInterval(test1);
                        $(".showDiv").hide();
                        $(".hidecode").show();
                        var test2=document.getElementById("spanmao");
                        test2=setInterval(function(){setInter2()},1000);
                    }
                },
                error:function () {
                    alert("获取失败,请重试!");
                }
            })
        }

        var count=5;
        function setInter2() {
            count--;
            $("#spanmao").text(count);
            if (count<1){
                location.href="${pageContext.request.contextPath}/personServlet";
            }
        }
    })
</script>
</html>
