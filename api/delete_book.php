<?php
include 'connect.php';

// Get the book ID from the URL parameter
$bookId = $_GET['id'];

$query = "DELETE FROM books WHERE id = $bookId";
$result = mysqli_query($connection, $query);

if ($result) {
    echo json_encode(['message' => 'Book deleted successfully']);
} else {
    echo json_encode(['message' => 'Error deleting book']);
}
