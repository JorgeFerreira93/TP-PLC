<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');

	$qstring = "DELETE FROM obra WHERE obra_id='".$_REQUEST['id']."'";
	$resultado = $dbh->query($qstring);

	header("Location: ../listar_obras.html");
?>