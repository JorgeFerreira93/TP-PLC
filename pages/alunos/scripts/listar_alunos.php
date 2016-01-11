<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');

	$qstring = "SELECT * FROM aluno";
	$resultado = $dbh->query($qstring);
	
	echo "<table class='table table-striped table-bordered table-hover' id='dataTables-example'>";
	echo "<thead>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th>OPERA��ES</th>
			</tr>
		</thead>";

	echo "<tbody>";
	while ($aluno = $resultado->fetch()){
		
		$qstring = "SELECT instrumento_designacao FROM instrumento WHERE instrumento_id = '".$aluno['aluno_instrumento']."'";
		$instrumento = $dbh->query($qstring)->fetch();
		
		echo "<tr class='gradeA odd'>";
		echo "<td>".$aluno['aluno_id']."</td>
				<td>".$aluno['aluno_nome']."</td>
				<td>
					<a href='consultar_aluno.html?id=".$aluno['aluno_id']."'><i class='fa fa-search fa-fw'></i></a>					
					<a href='scripts/remover_aluno.php?id=".$aluno['aluno_id']."'><i class='fa fa-times fa-fw'></i></a>
					<a href='alterar_aluno.html?id=".$aluno['aluno_id']."'><i class='fa fa-pencil fa-fw'></i></a>
				</td></tr>";
	}
	echo "</tbody>";

	echo "</table>";
?>