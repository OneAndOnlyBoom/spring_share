<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<div class="cm-left-body">
	<div class="user-info">
	
		<c:if test="${not empty loginUser}">
			<span class="txt1">${loginUser.id}</span>
			<span class="txt2">${loginUser.nickname}</span>
			<span class="txt2">${loginUser.intro} </span>
			
			
			<div class="btn-group-div" style="margin-top:10px;">
				<span id="go-logout-btn" class="txt-btn">로그아웃</span>
			</div>
		</c:if>
			
		<c:if test="${empty loginUser}">
			<div class="btn-group-div">
				<span id="go-login-btn" class="txt-btn">로그인</span>
				<span style="margin:0 10px;">ㅣ</span>
				<span id="go-register-btn" class="txt-btn">회원가입</span>
			</div>
		</c:if>
	</div>
		


	
	
	
	
	<div class="nav-menu-container">
		<div class="nav-menu <c:if test="${menu eq 'home'}">active</c:if>" data-page="home">
			<span class="cm-icon">
				<i class="fas fa-user-friends"></i>
			</span>
			<span>회원리스트</span>
		</div>
		
		<div class="nav-menu <c:if test="${menu eq 'product'}">active</c:if>" data-page="product">
			<span class="cm-icon">
				<i class="fas fa-list"></i>
			</span>
			<span>상품리스트</span>
		</div>
		
		<div class="nav-menu <c:if test="${menu eq 'location'}">active</c:if>" data-page="location">
			<span class="cm-icon">
				<i class="fas fa-truck"></i>
			</span>
			<span>배송지역</span>
		</div>
		
		<div class="nav-menu <c:if test="${menu eq 'cs'}">active</c:if>" data-page="cs">
			<span class="cm-icon">
				<i class="fas fa-phone-alt"></i>
			</span>
			<span>고객센터</span>
		</div>
		
	</div>
	
</div>



<script src="./resources/js/left-menu.js">

</script>