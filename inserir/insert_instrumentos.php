<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	$instrumentos = simplexml_load_file('./datasets/instrumentos.xml');

	foreach ($instrumentos->instrumento as $i){
		$qstring = "INSERT INTO instrumento 
					VALUES(	'".(string)$i['id']."', 
							'".(string)$i."')";

		echo $qstring."<br/>";

		$dbh->query($qstring);
	}
?>