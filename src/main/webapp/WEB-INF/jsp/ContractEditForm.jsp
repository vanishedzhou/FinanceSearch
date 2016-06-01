<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Contract Insert Form</title>
<style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
</head>
<body bgcolor="pink">

<div id="global">
<form:form commandName="contract" action="contract_update" method="post">
    <fieldset>
        <legend>update the contract</legend>
        
        <p>
            <label for="content">content</label>
            <form:textarea rows="18" cols="60" id="content" path="content"/>
        </p>

        <p>
            <label for="updatedBy">updated_by: &nbsp;</label>
            lmy
            <form:radiobutton path="updatedBy" value="2" />
            zzy
            <form:radiobutton path="updatedBy" value="1"/>
        </p>
        
        
    </fieldset>
    <p id="buttons" align="left">
            <input id="reset" type="reset" tabindex="4">
            <input id="submit" type="submit" tabindex="5" 
                value="update contract">
    </p>
</form:form>
</div>
</body>
</html>
