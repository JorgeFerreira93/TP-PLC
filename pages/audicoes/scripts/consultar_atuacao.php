<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');


	$qstring = "SELECT * FROM atuacao WHERE actuacao_id = ".$_REQUEST['id'];
	$atuacao = $dbh->query($qstring);


	$qstring = "SELECT * FROM aluno AS a
				INNER JOIN atuacao_aluno AS aa 
				ON a.aluno_id=aa.aluno_id 
				WHERE actuacao_id = ".$_REQUEST['id'];
	$alunos = $dbh->query($qstring);


	$qstring = "SELECT * FROM professor AS p
				INNER JOIN atuacao_professor AS ap
				ON p.professor_id=ap.professor_id 
				WHERE actuacao_id = ".$_REQUEST['id'];
	$professores = $dbh->query($qstring);


	$qstring = "SELECT * FROM obra AS o
				INNER JOIN atuacao_obra AS ao
				ON o.obra_id=ao.obra_id 
				WHERE actuacao_id = ".$_REQUEST['id'];
	$obras = $dbh->query($qstring);


	echo "<p><b>Designação:</b> ".$atuacao['atuacao_designacao']."</p><hr/>";
	echo "<p><b>Professores:</b></p><br/>";
	echo "<table class='table table-striped table-bordered table-hover' id='dataTables-example'>";
	echo "<thead>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th><th>
			</tr>
		</thead>";

	echo "<tbody>";

	while ($professor = $professores->fetch()){


		echo "<tr class='gradeA odd'>";
		echo "<td>".$professor['professor_id']."</td>
				<td>".$professor['professor_nome']."</td>
				<td>
					<a href='../professores/consultar_professor.html?id=".$professor['professor_id']."'><i class='fa fa-search fa-fw'></i></a>
				</td>
			</tr>";
	}
	echo "</tbody>";

	echo "</table><hr/>";

	echo "<p><b>Alunos:</b></p><br/>";
	echo "<table class='table table-striped table-bordered table-hover' id='dataTables-example'>";
	echo "<thead>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th><th>
			</tr>
		</thead>";

	echo "<tbody>";

	while ($aluno = $alunos->fetch()){


		echo "<tr class='gradeA odd'>";
		echo "<td>".$aluno['aluno_id']."</td>
				<td>".$aluno['aluno_nome']."</td>
				<td>
					<a href='../obras/consultar_aluno.html?id=".$aluno['aluno_id']."'><i class='fa fa-search fa-fw'></i></a>
				</td>
			</tr>";
	}
	echo "</tbody>";

	echo "</table><hr/>";

	echo "<p><b>Obras:</b></p><br/>";
	echo "<table class='table table-striped table-bordered table-hover' id='dataTables-example'>";
	echo "<thead>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th><th>
			</tr>
		</thead>";

	echo "<tbody>";

	while ($obra = $obras->fetch()){


		echo "<tr class='gradeA odd'>";
		echo "<td>".$obra['obra_id']."</td>
				<td>".$obra['obra_nome']."</td>
				<td>
					<a href='../obras/consultar_obra.html?id=".$obra['obra_id']."'><i class='fa fa-search fa-fw'></i></a>
				</td>
			</tr>";
	}
	echo "</tbody>";

	echo "</table>";
	
?>