<?php 
	//$servername = "localhost";
    //$username = "root";
  	//$password = "";
  	//$dbname = "betterware";

	$mysqli= new mysqli("localhost","root","","betterware");


	
	$salida="";
	$query="SELECT * FROM dwh_productos_d WHERE DWHR_NOMPROD_S NOT LIKE '' ORDER By DWHR_CANTDISP_S";

	if (isset($_POST['consulta'])) {
		$q=$mysqli->real_escape_string($_POST['consulta']);
		$query="SELECT DWHR_CODPROD_C,DWHR_NOMPROD_S, DWHR_DESC_S,DWHR_CANTDISP_S,DWHR_COSTPUB_S FROM dwh_productos_d
		WHERE  DWHR_CODPROD_C LIKE '%".$q."%' OR DWHR_NOMPROD_S LIKE '%".$q."%' OR DWHR_COSTPUB_S LIKE '%".$q."%'";
	}

		$resultado = $mysqli->query($query);

		if ( !empty($resultado->num_rows) && $resultado->num_rows > 0){
			$salida.="<table class='tabla_datos'>
				<thead>
					<h2><header>CONTROL DE INVENTARIO BETTERWARE</header></h2>
					<tr>
						<td>CODIGO DEL PRODUCTO</td>
						<td>NOMBRE PRODUCTO</td>
						<td>DESCRIPCIÓN</td>
						<td>CANTIDAD DISPONIBLE</td>
						<td>COSTO PUBLICO</td>						
					</tr>
				</thead>
				</tbody>";

			while ( $fila = $resultado->fetch_assoc()) {
				$salida.="<tr>
						<td>".$fila['DWHR_CODPROD_C']."</td>
						<td>".$fila['DWHR_NOMPROD_S']."</td>
						<td>".$fila['DWHR_DESC_S']."</td>
						<td>".$fila['DWHR_CANTDISP_S']."</td>
						<td>".$fila['DWHR_COSTPUB_S']."</td>
				</tr>";
				# code...
			}
			$salida.="</tbody></table>";
			# code...
		} else {
			$salida.="No se encontro el producto solicitado.";

		}

		echo $salida;
		$mysqli->close();
	

 ?>