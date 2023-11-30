/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const form = document.getElementById('registroForm');
form.addEventListener('submit', (event) => {
  event.preventDefault();

  const formData = new FormData(form);
  const xhr = new XMLHttpRequest();
  xhr.open('PUT', 'http://localhost:3000/user/update/' + formData.get('idUser'));
  xhr.setRequestHeader('Content-Type', 'application/json');

  xhr.onload = () => {
    if (xhr.status === 200) {
      console.log('User updated successfully');
    } else {
      console.error('Error updating user:', xhr.statusText);
    }
  };

  xhr.send(JSON.stringify({
    idUser: formData.get('idUser'),
    tipodoc: formData.get('tipodoc'),
    user: formData.get('nombreUsuario'),
    pass: formData.get('password'),
    email: formData.get('corre'),
    telefono: formData.get('telefono'),
    nombres: formData.get('nombres'),
    apellidos: formData.get('apellidos'),
    cargosUsuarios: formData.get('cargosUsuarios'),
    genero: formData.get('listaGeneros'),
    estado: formData.get('estadosUsuarios')
  }));
});

