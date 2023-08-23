<?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'book_app';

$connection = mysqli_connect($host, $username, $password, $database);

if (!$connection) {
    die('Database connection error: ' . mysqli_connect_error());
}
