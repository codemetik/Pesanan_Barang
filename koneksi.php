<?php 
$koneksi = mysqli_connect("localhost","root","","fashion");

/*$koneksi = mysqli_connect("localhost","id9898619_mbambut","rikimbambut","id9898619_riki");*/

// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
 
?>