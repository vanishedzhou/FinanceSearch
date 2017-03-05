<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <link href="/css/styles.css" type="text/css"/>
    <title>搜索结果</title>
    <style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>

    <script>

        function judgeShown() {
            var queryString=document.getElementById('queryInput').value;

            if(queryString.indexOf("螺纹钢") >= 0) {
                document.getElementById('table1').style.display="inline";
            } else {
                document.getElementById('table1').style.display="none";
            }
        }

        window.onload = judgeShown;
    </script>
</head>
<body>


<div align="middle">
<h1>金融期货搜索</h1>
<form:form commandName="searchResult" action="search" method="post">
    <form:input id="queryInput" path="queryString" />
    <input type="submit"  value="搜索" />
</form:form>
</div>

<div id="global" >
    <h4>搜索结果</h4>
    <br/>
    <%--<iframe width="500" height="300" scrolling="auto">--%>
        <%--<html><head>--%>
        <%--</head><body>--%>
    <table id="table1" width="100%" border="1" bordercolor="#000000" align="center">
            <tr>
                <td colspan="7">&nbsp;&nbsp;&nbsp;&nbsp; <mark>螺纹钢</mark> 行情</td>
            </tr>
            <tr >
                <td align="right">合约名称</td>
                <td align="right">最新价</td>
                <td align="right">涨跌</td>
                <td align="right">持仓量</td>
                <td align="right">成交量</td>
                <td align="right">成交金额</td>
                <td align="right">买卖价</td>
            </tr>
            <tr>
                <td align="right" title="合约名">rb1703</td>
                <td align="right" bgcolor="#F0EFEF" title="最新价">3610</td>
                <td align="right" title="涨跌"><font color="red">47</font></td>
                <td align="right" bgcolor="#F0EFEF" title="持仓量">1770</td>
                <td align="right" title="成交量">16</td>
                <td align="right" bgcolor="#F0EFEF" title="成交金额">578960</td>
                <td align="right" title="买卖价">3551/3650</td>
            </tr>
            <tr>
                <td align="right" title="合约名">rb1704</td>
                <td align="right" bgcolor="#F0EFEF" title="最新价">3608</td>
                <td align="right" title="涨跌"><font color="red">106</font></td>
                <td align="right" bgcolor="#F0EFEF" title="持仓量">1694</td>
                <td align="right" title="成交量">34</td>
                <td align="right" bgcolor="#F0EFEF" title="成交金额">1218440</td>
                <td align="right" title="买卖价">3608/3730</td>
            </tr>
            <tr>
                <td align="right" title="合约名">rb1705</td>
                <td align="right" bgcolor="#F0EFEF" title="最新价">3537</td>
                <td align="right" title="涨跌"><font color="red">88</font></td>
                <td align="right" bgcolor="#F0EFEF" title="持仓量">2760564</td>
                <td align="right" title="成交量">1142214</td>
                <td align="right" bgcolor="#F0EFEF" title="成交金额">40042318420</td>
                <td align="right" title="买卖价">3535/3537</td>
            </tr>
            <tr>
                <td align="right" title="合约名">rb1706</td>
                <td align="right" bgcolor="#F0EFEF" title="最新价">3489</td>
                <td align="right" title="涨跌"><font color="red">55</font></td>
                <td align="right" bgcolor="#F0EFEF" title="持仓量">866</td>
                <td align="right" title="成交量">42</td>
                <td align="right" bgcolor="#F0EFEF" title="成交金额">1454460</td>
                <td align="right" title="买卖价">3325/3536</td>
            </tr>
            <tr>
                <td align="right" title="合约名">rb1707</td>
                <td align="right" bgcolor="#F0EFEF" title="最新价">3435</td>
                <td align="right" title="涨跌"><font color="red">74</font></td>
                <td align="right" bgcolor="#F0EFEF" title="持仓量">1024</td>
                <td align="right" title="成交量">60</td>
                <td align="right" bgcolor="#F0EFEF" title="成交金额">2055160</td>
                <td align="right" title="买卖价">3400/3586</td>
            </tr>
            </table>
<%--</body></html>--%>
    <%--</iframe>--%>
    <br/>
    <c:forEach items="${searchResults}" var="searchResult">
        <tr>
            <td><a href="${searchResult.url}">${searchResult.title}</a></td>
            <br/>
            <td>${searchResult.abstractContent}</td>
            <br/>
            <td>assortment: ${searchResult.assortment}&nbsp;&nbsp;&nbsp; ${searchResult.date}</td>
            <br/>
            <td>id: ${searchResult.id}</td>
            <br/>
            <td>score: ${searchResult.score}</td>
            <br/>
            <br/>
        </tr>
    </c:forEach>

</div>
</body>
<h4>实时舆情榜</h4>:
<br/>
<table align="middle">
    <tr><td>铜</td></tr>
    <tr><td>螺纹钢</td></tr>
    <tr><td>黄金</td></tr>
    <tr><td>原油</td></tr>
    <tr><td>沪深300股指</td></tr>
    <tr><td>恒生指数</td></tr>
    <tr><td>玉米</td></tr>
    <tr><td>标普500</td></tr>
</table>
</html>
