<?php
// Verificar si se han enviado datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario y realizar la validación
    $nombre = $_POST['nombre'];
    $comentario = $_POST['comentario'];

    // Validar los datos del formulario
    if (empty($nombre) || empty($comentario)) {
        echo "Por favor, completa todos los campos.";
    } else {
        // Crear un array para almacenar temporalmente los datos del comentario
        $nuevoComentario = array(
            "nombre" => $nombre,
            "comentario" => $comentario
        );

        // Conectar a la base de datos
        $conn = new mysqli("localhost", "root", "", "bd_tarea3");

        // Verificar la conexión
        if ($conn->connect_error) {
            die("La conexión falló: " . $conn->connect_error);
        }

        // Insertar el comentario en la base de datos
        $nombre = $conn->real_escape_string($nuevoComentario['nombre']);
        $comentario = $conn->real_escape_string($nuevoComentario['comentario']);
        
        $sql = "INSERT INTO comentarios (nombre, comentario) VALUES ('$nombre', '$comentario')";

        if ($conn->query($sql) === TRUE) {
            // Redirigir de vuelta a la página de comentarios después de publicar el comentario
            header("Location: index.php");
            exit();
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        // Cerrar la conexión a la base de datos
        $conn->close();
    }
}
?>