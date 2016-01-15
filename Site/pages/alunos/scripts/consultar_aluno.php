<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	
	//$qstring = "SELECT * FROM aluno";
	$qstring = "SELECT * FROM aluno WHERE aluno_id = ".$_REQUEST['id']."";
	$resultado = $dbh->query($qstring);
	$aluno = $resultado->fetch();
	
	$qstring = "SELECT instrumento_designacao FROM instrumento WHERE instrumento_id = '".$aluno['aluno_instrumento']."'";
	$instrumento = $dbh->query($qstring)->fetch();
	
	$qstring = "SELECT curso_designacao FROM curso WHERE curso_id = '".$aluno['aluno_curso']."'";
	$curso = $dbh->query($qstring)->fetch();
	
	echo "<p><b>Nome:</b> ".$aluno['aluno_nome']."</p><hr/>";
	echo "<p><b>Data de Nascimento:</b> ".$aluno['aluno_data_nasc']."</p><hr/>";
	echo "<p><b>Curso:</b> ".$curso['curso_designacao']." - ".$aluno['aluno_ano_curso']."º ano</p><hr/>";	
	echo "<p><b>Instrumento:</b> ".$instrumento['instrumento_designacao']."</p><br/>";
	
?>