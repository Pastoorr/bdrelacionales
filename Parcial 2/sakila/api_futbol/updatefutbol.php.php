<?php
    header("Content-Type: appilcation/json");

    if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo Put es permitido']);
    }

    require 'conexionSakila.php';

    $input = json_decode(file_get_contents('php://input'), true);
    $Jugador = intval($input["Jugador$Jugador"]);
    $Numero = $conn->real_escape_string($input["Numero"]);
    $Trofeos = $conn->real_escape_string($input["Trofeos"]);
    $Mundiales = $conn->real_escape_string($input["Mundiales"]);

    $query = "UPDATE actor SET Numero = ?, Trofeos = ?, last_update = NOW() WHERE Jugador$Jugador = ?";
    
    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "error en la consulta", $conn->error]);
        exit();
    }

    $st->bind_param("ssi", $Numero, $Trofeos, $Jugador, $Mundiales);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["message" => "Actor actualizado correctamente"]);
        }else{
            http_response_code(400);
            echo json_encode(["error" => "no se encontro el actor con id: $Jugador"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error" => "error al ejecutar" , $st->error]);
    }
    $st->close();
    $conn->close();

?>