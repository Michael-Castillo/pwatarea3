document.getElementById("contact-form").addEventListener("submit", function (event) {
  event.preventDefault(); // Evita que el formulario se envíe automáticamente

  // Obtén los valores de los campos de entrada
  var name = document.getElementById("name").value;
  var email = document.getElementById("email").value;
  var message = document.getElementById("message").value;

  // Realiza la validación
  if (name === "" || email === "" || message === "") {
    alert("Por favor, completa todos los campos del formulario.");
    return;
  }

  alert("El formulario se ha enviado correctamente.");
});