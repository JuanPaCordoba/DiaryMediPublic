/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
document.addEventListener('DOMContentLoaded', function () {
    // Manejar el cambio en el combo de especialidades
    document.getElementById('especialidad').addEventListener('change', function () {
        // Obtener el valor seleccionado de la especialidad
        const especialidadSeleccionada = this.value;

        // Realizar una solicitud al servidor para obtener los médicos por especialidad
        fetch(`http://localhost:3000/user/por-especialidad?especialidad=${encodeURIComponent(especialidadSeleccionada)}`)
                .then(response => response.json())
                .then(data => {
                    // Limpiar el combo de estadosUsuarios
                    const estadosUsuariosSelect = document.getElementById('estadosUsuarios');
                    estadosUsuariosSelect.innerHTML = '<option value="" disabled selected>Seleccione un médico</option>';

                    // Agregar las opciones al combo de estadosUsuarios
                    data.forEach(medicoData => {
                        const medico = medicoData.usuario; // Extraer la información del usuario

                        const option = document.createElement('option');
                        option.value = medico.idUser; // Aquí guardamos el idUser en el value
                        option.textContent = `${medico.nombres} ${medico.apellidos}`;
                        estadosUsuariosSelect.appendChild(option);
                        console.log(medico.idUser);
                    });
                })
                .catch(error => console.error('Error al obtener los médicos:', error));
    });

    // Manejar el evento de cambio en el combo de estadosUsuarios
    document.getElementById('estadosUsuarios').addEventListener('change', function () {
        const idUserSeleccionado = this.value;
        console.log(idUserSeleccionado);

        document.getElementById('formulario').addEventListener('submit', function (e) {
            e.preventDefault();

            // Obtener la fecha y hora en el formato correcto
            const fechaHora = new Date(document.getElementById('event-input').value);


            // Crear un objeto con los datos del formulario
            const formData = {
                idMedico: idUserSeleccionado,
                fechaHora: fechaHora
            };

            // Realizar la solicitud POST al backend
            fetch('http://localhost:3000/cita/add', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(formData)
            })
                    .then(response => response.json())
                    .then(data => {
                        console.log(data);
                        swal('Genial!', 'Cita Registrada.');
                document.getElementById('formulario').reset();
                        // Puedes realizar otras acciones después de registrar la cita si es necesario
                    })
                    .catch(error => {
                        console.error('Error al registrar la cita:', error);
                        swal('Genial!', 'Cita Registrada.');
                document.getElementById('formulario').reset();
                    });
        });
    });


});
