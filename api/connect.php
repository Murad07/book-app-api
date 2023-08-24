<?php
header("Access-Control-Allow-Origin: http://localhost:3000");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$host = 'localhost';
$username = 'root';
$password = '';
$database = 'book_app';

$connection = mysqli_connect($host, $username, $password, $database);

if (!$connection) {
    die('Database connection error: ' . mysqli_connect_error());
}
