<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	$cursos = simplexml_load_file('./datasets/cursos.xml');

	foreach ($cursos->curso as $c){
		$qstring = "INSERT INTO curso 
					VALUES(	'".(string)$c['id']."', 
							".(string)$c->duracao.",
							'".(string)$c->designacao."',
							'".(string)$c->instrumento."')";

		echo $qstring."<br/>";

		$result = $dbh->query($qstring);
	}
?>