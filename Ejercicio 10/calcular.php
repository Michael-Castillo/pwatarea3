<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h1>Resultados</h1>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $apellidos = $_POST["apellido"];
    $nombres = $_POST["nombre"];
    $notas1 = $_POST["nota1"];
    $notas2 = $_POST["nota2"];
    $notas3 = $_POST["nota3"];

    $numAlumnos = count($apellidos);

    $promedios = array();

    for ($i = 0; $i < $numAlumnos; $i++) {
        $promedio = number_format(($notas1[$i] + $notas2[$i] + $notas3[$i]) / 3, 2);
        $promedios[] = $promedio;
        echo "El promedio de " . $nombres[$i] . " " . $apellidos[$i] . " es: " . $promedio . "<br>";
    }

    $promedioGeneral = number_format(array_sum($promedios) / $numAlumnos, 2);
    echo "El promedio general de todos los alumnos es: " . $promedioGeneral;
}
?>

</body>
</html>