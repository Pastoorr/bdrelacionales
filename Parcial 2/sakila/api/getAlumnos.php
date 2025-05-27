<?php 
  header("Content-Type: application/json");
  header("Access-Control-Allow-Oringin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Alejandro Tizoc", "correo" => "alejandro@gmail.com"],
        ["id" => 1, "nombre" => "Luis Perez", "correo" => "luis@gmail.com"],
        ["id" => 1, "nombre" => "Victor Ojeda", "correo" => "victor@gmail.com"],

    ];

  echo json_encode($usuarios);

?>