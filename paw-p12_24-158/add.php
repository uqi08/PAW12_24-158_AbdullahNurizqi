<?php
include 'db.php';

if (isset($_POST['submit'])) {

    $isbn   = mysqli_real_escape_string($conn, $_POST['isbn']);
    $title  = mysqli_real_escape_string($conn, $_POST['title']);
    $author = mysqli_real_escape_string($conn, $_POST['author']);
    $price  = mysqli_real_escape_string($conn, $_POST['price']);

    $imageName = $_FILES['cover_image']['name'];
    $imageTemp = $_FILES['cover_image']['tmp_name'];
    $target    = 'uploads/' . basename($imageName);

    if (move_uploaded_file($imageTemp, $target)) {

        $sql = "INSERT INTO books (isbn, title, author, price, cover_image)
                VALUES ('$isbn', '$title', '$author', '$price', '$imageName')";

        if (mysqli_query($conn, $sql)) {
            header('Location: index.php');
            exit;
        } else {
            echo "Gagal menyimpan data ke database. <br> Error: " . mysqli_error($conn);

            if (file_exists($target)) {
                unlink($target);
            }
        }

    } else {
        echo "Upload file gagal! Pastikan folder <b>uploads</b> ada dan dapat ditulisi.";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Tambah Buku</title>
</head>
<body>

<h1>Tambah Buku Baru</h1>

<form method="POST" enctype="multipart/form-data">
    <label>ISBN:</label><br>
    <input type="text" name="isbn" required><br><br>

    <label>Judul:</label><br>
    <input type="text" name="title" required><br><br>

    <label>Penulis:</label><br>
    <input type="text" name="author" required><br><br>

    <label>Harga:</label><br>
    <input type="number" step="0.01" name="price" required><br><br>

    <label>Cover Image:</label><br>
    <input type="file" name="cover_image" required><br><br>

    <button type="submit" name="submit">Simpan</button>
</form>

</body>
</html>
