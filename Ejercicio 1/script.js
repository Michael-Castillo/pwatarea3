// Obtener todos los elementos del menú desplegable
var dropdowns = document.getElementsByClassName("dropdown");

// Iterar sobre los elementos y agregar un evento de clic a cada uno
for (var i = 0; i < dropdowns.length; i++) {
  dropdowns[i].addEventListener("click", function (event) {
    event.stopPropagation(); // Evitar que el evento se propague a los elementos padre
    this.classList.toggle("active");
    var dropdownContent = this.querySelector(".dropdown-content");
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });

  // Agregar un evento de clic al documento para ocultar el menú desplegable cuando se hace clic en cualquier otro lugar
  document.addEventListener("click", function (event) {
    var dropdowns = document.getElementsByClassName("dropdown");
    for (var i = 0; i < dropdowns.length; i++) {
      var dropdownContent = dropdowns[i].querySelector(".dropdown-content");
      if (dropdownContent.style.display === "block") {
        dropdownContent.style.display = "none";
        dropdowns[i].classList.remove("active");
      }
    }
  });
}
