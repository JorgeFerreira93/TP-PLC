<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');

	$query = "INSERT INTO professor (`professor_id`, `professor_nome`, `professor_data_nasc`, `professor_habilitacao`, `professor_curso`)
				VALUES (
				'".$_REQUEST['id']."',
				'".$_REQUEST['nome']."',
				'".$_REQUEST['data']."',
				'".$_REQUEST['hab']."',
				'".$_REQUEST['curso']."'				
				);";
	
	$dbh->query($query);

	echo $query;

	echo "Professor inserido com sucesso!";
?>