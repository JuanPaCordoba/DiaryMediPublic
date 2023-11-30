let list = document.querySelectorAll(".navegacion li");

function activeLink() {
  list.forEach((item) => {
    item.classList.remove("hovered");
  });
  this.classList.add("hovered");
}

list.forEach((item) => item.addEventListener("mouseover", activeLink));

//opcionesExtras
const listaDesplegable = document.getElementById("listaUsuarios");
//opcionesExtrasPaciente
const opcionesExtrasPaciente1 = document.getElementById("opcioneExtrasUsuarioPaciente");
const opcionesExtrasPaciente2 = document.getElementById("opcionesExtrasUsuarioPaciente2");
//opcionesExtrasMedico
const opcionesExtrasMedico1 = document.getElementById("opcionesExtrasUsuarioMedico1");
const opcionesExtrasMedico2 = document.getElementById("opcionesExtrasUsuarioPaciente2");

listaDesplegable.addEventListener("change", function () {
  if (listaDesplegable.value === "usuarioPaciente") {
    opcionesExtrasPaciente1.style.display = "block";
    opcionesExtrasPaciente2.style.display = "block";
  } else {
    opcionesExtrasPaciente1.style.display = "none";
    opcionesExtrasPaciente2.style.display = "none";
    }
});

// Menu Toggle
let toggle = document.querySelector(".toggle");
let navegacion = document.querySelector(".navegacion");
let main = document.querySelector(".main");

toggle.onclick = function () {
  navegacion.classList.toggle("active");
  main.classList.toggle("active");
};

//VALIDACION



const expresiones = {
	usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
	nombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
	password: /^.{4,12}$/, // 4 a 12 digitos.
	correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	telefono: /^\d{7,14}$/ // 7 a 14 numeros.
};





