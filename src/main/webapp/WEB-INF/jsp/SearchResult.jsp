<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <link href="/css/styles.css" type="text/css"/>
    <title>搜索结果</title>
    <style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
</head>
<body>


<div align="middle">
<h1>金融期货搜索</h1>
<form:form commandName="searchResult" action="search" method="post">
    <form:input path="queryString" />
    <input type="submit"  value="搜索"/>
</form:form>
</div>

<div id="global" >
    <h4>搜索结果</h4>
    <br/>
    <br/>
    <br/>
    <c:forEach items="${searchResults}" var="searchResult">
        <tr>
            <td>${searchResult.id}</td>
            <br/>
            <td>score: ${searchResult.score}</td>
            <br/>
            <td><a href="${searchResult.url}">${searchResult.title}</a></td>
            <br/>
            <td>${searchResult.abstractContent}</td>
            <br/>
            <td>${searchResult.date}</td>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
        </tr>
    </c:forEach>

</div>
</body>
</html>
