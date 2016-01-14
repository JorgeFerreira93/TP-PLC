<?php

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');
	

	$qstring = "SELECT * FROM audicao WHERE audicao_id = ".$_REQUEST['id'];
	$audicao = $dbh->query($qstring)->fetch();
	

	$qstring = "SELECT atuacao_id FROM atuacao WHERE actuacao_audicao = ".$_REQUEST['id'];
	$atuacoes = $dbh->query($qstring);

	echo "<p><b>Título:</b> ".$audicao['audicao_nome']."</p><hr/>";
	echo "<p><b>Subtítulo:</b> ".$audicao['audicao_data_nasc']."</p><hr/>";
	echo "<p><b>Tema:</b> ".$curso['curso_designacao']."</p><hr/>";	
	echo "<p><b>Data:</b> ".$habilitacao['habilitacao_designacao']."</p><hr/>";
	echo "<p><b>Hora:</b> ".$curso['curso_designacao']."</p><hr/>";	
	echo "<p><b>Local:</b> ".$curso['curso_designacao']."</p><hr/>";	
	echo "<p><b>Responsável:</b> ".$curso['curso_designacao']."</p><hr/>";	
	echo "<p><b>Atuações:</b></p><br/>";	
	echo "<table class='table table-striped table-bordered table-hover' id='dataTables-example'>";
	echo "<thead>
			<tr>
				<th>ID</th>
				<th>DESIGNAÇÃO</th>
				<th>OPERAÇÕES</th>
			</tr>
		</thead>";

	echo "<tbody>";

	while ($atuacao = $atuacoes->fetch()){

		echo "<tr class='gradeA odd'>";
		echo "<td>".$atuacao['atuacao_id']."</td>
				<td>".$atuacao['atuacao_designacao']."</td>
				<td>
					<a href='consultar_atuacao.html?id=".$atuacao['atuacao_id']."'><i class='fa fa-search fa-fw'></i></a>					
					<a href='scripts/remover_atuacao.php?id=".$atuacao['atuacao_id']."'><i class='fa fa-times fa-fw'></i></a>
					<a href='alterar_atuacao.html?id=".$atuacao['atuacao_id']."'><i class='fa fa-pencil fa-fw'></i></a>
				</td>
			</tr>";
	}
	echo "</tbody>";

	echo "</table>";
	
?>