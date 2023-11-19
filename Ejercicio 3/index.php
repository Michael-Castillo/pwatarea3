<?php
session_start(); // Inicia la sesión

if (!isset($_SESSION['visitas'])) {
    $_SESSION['visitas'] = 1;
} else {
    $_SESSION['visitas']++;
}

$visitas = $_SESSION['visitas'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 3</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Bienvenido de nuevo</h1>
    <p>Número de visitas: <?php echo $visitas; ?></p>
</body>
</html>