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

            editarButton.addEventListener('click', () => {
                // Recupera los datos del usuario del servidor
                const userId = editarButton.dataset.id;
                fetch(`http://localhost:3000/user/find/${userId}`)
                        .then((response) => response.json())
                        .then((userData) => {
                            // Abre el formulario editar
                            const editarWindow = window.open(`editar.jsp?userId=${userId}`, '_blank');

                            // Espera a que la nueva ventana esté cargada
                            editarWindow.addEventListener('load', () => {
                                // Carga los datos en el formulario
                                const idUserInput = editarWindow.document.getElementById('identificacion');
                                idUserInput.value = userData.idUser;
                                const idNombreInput = editarWindow.document.getElementById('nombres');
                                idNombreInput.value = userData.nombres;
                                const idApeInput = editarWindow.document.getElementById('apellidos');
                                idApeInput.value = userData.apellidos;
                                const idEmaInput = editarWindow.document.getElementById('corre');
                                idEmaInput.value = userData.email;
                                const idPassInput = editarWindow.document.getElementById('password');
                                idPassInput.value = userData.pass;
                                console.log(userData.pass);
                                const idUseriInput = editarWindow.document.getElementById('nombreUsuario');
                                idUseriInput.value = userData.user;
                                const idTelefonoInput = editarWindow.document.getElementById('telefono');
                                idTelefonoInput.value = userData.telefono;
                                const listaGenerosInput = editarWindow.document.getElementById('listaGeneros');
                                const listaTipo = editarWindow.document.getElementById('listaDocumentos');
                                const listaestados = editarWindow.document.getElementById('estadosUsuarios');
                                console.log(userData.telefono);
                                for (const option of listaGenerosInput.options) {
                                    if (option.value === userData.genero) {
                                        option.selected = true;
                                        break;
                                    }
                                }
                                for (const option of listaTipo.options) {
                                    if (option.value === userData.tipodoc) {
                                        option.selected = true;
                                        break;
                                    }
                                }
                                for (const option of listaestados.options) {
                                    if (option.value === userData.estado) {
                                        option.selected = true;
                                        break;
                                    }
                                }
                            });
                        });
            });
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


