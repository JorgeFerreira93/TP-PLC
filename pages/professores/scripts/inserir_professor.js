$(function(){

	$("#lista_cursos").load("scripts/listar_cursos.php");
	$("#lista_habilitacoes").load("scripts/listar_habilitacoes.php");
	
	var nProfs = 1;
	
	$("#add").click(function(){
		
        var novoProfessor = document.createElement('div');
           
        novoProfessor.setAttribute("id",'a' + nAlunos);


        novoProfessor.appendChild(document.createElement("hr"));
		
		var divNome = document.createElement('div');
		
		divNome.setAttribute("class", "form-group");
		
		var labelNome = document.createElement('label');
		$(labelNome).append("Nome");
		var inputNome = document.createElement('input');
		
		inputNome.setAttribute("class", "form-control");
		inputNome.setAttribute("name", "nome[" + nAlunos + "]");
		
		divNome.appendChild(labelNome);
		divNome.appendChild(inputNome);
		
		var divData = document.createElement('div');
		
		divData.setAttribute("class", "form-group");
		
		var labelData = document.createElement('label');
		$(labelData).append("Data Nascimento");
		var inputData = document.createElement('input');
		
		inputData.setAttribute("class", "form-control");
		inputData.setAttribute("placeholder", "yyyy-mm-dd");
		inputData.setAttribute("name", "data[" + nAlunos + "]");
		
		divData.appendChild(labelData);
		divData.appendChild(inputData);
		
		
		var divCurso = document.createElement('div');
		
		divCurso.setAttribute("class", "form-group");
		
		var labelCurso = document.createElement('label');
		$(labelCurso).append("Curso");
		
		var selectCurso = document.createElement('select');
		
		selectCurso.setAttribute("class", "form-control");
		selectCurso.setAttribute("name", "curso[" + nAlunos + "]");
		
		var options = $("#lista_cursos > option").clone();
		
		$(selectCurso).append(options);
		
		divCurso.appendChild(labelCurso);
		divCurso.appendChild(selectCurso);
		
		novoProfessor.appendChild(divNome);
		novoProfessor.appendChild(divData);
		novoProfessor.appendChild(divCurso);
       
        $(novoProfessor).appendTo("#alunos");
        nAlunos++;
	});
	
	$("#xml_form").submit(function(){
		
		$.ajax({
			url     : $(this).attr('action'),
            type    : 'POST',
            enctype: 'multipart/form-data',
            data    : new FormData($(this)[0]),
            success : function( data ) {
                         alert(data);       
                      },
        cache: false,
        contentType: false,
        processData: false
		});
		
		return false;
	});
	
	$("#norm_form").submit(function(){
		
		$.ajax({
			url     : $(this).attr('action'),
            type    : 'POST',
            enctype: 'multipart/form-data',
            data    : new FormData($(this)[0]),
            success : function( data ) {
                         alert(data);       
                      },
        cache: false,
        contentType: false,
        processData: false
		});
		
		return false;
	});
	
});