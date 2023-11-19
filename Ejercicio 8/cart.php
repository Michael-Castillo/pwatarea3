<?php
session_start();

function obtenerPrecioDelProductoDesdeLaBaseDeDatos($productId) {
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

    // Consulta para obtener el precio del producto
    $sql = "SELECT precio FROM productos WHERE id = $productId";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $price = $row["precio"];
        $conn->close();
        return $price;
    } else {
        $conn->close();
        return false; // Devolver false si no se encuentra el producto
    }
}


// Agregar producto al carrito
if (isset($_POST['product_id'])) {
    $productId = $_POST['product_id'];
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = array();
    }
    array_push($_SESSION['cart'], $productId);
}

// Eliminar producto del carrito
if (isset($_POST['remove_product_id'])) {
    $removeProductId = $_POST['remove_product_id'];
    if (($key = array_search($removeProductId, $_SESSION['cart'])) !== false) {
        unset($_SESSION['cart'][$key]);
    }
}

// Procesar el carrito
if (isset($_POST['checkout'])) {
    // Realizar la conexión a la base de datos
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "bd_tarea3";
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Insertar los detalles del pedido en la tabla de pedidos
    $userId = 1; // El ID del usuario actual es 1
    $total = 0; // Calcular el total del pedido
    foreach ($_SESSION['cart'] as $productId) {
        // Obtener la información del producto desde la base de datos y calcular el total
        $total += obtenerPrecioDelProductoDesdeLaBaseDeDatos($productId); // El precio del producto
    }

    $sql = "INSERT INTO pedidos (producto_id, total) VALUES ($userId, $total)";
    if ($conn->query($sql) === TRUE) {
        // Limpiar el carrito
        unset($_SESSION['cart']);
        echo "¡Gracias por su compra! Su pedido ha sido procesado.";
    } else {
        echo "Error al procesar el pedido: " . $conn->error;
    }

    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Carrito de Compras</h1>
    <ul>
        <?php
        if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
            // Mostrar los productos en el carrito
            foreach ($_SESSION['cart'] as $productId) {
                // Aquí podrías obtener la información del producto desde la base de datos y mostrarla
                echo "<li>";
                echo "<span>Producto " . $productId . "</span>";
                echo "<form action='cart.php' method='post'>";
                echo "<input type='hidden' name='remove_product_id' value='" . $productId . "'>";
                echo "<input type='submit' value='Eliminar'>";
                echo "</form>";
                echo "</li>";
            }
        } else {
            echo "El carrito está vacío";
        }
        ?>
    </ul>
    <form action="cart.php" method="post">
        <input type="submit" name="checkout" value="Procesar Pedido">
    </form>
</body>
</html>