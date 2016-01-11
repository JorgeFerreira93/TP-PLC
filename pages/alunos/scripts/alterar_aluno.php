<?php

	$dbh = new PDO('mysql:host=localhost;dbname=pri2015', 'root', 'root');
	
	$qstring = "SELECT curso_instrumento FROM curso WHERE curso_id=".$_REQUEST['curso'];
	$curso = $dbh->query($qstring);

	$qstring = "UPDATE aluno SET 
					aluno_id='".$_REQUEST['id']."',
					aluno_nome='".$_REQUEST['nome']."',
					aluno_data_nas='".$_REQUEST['data']."',
					aluno_instrumento='".$curso['curso_instrumento']."',
					aluno_curso='".$_REQUEST['curso']."',
					WHERE id='".$_REQUEST['oldid']."'";
					
	echo $qstring;
					
	$dbh->query($qstring);

	echo "<p>Sucesso</p>";
?>