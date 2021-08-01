$(document).ready(function(){
	firebase.initializeApp(firebaseConfig);
	var storage = firebase.storage();

	$('#inp-file').on('change', function(){
		var file = $(this)[0].files[0];
		var storageRef = storage.ref().child('my-file2/upload')

		storageRef.put(file).then(function(snapshot){
			alert('업로드 완료')
		})
	})
})