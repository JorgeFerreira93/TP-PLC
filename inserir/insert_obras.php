<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	$obras = simplexml_load_file('./datasets/obras.xml');

	foreach ($obras->obra as $o){
		$qstring = "INSERT INTO obra
					VALUES(	'".(string)$o['id']."', 
							'".(string)$o->nome."',
							'".(string)$o->desc."',
							".(string)$o->anoCriacao.",
							'".(string)$o->periodo."',
							'".(string)$o->compositor."',
							'".(string)$o->duracao."')";

		echo $qstring."<br/>";

		$dbh->query($qstring);
	}
?>