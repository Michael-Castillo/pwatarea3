<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora de promedios</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h1>Calculadora de promedios</h1>

<form method="post" action="index.php">
    <label for="cantidad">Cantidad de alumnos:</label>
    <input type="number" name="cantidad"><br>
    <input type="submit" value="Enviar">
</form>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["cantidad"])) {
    $cantidadAlumnos = $_POST["cantidad"];
    ?>

    <h2>Ingrese los datos de los alumnos</h2>

    <form method="post" action="calcular.php">
        <?php
        for ($i = 1; $i <= $cantidadAlumnos; $i++) {
            ?>
            <h3>Alumno <?php echo $i; ?></h3>
            <label for="apellido">Apellido:</label>
            <input type="text" name="apellido[]"><br>
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre[]"><br>
            <label for="nota1">Nota 1:</label>
            <input type="number" name="nota1[]"><br>
            <label for="nota2">Nota 2:</label>
            <input type="number" name="nota2[]"><br>
            <label for="nota3">Nota 3:</label>
            <input type="number" name="nota3[]"><br>
            <?php
        }
        ?>
        <input type="submit" value="Calcular promedios">
    </form>

    <?php
}
?>
</body>
</html>