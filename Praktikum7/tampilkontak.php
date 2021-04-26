<h2>DAFTAR KONTAK</h2>
<table border="1">
	<tr><th>NO</th><th>NAMA</th><th>JENIS KELAMIN</th><th>EMAIL</th><th>ALAMAT</th><th>KOTA</th><th>PESAN</th></tr>
	<?php 
	include 'koneksi.php'; // memamnggil koneksi 
	$kontak = mysqli_query($koneksi, "SELECT * from kontak"); // menyeleksi dari tabel kontak
	$no=1;
	foreach ($kontak as $row){
		echo "<tr>
			<td>$no</td>
			<td>".$row['nama']."</td>
			<td>".$row['jkel']."</td>
			<td>".$row['email']."</td>
			<td>".$row['alamat']."</td>
			<td>".$row['kota']."</td>
			<td>".$row['pesan']."</td>
			</tr>";
		$no++;
	}
	?>
	<br>
	<a href="formkontak.php">KEMBALI</a>
	<br>
</table>