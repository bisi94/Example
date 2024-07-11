<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
</head>
<style>
	#login {
		min-width: 500px;
		width: 40%;
		border: solid 1px red;
		display: flex;
        justify-content: center; /* 수평 중앙 정렬 */
        align-items: center;    /* 수직 중앙 정렬 */
	}	
	
	#container {
		width:100%;
		display: flex;
        justify-content: center; /* 수평 중앙 정렬 */
        align-items: center;    /* 수직 중앙 정렬 */
        height: 95vh;          /* 부모 요소의 높이 */
        border: 2px solid black; /* 부모 요소의 테두리 */
	}
	
	#input{
		border: 2px solid black; /* 부모 요소의 테두리 */
		width: 80%;
	}
	
	#button{
		border: 2px solid black; /* 부모 요소의 테두리 */
		width: 20%;
	}
</style>
<body>
<%@ include file="/WEB-INF/views/decoration/topMenu.jsp" %>
<form action="user" method="get">
<div id="container">
	<div id="login">
		<div id="input">
			<ul>
				<li>				
			        <label for="id">User ID : </label>
			        <input type="text" id="id" name="id">
		        </li>
		        <li>
			        <label for="id">Password : </label>
			        <input type="text" id="password" name="password">
		        </li>
			</ul>
		</div>
		<div id="button">
			<button type="submit">login</button>
		</div>
        
	</div>
</div>
<a href="/move">mmmmmmmmmmmmmmmmmmmvvvvvvvvvvvvvv</a>
</form>
</body>
</html>