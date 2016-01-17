<?php

	echo "ola";

	$dbh = new PDO('mysql:host=localhost;dbname=gamu', 'root', 'root');

	$qstring = "SELECT compositor_nome AS Compositor, COUNT(obra_id) AS Obras
				FROM obra INNER JOIN compositor
				ON obra_compositor=compositor_id
				GROUP BY obra_compositor
				ORDER BY Obras DESC
				LIMIT 5;";

	$topcompositores = $dbh->query($qstring);


	$qstring = "SELECT curso_designacao AS Curso, COUNT(aluno_id) AS Alunos
				FROM aluno INNER JOIN curso
				ON aluno_curso=curso_id
				GROUP BY curso_id
				ORDER BY Alunos DESC
				LIMIT 5;";

	$topcursos = $dbh->query($qstring);	



	echo "<div class='panel panel-default'>
	<div class='panel panel-heading'>Compositores com mais Obras no GAMu</div>
	<div class='panel panel-body'>

	<div class='table-responsive'>
        <table class='table'>
        	<thead>
        		<th>
        			<tr>Compositor</tr>
        			<tr>Obras</tr>
        		</th>
        	</thead>
            <tbody>";

    while($comp = $topcompositores->fetch()){
    	echo "<th>
    			<tr>".$comp['Compositor']."</tr>
    			<tr>".$comp['Obras']."</tr>
    		</th>";
    }
	echo "</tbody></table></div></div></div>";




	echo "<div class='panel panel-default'>
	<div class='panel panel-heading'>Cursos com mais Alunos</div>
	<div class='panel panel-body'>

	<div class='table-responsive'>
        <table class='table'>
        	<thead>
        		<th>
        			<tr>Curso</tr>
        			<tr>Alunos</tr>
        		</th>
        	</thead>
            <tbody>";

    while($curs = $topcursos->fetch()){
    	echo "<th>
    			<tr>".$curs['Curso']."</tr>
    			<tr>".$curs['Alunos']."</tr>
    		</th>";
    }
	echo "</tbody></table></div></div></div>";

?>