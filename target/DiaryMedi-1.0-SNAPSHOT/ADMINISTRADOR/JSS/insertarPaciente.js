/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
document.getElementById('registroForm').addEventListener('submit', function (e) {
  // Prevent default form submission
  e.preventDefault();

  // Get form data
  const formData = new FormData(this);

  // Get the value of the cargosUsuarios select element
  const cargosUsuarios = document.getElementById('cargo').value;
  const listaDocumentos = document.getElementById('listaDocumentos').value;
  const listaGeneros = document.getElementById('listaGeneros').value;
  const estadosUsuarios = document.getElementById('estadosUsuarios').value;
  const gpsan = document.getElementById('opcionesTipoSangre').value;
  const dire = document.getElementById('dirección').value;
  const conEmer = document.getElementById('contactoEmergencia').value;
  const numse = document.getElementById('seguroMedico').value;
  const alergias = document.getElementById('alergias').value;

  console.log(gpsan);
  console.log(cargosUsuarios);
  // Add the cargosUsuarios value to the form data
  formData.append('cargosUsuarios', cargosUsuarios);
  formData.append('tipodoc', listaDocumentos);
  formData.append('genero', listaGeneros);
  formData.append('estado', estadosUsuarios);


 console.log(gpsan);
  const url = `http://localhost:3000/user/add?gposan=${encodeURIComponent(gpsan)}&dire=${encodeURIComponent(dire)}&conEmer=${encodeURIComponent(conEmer)}&numse=${encodeURIComponent(numse)}&alergias=${encodeURIComponent(alergias)}`;
  // Send POST request to the backend
  fetch(url, {
    method: 'POST',
    body: JSON.stringify(Object.fromEntries(formData)), // Convert form data to JSON
    headers: {
      'Content-Type': 'application/json'
    }
  })
 
    .then(response => response.json()) // Process backend response (optional)
    .then(data => {
      console.log(data);
      document.getElementById('registroForm').reset();
    })
    .catch(error => console.error(error));
});

