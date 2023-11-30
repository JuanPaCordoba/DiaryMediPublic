/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

fetch('http://localhost:3000/user/usuarios-y-pacientes', { mode: 'cors' })
    .then(response => response.json())
    .then(data => {
        const userTableBody = document.getElementById('userTableBody');

        // Itera sobre los datos y crea filas para la tabla
        data.forEach(item => {
            const row = document.createElement('tr');

            // Crea celdas para cada campo
            const userNameCell = document.createElement('td');
            userNameCell.textContent = item.usuario.user;  // Accede a la propiedad 'user' dentro de 'usuario'
            row.appendChild(userNameCell);

            const passCell = document.createElement('td');
            passCell.textContent = item.usuario.pass;  // Accede a la propiedad 'pass' dentro de 'usuario'
            row.appendChild(passCell);

            const roleCell = document.createElement('td');
            roleCell.textContent = item.usuario.cargo;  // Accede a la propiedad 'cargo' dentro de 'usuario'
            row.appendChild(roleCell);

            const statusCell = document.createElement('td');
            const statusSpan = document.createElement('span');
            statusSpan.textContent = 'Activo';  // Puedes personalizar el estado según tus requisitos
            statusSpan.className = 'statusActive';
            statusCell.appendChild(statusSpan);
            row.appendChild(statusCell);

            // Agrega la fila a la tabla
            userTableBody.appendChild(row);
        });
    })
    .catch(error => {
        console.error('Error al obtener los datos: ' + error);
    });