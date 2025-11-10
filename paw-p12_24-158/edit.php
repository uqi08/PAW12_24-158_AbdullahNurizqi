<?php
include 'db.php';

// Ambil ID
$id = isset($_GET['id']) ? (int) $_GET['id'] : 0;

// Ambil data buku
$selectSql = "SELECT * FROM books WHERE id = $id";
$selectResult = mysqli_query($conn, $selectSql);

if (mysqli_num_rows($selectResult) < 1) {
    die('Data buku tidak ditemukan.');
}

$book = mysqli_fetch_assoc($selectResult);

// Jika form disubmit
if (isset($_POST['submit'])) {

    $isbn   = mysqli_real_escape_string($conn, $_POST['isbn']);
    $title  = mysqli_real_escape_string($conn, $_POST['title']);
    $author = mysqli_real_escape_string($conn, $_POST['author']);
    $price  = mysqli_real_escape_string($conn, $_POST['price']);
    $old_image = $_POST['old_image'];

    $new_image = $old_image;

    if (!empty($_FILES['cover_image']['name'])) {

        $image_file = $_FILES['cover_image']['name'];
        $tmp_file   = $_FILES['cover_image']['tmp_name'];
        $target     = 'uploads/' . basename($image_file);

        if (move_uploaded_file($tmp_file, $target)) {

            $new_image = $image_file;

            if (!empty($old_image) && file_exists("uploads/$old_image")) {
                unlink("uploads/$old_image");
            }

        } else {
            die('Gagal mengunggah file baru!');
        }
    }

    $updateSql = "
        UPDATE books SET
            isbn = '$isbn',
            title = '$title',
            author = '$author',
            price = '$price',
            cover_image = '$new_image'
        WHERE id = $id
    ";

    if (mysqli_query($conn, $updateSql)) {
        header('Location: index.php');
        exit;
    } else {
        echo "Error updating record: " . mysqli_error($conn);
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Buku</title>
</head>
<body>

<h1>Edit Buku: <?php echo htmlspecialchars($book['title']); ?></h1>

<form method="POST" enctype="multipart/form-data">

    <input type="hidden" name="old_image" value="<?php echo htmlspecialchars($book['cover_image']); ?>">

    <label>ISBN:</label><br>
    <input type="text" name="isbn" value="<?php echo htmlspecialchars($book['isbn']); ?>" required><br><br>

    <label>Judul:</label><br>
    <input type="text" name="title" value="<?php echo htmlspecialchars($book['title']); ?>" required><br><br>

    <label>Penulis:</label><br>
    <input type="text" name="author" value="<?php echo htmlspecialchars($book['author']); ?>" required><br><br>

    <label>Harga:</label><br>
    <input type="number" step="0.01" name="price" value="<?php echo htmlspecialchars($book['price']); ?>" required><br><br>

    <p>Cover Saat Ini:</p>
    <img src="uploads/<?php echo htmlspecialchars($book['cover_image']); ?>" width="80"><br><br>

    <label>Cover Baru (Opsional):</label><br>
    <input type="file" name="cover_image"><br><br>

    <button type="submit" name="submit">Simpan Perubahan</button>
    <a href="index.php">Batal</a>

</form>

</body>
</html>
