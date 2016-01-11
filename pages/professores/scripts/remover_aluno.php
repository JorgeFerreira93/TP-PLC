<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');

	$qstring = "DELETE FROM aluno WHERE aluno_id='".$_REQUEST['id']."'";
	$resultado = $dbh->query($qstring);

	header("Location: ../listar_alunos.html");
?>