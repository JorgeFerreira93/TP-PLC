<?php
	echo "<tr><th>ola</th></td>";

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');

	$qstring = "SELECT * FROM audicao ORDER BY audicao_data LIMIT 5";
	$audicoes = $dbh->query($qstring);

	while($aud = $audicoes->fetch()){
		$qstring = "SELECT COUNT(*) AS o, COUNT(DISTINCT atuacao_id) AS a FROM atuacao_obra 
					WHERE atuacao_id IN (
						SELECT atuacao_id FROM atuacao
						WHERE atuacao_audicao='".$aud['audicao_id']."'
					)";
		$nums = $dbh->query($qstring)->fetch();

		echo "<tr><th>";
		echo "Audição dia ".$aud['audicao_data']." às ".$aud['audicao_hora'].", com o título ".$aud['audicao_titulo']." - ".$aud['audicao_subtitulo'].", onde será(ão) apresentada(s) ".$nums['o']." ao longo de ".$nums['a']."atuação(ões)";
		echo "</th></tr>";
	}

?>