$(document).ready(function(){
	
	$('#add-btn').on('click', function(){
		var id = $('#id').val();
		var pw = $('#pw').val();
		var pw1 = $('#pw1').val();
		var nickname = $('#nickname').val();
		var intro = $('#intro').val();
		var address = $('#address').val();
		var gender = $("input[name='gender']:checked").val();
		
		if(id.length> 0 && pw.length> 0 && pw==pw1) {
			$.ajax({
			url:'./addUser',
			type:'get',
			data:{
				id:id,
				pw:pw,
				pw1:pw1,
				nn:nickname,
				it:intro,
				gd:gender,
				addr:address
			},
			success:function(res){
				if(res=='ok'){
					alert('회원가입에 성공하셨습니다 ^^');
					location.replace('./');
				}else if(res=='dup') {
					alert('이미 있는 아이디입니다.');
				}
			},
			error:function(err){
				
			}
		});
		}else {
			alert('잘못된정보입니다.');
		}
	
		
		
		
		
	})
	
	
})