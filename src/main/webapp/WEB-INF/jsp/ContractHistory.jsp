<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Contract List</title>
<style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
</head>
<body>

<div id="global">
<h1>Contract</h1>
<a href="<c:url value="/contract_insert"/>">insert contract</a>
<table>
<tr>
    <th>id</th>
    <th>content</th>
    <th>updated_at</th>
    <th>updated_by</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${contractHistory}" var="contract">
    <tr>
        <td>${contract.id}</td>
        <td>${contract.content}</td>
        <td>${contract.updatedAt}</td>
        <td>${contract.updatedBy}</td>
        <td><a href="contract_edit/${contract.id}">Edit</a></td>
        <td><a href="contract_delete/${contract.id}">Delete</a></td>
    </tr>
</c:forEach>
</table>
</div>
</body>
</html>
