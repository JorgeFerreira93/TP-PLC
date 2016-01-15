<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	$professores = simplexml_load_file('./datasets/professores.xml');

	foreach ($professores->professor as $p){
		$qstring = "INSERT INTO professor
					VALUES(	'".(string)$p['id']."', 
							'".(string)$p->nome."',
							'".(string)$p->dataNasc."',
							'".(string)$p->habilitacoes."',
							'".(string)$p->curso."')";

		echo $qstring."<br/>";

		$dbh->query($qstring);
	}
?>