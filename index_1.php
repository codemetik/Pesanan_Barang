<?php  
include "koneksi.php";

$query = mysqli_query($koneksi, "SELECT * FROM produk");
while ($data = mysqli_fetch_array($query)) {
	?>
<div class="produk">
	<?php echo "<img src='images/".$data['gambar']."' width='160' height='160'>" ?>
	<p><?php echo $data['nama']; ?></p>
	<ul class="ul_atas">
		<li class="li_atas"><a href="index.php?page=detail&id=<?php echo $data['id_produk'] ?>">Detail Produk</a></li>
	</ul>
</div>
<?php }
?>