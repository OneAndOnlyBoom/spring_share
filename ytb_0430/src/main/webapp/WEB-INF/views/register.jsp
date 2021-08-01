<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<html>
<head>
	<title>회원가입창</title>
	
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
		<input id="pw1" type=password class="cm-inp" placeholder="비밀번호 확인"/>
		<input id="nickname" class="cm-inp" placeholder="닉네임"/>
		<input id="address" class="cm-inp" placeholder="주소"/>
		<input id="intro" class="cm-inp" placeholder="자기소개"/>
		
		<div style="margin-top:20px;">
			<input id="gender-m" type="radio" value="m" name="gender"/>
			<label for="gender-m">남자</label>
			
			<input id="gender-w" type="radio" value="w" name="gender" style="margin-left:30px;"/>
			<label for="gender-w">여자</label>
		</div>
		
		<div id="add-btn" class="cm-long-btn">
			회원가입하기
		</div>
		
	</div>
	
	
 
</body>

<script type="text/javascript" src="./resources/js/register.js"></script>

</html>
