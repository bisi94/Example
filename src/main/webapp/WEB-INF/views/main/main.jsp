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

<%@ include file="/WEB-INF/views/decoration/topMenu.jsp" %>
<c:if test="${not empty userInfo }"><h2>${userInfo.userId }님 환영합니다.</h2></c:if>

<%@ page import="java.io.File" %>
<%
    String relativeWebPath = "/img/zzang.jpg";
    String absoluteDiskPath = application.getRealPath(relativeWebPath);
    File file = new File(absoluteDiskPath);
    if (file.exists()) {
        out.println("File exists: " + absoluteDiskPath);
    } else {
        out.println("File does not exist: " + absoluteDiskPath);
    }
%>
 <h1>이미지 출력</h1>
    <img src="<%= request.getContextPath() %>/img/zzang.jpg" alt="Image">

</body>
</html>