<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Productos</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Lista de Productos</h1>
    <ul>
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

        // Consulta para obtener los productos, incluyendo la imagen
        $sql = "SELECT id, nombre, descripcion, precio, imagen FROM productos";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Mostrar los productos en una lista
            while($row = $result->fetch_assoc()) {
                echo "<li>";
                echo "<span>" . $row["nombre"] . "</span>";
                echo "<span>$" . $row["precio"] . "</span>";
                echo '<img src="data:image/jpeg;base64,'.base64_encode($row["imagen"]).'"/>';
                echo "<form action='product.php' method='get'>";
                echo "<input type='hidden' name='id' value='" . $row["id"] . "'>";
                echo "<input type='submit' value='Ver detalles'>";
                echo "<form action='cart.php' method='post'>";
                echo "<input type='hidden' name='product_id' value='" . $row["id"] . "'>";
                echo "<input type='submit' value='Agregar al carrito'>";
                echo "</form>";
                echo "</li>";
            }
        } else {
            echo "No se encontraron productos";
        }
        $conn->close();
        ?>
    </ul>
</body>
</html>