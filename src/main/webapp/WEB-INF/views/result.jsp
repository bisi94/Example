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
	    // ���⿡ �����ϰ��� �ϴ� �ڵ带 �ۼ��մϴ�.
	    
	    var userName = ${getUserdata.userName}
	    
	    console.log(userName);
	    
	    
	    console.log("for git check");
	    // ����: ��ư Ŭ�� �̺�Ʈ �ڵ鷯 ���
	});
</script>
<body>
	<h2>result page</h2>
	<div>${getUserdata.userName}</div>
	<div>${getUserdata.userCode}</div>
	
</body>
</html>