$(document).ready(function(){
	$('.nav-menu').on('click',function(){
		
		var page = $(this).data('page');

		if(page=="home") {
			location.href="./";
		}
		
		else if(page=="product") {
			location.href="./product";
		}
		
		else if(page=="location") {
			location.href="./location";
		}
		
		else {
			location.href="./cs";
		}
	
		
		
		
	})
	
	
	
	$('#go-register-btn').on('click',function(){
		location.href='./register';
	})

	$('#go-login-btn').on('click',function(){
		location.href='./login';
	})

	$('#go-logout-btn').on('click',function(){
		var con = confirm('정말 로그아웃 하시겠습니까?');

		if(con) {
			$.ajax({
				url:'./logout',
				type:'post',
				data: {

				},
				success:function(res) {
					if(res=='ok') {
						location.replace('./');
					}
				},
				error:function(err) {

				}
			})
		}
	})
	
})