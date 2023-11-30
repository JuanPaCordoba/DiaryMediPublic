/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const xhr = new XMLHttpRequest();
xhr.open('GET', 'http://localhost:3000/user/usuarios-y-pacientes');
xhr.onload = function () {
  if (xhr.status === 200) {
    // Procesar los datos de la respuesta
    const usuarios = JSON.parse(xhr.responseText);

    // Mostrar los datos en la tabla
    const table = document.getElementById('tabla');
    const tableBody = table.querySelector('tbody');
    usuarios.forEach(usuario => {
      const row = document.createElement('tr');

      const tipoDocumentoCell = document.createElement('td');
      tipoDocumentoCell.textContent = usuario.tipodoc;
      row.appendChild(tipoDocumentoCell);

      const identificacionCell = document.createElement('td');
      identificacionCell.textContent = usuario.idUser;
      row.appendChild(identificacionCell);

      const nombreUsuarioCell = document.createElement('td');
      nombreUsuarioCell.textContent = usuario.user;
      row.appendChild(nombreUsuarioCell);

      const correoCell = document.createElement('td');
      correoCell.textContent = usuario.email;
      row.appendChild(correoCell);

      const cargoCell = document.createElement('td');
      cargoCell.textContent = usuario.cargosUsuarios;
      row.appendChild(cargoCell);

      const opcionesCell = document.createElement('td');

      const editarButton = document.createElement('input');
      editarButton.type = 'button';
      editarButton.value = 'Editar';

      // Agregar atributo data con el ID del usuario al botón de editar
      editarButton.dataset.id = usuario.idUser;

      // Agregar event listener para el botón de editar

      opcionesCell.appendChild(editarButton);

      const eliminarButton = document.createElement('input');
      eliminarButton.type = 'button';
      eliminarButton.value = 'Eliminar';
      // Agregar event listener para el botón de eliminar
      eliminarButton.addEventListener('click', () => {
        console.log('Eliminar usuario:', usuario.id);
      });

      opcionesCell.appendChild(eliminarButton);

      row.appendChild(opcionesCell);

      tableBody.appendChild(row);
    });
  } else {
    console.error('Error al obtener datos:', xhr.statusText);
  }
};
xhr.send(); 



