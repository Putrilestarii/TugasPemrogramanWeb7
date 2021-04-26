<?php
include 'koneksi.php'; // memanggil konesi.php yang menyimpan data kedalam variabel nama, jenis kelamin, email, alamat, kota , dan pesan
$nama	= $_POST['nama']; 
$jkel   = $_POST['jkel'];
$email	= $_POST['email'];
$alamat	= $_POST['alamat'];
$kota	= $_POST['kota'];
$pesan	= $_POST['pesan'];


// query SQL yang berfungsi untuk memasukkan data 
$query="INSERT INTO kontak SET nama='$nama', jkel='$jkel', email='$email', alamat='$alamat', kota='$kota', pesan='$pesan'";
mysqli_query($koneksi, $query);
//mengalihkan ke halaman tampilkontak.php
header("location:tampilkontak.php");
?>