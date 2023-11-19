<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Registro de Usuario</h2>
    <form action="procesar_registro.php" method="post">
        <input type="text" name="nombre" placeholder="Nombre">
        <input type="email" name="correo" placeholder="Correo electrónico">
        <input type="password" name="contrasena" placeholder="Contraseña">
        <input type="submit" value="Registrarse">
    </form>
    <p>¿Ya tienes una cuenta? <a href="login.php">Inicia sesión aquí</a></p>
</body>
</html>