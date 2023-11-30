//*************NAVEGACIÓN DASHBOARD*************//
let list = document.querySelectorAll(".contenedorNavegacion li");

function activeLink(){
    list.forEach((item) => {
        item.classList.remove("hovered");
    });
    this.classList.add("hovered");
}

list.forEach((item) => item.addEventListener("mouseover", activeLink));

//Menu
let toggle = document.querySelector(".contenedorToggle");
let navegacion = document.querySelector(".contenedorNavegacion");
let main = document.querySelector(".contenedorMain");

toggle.onclick = function(){
    navegacion.classList.toggle("active");
    main.classList.toggle("active");
}

function displayFileInfo() {
    var fileInput = document.getElementById('fileInput');
    var fileInfo = document.getElementById('fileInfo');

    var file = fileInput.files[0];
}

//*************AGENDAMIENTO DE HORARIO MEDICO*************//
function addEvent() {
    var eventInput = document.getElementById('event-input');
    var eventList = document.getElementById('event-list');

    if (eventInput.value !== '') {
        var listItem = document.createElement('li');
        listItem.innerHTML = `
            ${eventInput.value}
            <button onclick="removeEvent(this)">Eliminar</button>
        `;
        eventList.appendChild(listItem);
        eventInput.value = '';
    }
}

function removeEvent(button) {
    var listItem = button.parentNode;
    var eventList = document.getElementById('event-list');
    eventList.removeChild(listItem);
}


//**************FUNCION PARA ENLISTAR HORIZONTALMENTE*************//
document.addEventListener("DOMContentLoaded", function () {

    var contenedor = document.getElementById("add-event");
    var lista = document.getElementById("event-list");
  
    lista.style.display = "flex";
    lista.style.listStyle = "none";
    lista.style.flexWrap = "wrap";
  
    var elementosLista = lista.getElementsByTagName("li");
    for (var i = 0; i < elementosLista.length; i++) {
      elementosLista[i].style.marginRight = "10px";
    }
  
    function ajustarLista() {
      if (contenedor.offsetWidth < lista.scrollWidth) {
        lista.style.flexDirection = "column";
      } else {
        lista.style.flexDirection = "row";
      }
    }

    ajustarLista();
    window.addEventListener("resize", ajustarLista);
  });

//*************OPCIONES EXTRA CARGOS*************//
const listaDesplegable = document.getElementById("cargosUsuarios");
const opcionesExtrasPaciente = document.getElementById("opcionExtraPaciente");
const opcionesExtrasMedico = document.getElementById("opcionExtraMedico");

listaDesplegable.addEventListener("change", function () {
  if (listaDesplegable.value === "paciente") {
    opcionesExtrasPaciente.style.display = "block";
    opcionesExtrasMedico.style.display = "block";
  } else {
    opcionesExtrasPaciente.style.display = "none";
    opcionesExtrasMedico.style.display = "none";
  }

  if (listaDesplegable.value === "medico") {
    opcionesExtrasMedico.style.display = "block";
  }else {
    opcionesExtrasMedico.style.display = "none";
  }
});

//*************VALIDACIÓN DE CAMPOS REGISTROS*************//
function validarNumero(){
  var id = document.getElementById('identificacion');
  var valor = id.value;

  if (/[^0-9]/.test(valor)) {
    swal('Oops...', 'Solo se permiten valores numéricos.', 'error');
    id.value = valor.replace(/[^0-9]/g, '');
  }
  if (valor.startsWith('0')) {
    swal('Oops...', 'No se permite que el número comience con 0.', 'error');
    id.value = '';
  }
}
function validarTelefono(){
  var tele = document.getElementById('telefono');
  var valor = tele.value;

  if (/[^0-9]/.test(valor)) {
    swal('Oops...', 'Solo se permiten valores numéricos.', 'error');
    tele.value = valor.replace(/[^0-9]/g, '');
  }
  if (valor.startsWith('0')) {
    swal('Oops...', 'No se permite que el número comience con 0.', 'error');
    tele.value = '';
  }
}

var passwordInput = document.getElementById('password');
var confirmPasswordInput = document.getElementById('confirmPassword');
var message = document.getElementById('message');

function validatePassword() {
  var password = passwordInput.value;
  var confirmPassword = confirmPasswordInput.value;

  if (password === confirmPassword) {
    message.style.color = 'green';
    message.innerHTML = 'Las contraseñas coinciden.';
  }else{
    message.style.color = 'red';
    message.innerHTML = 'Las contraseñas no coinciden.';
  }

  if(password.value === '' && confirmPassword.value === ''){
    message.display = 'block';
  }
}
  passwordInput.addEventListener('input', validatePassword);
  confirmPasswordInput.addEventListener('input', validatePassword);

function validarLetras() {
  var nombre = document.getElementById('nombres');
  var apellido = document.getElementById('apellidos');
  var enfermedades = document.getElementById('enfermedad');

  if (/[^A-Za-zñÑ\s]/.test(nombre.value)) {
    swal('Oops...','Solo debe ingresar letras.', 'error');
      nombre.value = nombre.value.replace(/[^a-zA-Z]/g, '');
  }
  if (/[^A-Za-zñÑ\s]/.test(apellido.value)) {
    swal('Oops...','Solo debe ingresar letras.', 'error');
    apellido.value = apellido.value.replace(/[^a-zA-Z]/g, '');
  }
  if (/[^A-Za-zñÑ\s]/.test(enfermedades.value)) {
    swal('Oops...','Solo debe ingresar letras.', 'error');
    enfermedades.value = enfermedades.value.replace(/[^a-zA-Z]/g, '');
  }
}

function validarInicio() {
  var input = document.getElementById('nombreUsuario');
  var valor = input.value;

  if (valor.startsWith('0')) {
    swal('Oops...','No se permite iniciar con 0.', 'error');
    input.value = '';
  }
}

function validarFormularios() {
  var formulario = document.getElementById('formulario');
  var comboTipoDoc = document.getElementById('listaDocumentos');
  var comboGenero = document.getElementById('listaGeneros');
  var comboEstado = document.getElementById('estadosUsuarios');
  if (formulario.checkValidity()) {
      if(comboTipoDoc.value === ''){
        swal('Oops...','Debe seleccionar un Tipo de Documento.', 'error');
      }else{
        if(comboGenero.value === ''){
          swal('Oops...','Debe seleccionar un Genero.', 'error');
        }else{{
            if(comboEstado.value === ''){
              swal('Oops...','Debe seleccionar un Estado.', 'error');
            }
          }
        }
        swal('Genial!','Formulario enviado correctamente.','success');
        formulario.reset();
      }
  } else {
      swal('Oops','Formulario no valido.','error');
      formulario.reset();
  }
}

formulario.addEventListener('submit', (e) => {
  e.preventDefault();
  validarFormularios();
});

