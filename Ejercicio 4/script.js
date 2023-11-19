$(document).ready(function () {
    var respuesta = Math.floor(Math.random() * 100) + 1; // Genera un número aleatorio entre 1 y 100
    var intentos = 0;

    function verificarAdivinanza() {
        var numero = parseInt(prompt("Adivina el número (entre 1 y 100):"));

        if (numero === respuesta) {
            alert("¡Felicitaciones! ¡Has adivinado el número en " + intentos + " intentos!");
        } else if (numero < respuesta) {
            alert("El número es mayor. Intenta nuevamente.");
            intentos++;
            verificarAdivinanza();
        } else {
            alert("El número es menor. Intenta nuevamente.");
            intentos++;
            verificarAdivinanza();
        }
    }

    verificarAdivinanza();
});