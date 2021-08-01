$(document).ready(function(){
	$('#login-btn').on('click', function(){
		var id = $('#id').val();
		var pw = $('#pw').val();

		$.ajax({
			url:'./whenUserLogin',
			type:'post',
			data: {
				id:id,
				pw:pw
			},
			success:function(user) {
				if(user != '') {
					alert(user.id+'님 반갑습니다 ~ ^^');
					location.replace('./');
				}else {
					alert('없는 아이디입니다. 아이디를 다시 확인해주세욤')
				}
			},
			error:function(err) {
			
			}
		})

	})

	

})