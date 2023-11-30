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

  console.log(cargosUsuarios);
  // Add the cargosUsuarios value to the form data
  formData.append('cargosUsuarios', cargosUsuarios);
  formData.append('tipodoc', listaDocumentos);
  formData.append('genero', listaGeneros);
  formData.append('estado', estadosUsuarios);

 console.log(formData);
  // Send POST request to the backend
  fetch('http://localhost:3000/user/add', {
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