<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main page</title>
</head>
<style>
	#topMenu {
		
	}
	#topMenu #leftArea ul{
/* 		display: flex;  */
		  
	}
	#topMenu #leftArea ul li{
		display: inline; 
		  
	}
	#topMenu #leftArea ul li div{
		border: 1px solid red;
		border-radius: 10px;
	}
	
</style>
<body>
<%@ include file="/WEB-INF/views/decoration/topMenu.jsp" %>
</body>
</html>