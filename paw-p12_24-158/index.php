<?php
include 'db.php';

$search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';

$limit = 5;
$page  = isset($_GET['page']) ? (int) $_GET['page'] : 1;
$start = ($page - 1) * $limit;

$countQuery  = "SELECT COUNT(*) AS total FROM books WHERE title LIKE '%$search%'";
$countResult = mysqli_query($conn, $countQuery);
$countRow    = mysqli_fetch_assoc($countResult);
$total       = $countRow['total'];
$pages       = ceil($total / $limit);

$query  = "SELECT * FROM books WHERE title LIKE '%$search%' LIMIT $start, $limit";
$result = mysqli_query($conn, $query);
?>
<!DOCTYPE html>
<html>
<head>
    <title>Data Buku</title>
</head>
<body>

<h1>Daftar Buku</h1>

<form method="GET">
    <input type="text" name="search" placeholder="Cari berdasarkan Judul..." 
           value="<?php echo htmlspecialchars($search); ?>">
    <button type="submit">Cari</button>
</form>

<p><a href="add.php">+ Tambah Buku Baru</a></p>

<table border="1" cellpadding="10" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>ISBN</th>
        <th>Judul</th>
        <th>Penulis</th>
        <th>Harga</th>
        <th>Cover</th>
        <th>Aksi</th>
    </tr>

    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
    <tr>
        <td><?php echo $row['id']; ?></td>
        <td><?php echo $row['isbn']; ?></td>
        <td><?php echo $row['title']; ?></td>
        <td><?php echo $row['author']; ?></td>
        <td><?php echo number_format($row['price'], 0, ',', '.'); ?></td>
        <td><img src="uploads/<?php echo $row['cover_image']; ?>" width="80"></td>
        <td>
            <a href="edit.php?id=<?php echo $row['id']; ?>">Edit</a> |
            <a href="delete.php?id=<?php echo $row['id']; ?>"
               onclick="return confirm('Yakin ingin menghapus data ini?')">
            Delete</a>
        </td>
    </tr>
    <?php } ?>
</table>

<br>
<?php for ($i = 1; $i <= $pages; $i++) { ?>
    <a href="?page=<?php echo $i; ?>&search=<?php echo urlencode($search); ?>">
        <?php echo ($i == $page) ? "<strong>$i</strong>" : $i; ?>
    </a>
<?php } ?>

</body>
</html>
