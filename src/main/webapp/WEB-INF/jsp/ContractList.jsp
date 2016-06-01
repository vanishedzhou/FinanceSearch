<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Contract List</title>
<style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>

<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
    $(function(){
<!--        $("body").append("<div id='main_bg'>"); -->
        $("body").attr(background="main_bg"));
        $("#main_bg").append("<img src='pic/mySunshineAndSunflower.jpg' id='bigpic' />");
        cover();
        $(window).resize(function(){//浏览器窗口变化
            cover();
        });
    });
    function cover(){
        var win_width=$(window).width();
        var win_height=$(window).height();
        $("#bigpic").attr({width:win_width,height:win_height});
    }
</script>
</head>
<body >

<div id="global">
<h1>Contract</h1>
<table>
<tr>
    <td><textarea rows="18" cols="60" readonly style="background:pink">${contract.content}</textarea></td>
</tr>
<tr>
    <td><a href="contract_edit/${contract.id}">Edit</a></td>
</tr>
</table>
</div>
</body>
</html>
