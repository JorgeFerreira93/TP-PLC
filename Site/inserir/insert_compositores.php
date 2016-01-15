<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	$compositores = simplexml_load_file('./datasets/compositores.xml');

	foreach ($compositores->compositor as $c){
		$qstring = "INSERT INTO compositor
					VALUES(	'".(string)$c['id']."', 
							'".(string)$c->nome."',
							'".(string)$c->bio."',
							'".(string)$c->dataNasc."',
							'".(string)$c->dataObito."',
							'".(string)$c->periodo."')";

		echo $qstring."<br/>";

		$dbh->query($qstring);
	}
?>