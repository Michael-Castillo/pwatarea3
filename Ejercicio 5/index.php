<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 5</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Galería de Imágenes</h1>
	<ul class="gallery">
		<?php
			$dir = "img/";
			$images = glob($dir."*.{jpg,jpeg,png,gif}", GLOB_BRACE);

			foreach($images as $image) {
				echo "<li><img src='$image' alt='imagen'></li>";
			}
		?>
	</ul>
</body>
</html>