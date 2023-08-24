<?php
include 'connect.php';

// Retrieve JSON data from the request body
$data = json_decode(file_get_contents("php://input"), true);

$name = $data['name'];
$author = $data['author'];
$thumbnail = $data['thumbnail'];
$price = $data['price'];
$rating = $data['rating'];
$featured = $data['featured'];

$query = "INSERT INTO books (name, author, thumbnail, price, rating, featured) VALUES ('$name', '$author', '$thumbnail', '$price', '$rating', '$featured')";
$result = mysqli_query($connection, $query);

if ($result) {
    echo json_encode(['message' => 'Book added successfully']);
} else {
    echo json_encode(['message' => 'Error adding book']);
}
