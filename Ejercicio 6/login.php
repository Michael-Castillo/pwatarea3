<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Iniciar Sesión</h2>
    <form action="procesar_login.php" method="post">
        <input type="email" name="correo" placeholder="Correo electrónico">
        <input type="password" name="contrasena" placeholder="Contraseña">
        <input type="submit" value="Iniciar sesión">
    </form>
    <p>¿No tienes una cuenta? <a href="registro.php">Regístrate aquí</a></p>
</body>
</html>