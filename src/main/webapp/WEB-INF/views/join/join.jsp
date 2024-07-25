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
	if(userId == null || userId == ''){
		alert("아이디를 입력하세요");
	}else{
		$.ajax({		
			url: '/ajax/idDupCheck',
			method: 'GET',
			data: {
				'userId' : userId
			},		
			success: function(data) {
				alert(data);
				$("#idDupCheck").val("Y");
				$("#idChecked").html('<b style="color:green;">☑</b>');
			},
			error: function(xhr, status, error) {
			    console.error("Error: " + error);
			}
		});
	}
}

function pwCheck(){
	var passwordCheck = $("#passwordCheck").val();
	var password = $("#password").val();
	if(password != passwordCheck){
		$("#pwCheck").html('<b style="color:red;">X</b>');
	}else{
		$("#pwCheck").html('<b style="color:green;">☑</b>');
	}
}

function join(){
	if($("#idDupCheck").val() == 'N'){
		alert("아이디 중복확인이 필요합니다.");
	}else{
		$("#joinForm").submit();
	}
}

</script>
<body>
<%@ include file="/WEB-INF/views/decoration/topMenu.jsp" %>
<form id="joinForm" action="joinConfirm">
<input type="text" id="idDupCheck" name="idDupCheck" value="N">
<input type="text" id="idDupChk" name="idDupChk" value="">
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
				<b id="idCheck"></b>
				<a onclick="idDupCheck()">id 중복확인<b id="idChecked"></b></a>
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
				<input type="text" id="passwordCheck" name="passwordCheck" placeholder="passwordCheck" oninput="pwCheck()">
				<b id="pwCheck"></b>
			</li>
		</ul>
		<ul>
			<li>
				<label for="email">이메일</label>
				<input type="text" id="email" name="email" placeholder="email">
			</li>
		</ul>
	</div>
	<a onclick="join()">가입</a>
</div>
</form>
</body>
</html>