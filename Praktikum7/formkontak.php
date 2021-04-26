<!DOCTYPE html>
<html>
<head>
	<title>FORM KONTAK</title>
</head>
<body>
	<form method="post" action="tambahkontak.php">
		<table>
			<tr>
				<td>NAMA</td>
				<td><input type="text" name="nama"></td>
			</tr>
			<tr>
				<td>JENIS KELAMIN</td>
				<td><input type="text" name="jkel"></td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>ALAMAT</td>
				<td><input type="text" name="alamat"></td>
			</tr>
			<tr>
				<td>KOTA</td>
				<td>
					<select name="kota">
						<option value="SIDOARJO">SIDOARJO</option>
						<option value="SURABAYA">SURABAYA</option>
						<option value="MALANG">MALANG</option>
						<option value="YOGYAKARTA">YOGYAKARTA</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>PESAN</td>
				<td><textarea rows="3" cols="30" name="pesan"></textarea></td>
			</tr>
			<tr><td colspan="2"><button type="submit" value="tambahkontak">TAMBAH KONTAK</button></td></tr>
		</table>
	</form>
</body>
</html>