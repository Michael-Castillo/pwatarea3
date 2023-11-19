<?php
// Array para almacenar mensajes de error
$errores = array();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST["nombre"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];

    // Verificar si las contraseñas coinciden
    if ($password !== $confirm_password) {
        $errores[] = "Las contraseñas no coinciden";
    }

    // Si no hay errores, proceder con la validación adicional
    if (empty($errores)) {
        // Conexión a la base de datos (reemplaza 'localhost', 'usuario', 'contraseña' y 'basededatos' con tus propios valores)
        $conexion = new mysqli('localhost', 'root', '', 'bd_tarea3');

        // Verificar la conexión
        if ($conexion->connect_error) {
            die("Error de conexión: " . $conexion->connect_error);
        }

        // Verificar si el usuario ya está ingresado en la base de datos
        $consulta = "SELECT * FROM formulario WHERE email='$email'";
        $resultado = $conexion->query($consulta);

        if ($resultado->num_rows > 0) {
            $errores[] = "El correo electrónico ya está registrado";
        }

        // Si no hay errores, proceder con el registro del usuario
        if (empty($errores)) {
            // Insertar los datos del usuario en la base de datos
            $sql = "INSERT INTO formulario (nombre, email, password) VALUES ('$nombre', '$email', '$password')";

            if ($conexion->query($sql) === TRUE) {
                echo "Usuario registrado exitosamente";
            } else {
                echo "Error al registrar al usuario: " . $conexion->error;
            }

            // Cerrar la conexión a la base de datos
            $conexion->close();
        } else {
            // Mostrar los mensajes de error
            foreach ($errores as $error) {
                echo $error . "<br>";
            }
        }
    } else {
        // Mostrar los mensajes de error
        foreach ($errores as $error) {
            echo $error . "<br>";
        }
    }
}
?>