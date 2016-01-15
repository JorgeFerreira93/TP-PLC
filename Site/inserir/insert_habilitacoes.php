<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	$habilitacoes = simplexml_load_file('./datasets/habilitacoes.xml');

	foreach ($habilitacoes->habilitacao as $h){
		$qstring = "INSERT INTO habilitacao
					VALUES(	'".(string)$h['id']."', 
							'".(string)$h."')";

		echo $qstring."<br/>";

		$dbh->query($qstring);
	}
?>