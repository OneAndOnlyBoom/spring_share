<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<html>
<head>
	<title>로그인창</title>
	
	<link rel="stylesheet" href="./resources/css/common.css">
	
	<script src="https://kit.fontawesome.com/7047342423.js" 
	crossorigin="anonymous"></script>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
	crossorigin="anonymous"></script>
	
</head>
<body>
 
	<div class="cm-center-body">
		<img class="logo" src="./resources/image/logo.png" />
		<input id="id" class="cm-inp" placeholder="아이디"/> 
		<input id="pw" type=password class="cm-inp" placeholder="비밀번호"/>
		
	
		
		<div id="login-btn" class="cm-long-btn">
			로그인하기
		</div>
		
	</div>
	
	
 
</body>

<script type="text/javascript" src="./resources/js/login.js"></script>

</html>
