# My PHP API for React Frontend

This repository contains the PHP backend API to support CRUD operations for the React frontend app that manages books.

## Getting Started

1. Set up a local development environment with PHP and MySQL.
2. Create a MySQL database `book-app` and import the initial structure using `book-app.sql`.
3. Update the database credentials in `api/connect.php`.
4. Place this repository inside your web server's document root. as for local XAMPP server place inside `XAMPP/htdocs`.

## API Endpoints

- `GET /api/get_books.php`: Get a list of all books.
- `POST /api/add_book.php`: Add a new book.
- `PUT /api/update_book.php`: Update an existing book.
- `DELETE /api/delete_book.php?id=`: Delete a book.
