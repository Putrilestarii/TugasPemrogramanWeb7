<?php 
// Mengaktifkan session PHP
session_start();

// Memanggil koneksi
include 'koneksi.php';

// Menangkap data yang dikirim dari form
$username = $_POST['username'];
$password = $_POST['password'];

// Menyeleksi data admin dengan username dan password yang sesuai
$data = mysqli_query($koneksi,"select * from admin where nama='$username' and kata sandi='$password'");

// Menghitung jumlah data
$cek = mysqli_num_rows($data);

if($cek > 0){  // Jika cek lebih dari 0 maka menampilkan halaman tampilkontak.php
	$_SESSION['username'] = $username;
	$_SESSION['status'] = "login";
	header("location:tampilkontak.php");
} else{ // Jika tidak akan menampilkan halaman index1.php
	header("location:index1.php");

}
?>