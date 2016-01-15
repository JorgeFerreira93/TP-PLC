$(document).ready(function(){
	
	$("#exemploForm").submit(function(){
		
		//var url = "http://localhost:8080/upload";
		$.ajax({
			url: $(this).attr('action'),
			type: $(this).attr('method'),
            enctype: 'multipart/form-data',
			//data: $(this).serialize(),
			data: new FormData($(this)[0]),
			success: function(html) {
				alert(html);
			},
			cache: false,
			contentType: false,
			processData: false
		});
		
		return false;
		/*
		$.post("teste.php", {"url": "http://localhost:8080/upload", "type": 'POST'}, function(res){
			alert(res);
		});*/
	});
})