<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	$periodos = simplexml_load_file('./datasets/periodos.xml');

	foreach ($periodos->periodo as $p){
		$qstring = "INSERT INTO periodo
					VALUES(	'".(string)$p['id']."', 
							'".(string)$p."')";

		echo $qstring."<br/>";

		$dbh->query($qstring);
	}
?>