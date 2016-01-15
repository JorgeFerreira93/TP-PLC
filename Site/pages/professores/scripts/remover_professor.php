<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');

	$qstring = "DELETE FROM professor WHERE professor_id='".$_REQUEST['id']."'";
	$resultado = $dbh->query($qstring);

	header("Location: ../listar_professores.html");
?>