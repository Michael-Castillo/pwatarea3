<?php
include 'funciones.php'; // Incluir el archivo que contiene la función obtenerNombreUsuario
session_start();
if (isset($_SESSION['autenticado']) && $_SESSION['autenticado'] === true) {
    // Obtener el nombre del usuario desde la base de datos
    $nombreUsuario = obtenerNombreUsuario($_SESSION['usuario']); 

    // Mostrar un mensaje de bienvenida personalizado
    echo "¡Bienvenido, " . $nombreUsuario . "!";
} else {
    // Si el usuario no está autenticado, redirigirlo a la página de inicio de sesión
    header('Location: login.php');
}
?>