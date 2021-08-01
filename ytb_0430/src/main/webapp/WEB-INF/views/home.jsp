<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<html>
<head>
	<title>Home</title>
	
	<link rel="stylesheet" href="./resources/css/common.css">
	
	<script src="https://kit.fontawesome.com/7047342423.js" 
	crossorigin="anonymous"></script>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
	crossorigin="anonymous"></script>
	
</head>
<body>
 	<header class="header">
 		<img src="./resources/image/logo.png"/>
 		
 		<div>
 			<i class="fas fa-bell cm-bell"></i>
			<span class="header-title">지원문의</span>
 		</div>
		
 	</header>
 	
 	<main class="cm-main-body">
 		<%@ include file="./include/left-menu.jsp" %>

 		
 		<div class="cm-right-body">
			<c:forEach var="user" items="${userList}">
			
				<div class="user-card" data-user-idx="${user.user_idx}">
					<span class="t1">${user.id}</span>
		 			<span class="t2">${user.nickname}</span>
		 			<span class="t3">${user.intro}</span>
		 			<span class="t4">가입날짜 : ${user.reg_date}</span>
				</div>		
	 		</c:forEach>		
 				
 				
 		
 		</div>
 	</main>
</body>

<script type="text/javascript" src="./resources/js/detail.js"></script>
</html>
