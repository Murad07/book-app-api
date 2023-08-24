<?php
include 'connect.php';

// Retrieve JSON data from the request body
$data = json_decode(file_get_contents("php://input"), true);

$id = $data['id'];
$name = $data['name'];
$author = $data['author'];
$thumbnail = $data['thumbnail'];
$price = $data['price'];
$rating = $data['rating'];
$featured = $data['featured'];

$query = "UPDATE books SET name = '$name', author = '$author', thumbnail = '$thumbnail', price = '$price', rating = '$rating', featured = '$featured' WHERE id = $id";
$result = mysqli_query($connection, $query);

if ($result) {
    echo json_encode(['message' => 'Book updated successfully']);
} else {
    echo json_encode(['message' => 'Error updating book']);
}
