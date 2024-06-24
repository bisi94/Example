<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
	    // 여기에 실행하고자 하는 코드를 작성합니다.
	    
	    var userName = ${getUserdata.userName}
	    
	    console.log(userName);
	    
	    
	    console.log("for git check");
	    // 예시: 버튼 클릭 이벤트 핸들러 등록
	});
</script>
<body>
	<h2>result page</h2>
	<div>${getUserdata.userName}</div>
	<div>${getUserdata.userCode}</div>
	
</body>
</html>