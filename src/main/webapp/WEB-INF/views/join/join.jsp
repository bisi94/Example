<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<style>
	#container {
		align-self: center;
		width: 60%;
		border: solid 1px red;
	}	
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
$(document).ready(function() {
	
});

function idDupCheck(){
	
	var userId = $("#userId").val();	
	
	$.ajax({		
		url: '/ajax/idDupCheck',
		method: 'GET',
// 		dataType: 'json',
		data: {
			'userId' : userId
		},		
		success: function(data) {
			alert(data);
// 		    $("#result").html(response);
		},
		error: function(xhr, status, error) {
		    console.error("Error: " + error);
		}
	});
}

</script>
<body>
<%@ include file="/WEB-INF/views/decoration/topMenu.jsp" %>
<form action="joinConfirm">
<div id="container">
	<div id="login">
		<ul>
			<li>
				<label for="userName">이름</label>
				<input type="text" id="userName" name="userName" placeholder="이름 ">
			</li>
		</ul>
		<ul>
			<li>
				<label for="userId">아이디</label>
				<input type="text" id="userId" name="userId" placeholder="ID" value="">
				<a onclick="idDupCheck()">id 중복확인</a>
			</li>
		</ul>
		<ul>
			<li>
				<label for="password">비밀번호</label>
				<input type="text" id="password" name="password" placeholder="password">
			</li>
		</ul>
		<ul>
			<li>
				<label for="passwordCheck">비밀번호확인</label>
				<input type="text" id="passwordCheck" name="passwordCheck" placeholder="passwordCheck">
			</li>
		</ul>
		<ul>
			<li>
				<label for="eMail">이메일</label>
				<input type="text" id="eMail" name="eMail" placeholder="eMail">
			</li>
		</ul>
	</div>
	<button type="submit">가입</button>
</div>
</form>
</body>
</html>