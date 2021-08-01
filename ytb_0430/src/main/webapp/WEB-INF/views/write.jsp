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
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
	crossorigin="anonymous"></script>
	
</head>
<body>
 
	<div class="cm-center-body">
		<img class="logo" src="./resources/image/logo.png" />
		
		<input id="inp-file" type="file"/>
		
		<input id="title" class="cm-inp" placeholder="글 제목"/> 
		
		<textarea id="content" placeholder="글 내용" class="cm-textarea"></textarea>
	
		
		<div id="login-btn" class="cm-long-btn">
		글쓰기
		</div>
		
	</div>
	
	
 
</body>



<script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-app.js"></script>
<script src=" https://www.gstatic.com/firebasejs/8.5.0/firebase-storage.js"></script>


<script type="text/javascript" src="./resources/js/config.js"></script>
<script type="text/javascript" src="./resources/js/write.js"></script>

</html>
