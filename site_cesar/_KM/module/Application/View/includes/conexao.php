<?php

$con = 'localhost';
$banco = 'gestor_web';
$usuario = 'root';
$senha   = '';


$pdo = new PDO("mysql:host=$con;dbname=$banco", "$usuario", "$senha");
$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

?>