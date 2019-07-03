<!DOCTYPE html>
<html>
<head>
	<title>Fashion</title>
	<style type="text/css">
		*{
			margin: 0px auto;
		}
		.container{
			margin-top: 0;
			position: relative;
		}
	.header{
			position: fixed;
			color: white;
			background-color: blue;
			height: 50px;
			width: 100%;
			z-index: 1000;
		}

		.box-produk{
			position: relative;
			margin: 0px 20px;
		}
		.produk{
			float: left;
			border: 5px solid pink;
			margin-top: 60px;
			margin-left: 8px;
			width: 160px;
			height: 280px;
			background-color: pink;

		}
		.produk_detail{
			float: left;
			border: 5px solid pink;
			margin-top: 60px;
			width: 370px;
			height: 380px;
			background-color: pink;

		}
		img{
			border:1px solid white;
			background-color: white;
		}
		p{
			margin-top: 0px;
			border:1px solid white;
			float: center;
			color: black;
			background-color: white;
		}
		ul{
			margin-top: 10px;
		list-style:none;
}
li a{
	color: white;
	text-decoration: none;
}
.ul_atas li{
	display: inline;
	background-color: black;
	padding: 5px;
	border-radius: 3px 5px;
}
.das_table {
	margin-top: 0px;
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.das_table td, .das_table th {
  border: 1px solid #ddd;
  padding: 8px;
}

.das_table tr:nth-child(even){
  background-color: #f2f2f2;
}

.das_table tr:hover {background-color: #ddd;}

.das_table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: blue;
  color: white;
  width: 150px;
}
.das_table td{
	background-color: pink;
}
	</style>
</head>
<body>
	<div class="container">
<div class="header">
	<center><h1>Fashion</h1></center>
</div>
<div class="box-produk">
<?php 
if (isset($_GET['page'])) {
	$page = $_GET['page'];
	switch ($page) {
		case 'detail':
			include "index_2.php";
			break;
		case 'index_1':
			include "index_1.php";
			break;
		default:
			echo "<h1>Maaf Halaman Tidak Ada</h1>";
			break;
	}
}else{
	include "index_1.php";
}

?>
</div>
</div>
</body>
</html>