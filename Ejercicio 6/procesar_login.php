<?php
include 'conexion.php'; // Incluir el archivo de conexión a la base de datos

// Obtener los datos del formulario
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];

// Validar los datos de inicio de sesión
$sql = "SELECT * FROM usuarios WHERE correo = '$correo'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $usuario = $result->fetch_assoc();
    if ($contrasena === $usuario['contrasena']) {
        session_start();
        $_SESSION['autenticado'] = true;
        $_SESSION['usuario'] = $correo;
        header('Location: bienvenido.php'); // Redirigir al usuario a la página de bienvenida
    } else {
        echo "Correo electrónico o contraseña incorrectos";
    }
} else {
    echo "Correo electrónico o contraseña incorrectos";
}

$conn->close();
?>
