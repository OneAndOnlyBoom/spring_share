$(document).ready(function(){
	$('.user-card').on('click', function(){
		var idx = $(this).data('user-idx');
		location.href='./detail?user_idx='+idx;
	})
})