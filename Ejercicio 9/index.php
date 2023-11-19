<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Comentarios</h2>
    <div class="comment-section">
        <?php
            // Conectar a la base de datos
            $conn = new mysqli("localhost", "root", "", "bd_tarea3");

            // Verificar la conexión
            if ($conn->connect_error) {
                die("La conexión falló: " . $conn->connect_error);
            }

            // Consulta para obtener los comentarios
            $sql = "SELECT nombre, comentario, fecha FROM comentarios";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Mostrar los comentarios
                while($row = $result->fetch_assoc()) {
                    echo "<div class='comment'>";
                    echo "<h3>" . $row["nombre"] . "</h3>";
                    echo "<p>" . $row["comentario"] . "</p>";
                    echo "<p class='date'>" . $row["fecha"] . "</p>";
                    echo "</div>";
                }
            } else {
                echo "No hay comentarios aún.";
            }

            // Cerrar la conexión a la base de datos
            $conn->close();
        ?>
    </div>
    <div class="comment-form">
        <h3>Deja un comentario</h3>
        <form action="comment.php" method="post">
            <input type="text" name="nombre" placeholder="Tu nombre" required><br>
            <textarea name="comentario" placeholder="Tu comentario" required></textarea><br>
            <input type="submit" value="Publicar comentario">
        </form>
    </div>
</body>
</html>