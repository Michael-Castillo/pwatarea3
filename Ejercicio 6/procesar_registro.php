<?php
include 'conexion.php'; // Incluir el archivo de conexión a la base de datos

// Obtener los datos del formulario
$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena']; // La contraseña se guarda directamente

// Insertar los datos en la base de datos
$sql = "INSERT INTO usuarios (nombre, correo, contrasena) VALUES ('$nombre', '$correo', '$contrasena')";

if ($conn->query($sql) === TRUE) {
    echo "Usuario registrado exitosamente";
} else {
    echo "Error al registrar al usuario: " . $conn->error;
}

$conn->close();
?>