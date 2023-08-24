<?php
include 'connect.php';

$query = "SELECT * FROM books";
$result = mysqli_query($connection, $query);

$books = [];
while ($row = mysqli_fetch_assoc($result)) {
    // Convert price and rating to numbers
    $row['id'] = intval($row['id']);
    $row['price'] = floatval($row['price']);
    $row['rating'] = floatval($row['rating']);
    $row['featured'] = intval($row['featured']);

    $books[] = $row;
}

echo json_encode($books);
