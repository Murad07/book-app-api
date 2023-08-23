<?php
include 'connect.php';

$query = "SELECT * FROM books";
$result = mysqli_query($connection, $query);

$books = [];
while ($row = mysqli_fetch_assoc($result)) {
    $books[] = $row;
}

echo json_encode($books);
