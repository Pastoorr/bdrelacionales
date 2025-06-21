<?php
header("Content-Type: application/json");

if($_SERVER['REQUEST_METHOD'] !== 'POST'){
    http_response_code(405);
    echo json_encode(['error'=> 'Solo metodo POST es permitido']);
}

//conectar a la BD  sakila
require 'conexionSakila.php';

$data = json_decode(file_get_contents('php://input'), true);
$Jugador = $data['Jugador'];
$Numero = $data['Numero'];
$Trofeos = $data['Trofeos'];
$Mundiales = $data['Mundiales'];
$Goles = $data['Goles'];

$query = $conn->prepare("INSERT INTO actor (Jugador, Numero, Trofeos, Mundiales, Goles) VALUES (?,?)");

IF(!$query){
    http_response_code(500);
    echo json_encode(["error" => "Ocurrio un error"]);
    exit;
}

$query->bind_param("ss", $Jugador, $Numero, $Trofeos, $Mundiales, $Goles);

if($query->execute()){
    echo json_encode(["mensaje" => "Actor insertado correctamente", "actor_id" => $query->insert_id]);
}else{
    http_response_code(500);
    echo json_encode(["error" => "Fallo la inserción", $query->error]);
}

$query->close();
$conn->close();