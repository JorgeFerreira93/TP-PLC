<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	$alunos = simplexml_load_file('datasets/alunos.xml');

	foreach($alunos->aluno as $a){
		$qstring = "INSERT INTO aluno 
					VALUES(	'".(string)$a['id']."', 
							'".(string)$a->nome."',
							'".(string)$a->dataNasc."',
							'".(string)$a->curso."',
							".(string)$a->anoCurso.",
							'".(string)$a->instrumento."')";


		$dbh->query($qstring);
	}
?>