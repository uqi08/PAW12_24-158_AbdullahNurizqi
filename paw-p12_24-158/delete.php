<?php
include 'db.php';

if (isset($_GET['id'])) {

    $id = (int) $_GET['id'];

    $sql_select = "SELECT cover_image FROM books WHERE id = $id";
    $result_select = mysqli_query($conn, $sql_select);

    if (mysqli_num_rows($result_select) > 0) {

        $row = mysqli_fetch_assoc($result_select);
        $file_name = $row['cover_image'];
        $file_path = 'uploads/' . $file_name;

        $sql_delete = "DELETE FROM books WHERE id = $id";

        if (mysqli_query($conn, $sql_delete)) {

            if (!empty($file_name) && file_exists($file_path)) {
                unlink($file_path);
            }

            header('Location: index.php');
            exit;

        } else {
            echo "Error deleting record: " . mysqli_error($conn);
        }

    } else {
        echo "Data buku tidak ditemukan.";
    }

} else {
    header('Location: index.php');
    exit;
}
