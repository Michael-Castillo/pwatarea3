<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles del Producto</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
    <?php
    // Realizar la conexión a la base de datos
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "bd_tarea3";
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar la conexión
    if ($conn->connect_error) {
        die("La conexión a la base de datos ha fallado: " . $conn->connect_error);
    }

    // Obtener el ID del producto desde la URL
    $productId = $_GET['id'];

    // Consulta para obtener la información del producto, incluyendo la imagen
    $sql = "SELECT nombre, descripcion, precio, imagen FROM productos WHERE id = $productId";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Mostrar la información del producto
        $row = $result->fetch_assoc();
        echo "<h1>" . $row["nombre"] . "</h1>";
        echo "<h2>Descripción</h2>";
        echo "<p>" . $row["descripcion"] . "</p>";
        echo "<p>Precio: $" . $row["precio"] . "</p>";
        echo '<img src="data:image/jpeg;base64,'.base64_encode($row["imagen"]).'"/>';
        echo "<form action='cart.php' method='post'>";
        echo "<input type='hidden' name='product_id' value='" . $productId . "'>";
        echo "<input type='submit' value='Agregar al carrito'>";
        echo "</form>";
    } else {
        echo "Producto no encontrado";
    }
    $conn->close();
    ?>
    </div>
</body>
</html>