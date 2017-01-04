<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <link href="/css/styles.css" type="text/css"/>
    <style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
    <%--<meta  charset=utf-8"/>--%>
    <style>
        mark {
            background-color:#00ff90; font-weight:bold;
        }
    </style>
    <title>金融期货搜索</title>
</head>
<body>

<h1>金融期货搜索</h1>

<form:form commandName="searchResult" action="search" method="post">
    <form:input path="queryString"/>
    <input type="submit"  value="搜索"/>
</form:form>
<%--<div class="search">--%>
    <%--<div class="s-bar">--%>
        <%--<form>--%>
            <%--<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">--%>
            <%--<input type="submit"  value="Search"/>--%>
        <%--</form>--%>
    <%--</div>--%>
    <%--<p>热门搜索: <a href="#">煤炭,</a> <a href="#"> 铜 </a></p>--%>
<%--</div>--%>
<%--<!--search end here-->--%>
<script src="/js/jquery.min.js"></script>
<script src="/js/script.js"></script>
<div style="text-align:center;clear:both">
    <p align="left"><mark>金融期货</mark>搜索是专注于搜索金融期货资讯，实时分析期货<mark>热点</mark>问题的<mark>垂直搜索</mark>引擎</p>
</div>

</body>
</html>
