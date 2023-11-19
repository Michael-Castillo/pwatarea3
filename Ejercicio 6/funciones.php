<?php
// Función para obtener el nombre del usuario desde la base de datos
function obtenerNombreUsuario($correo) {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "bd_tarea3";

    // Crear conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Realizar la consulta para obtener el nombre del usuario
    $sql = "SELECT nombre FROM usuarios WHERE correo = '$correo'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $nombre = $row['nombre'];
    } else {
        $nombre = "Usuario no encontrado";
    }

    $conn->close();

    return $nombre;
}
?>