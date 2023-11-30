/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



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

    document.getElementById('estadosUsuarios').addEventListener('change', function () {
        // Obtener el valor seleccionado de la especialidad
        const idMedicoSeleccionado = this.value;

        // Realizar una solicitud al servidor para obtener las fechas disponibles para el médico
        fetch(`http://localhost:3000/cita/consultarCita/${encodeURIComponent(idMedicoSeleccionado)}`)
                .then(response => response.json())
                .then(data => {
                    // Limpiar el combo de opcionesHorario
                    const opcionesHorarioSelect = document.getElementById('opcionesHorario');
                    opcionesHorarioSelect.innerHTML = '<option value="" disabled selected>Seleccione una fecha</option>';

                    // Agregar las opciones al combo de opcionesHorario
                    data.forEach(cita => {
                        const option = document.createElement('option');
                        option.value = cita.id; // Suponiendo que cada cita tiene un campo 'id'
                        option.textContent = `${cita.fechaHora}`;
                        opcionesHorarioSelect.appendChild(option);
                        console.log(cita.id);
                    });
                })
                .catch(error => console.error('Error al obtener las fechas de citas:', error));
    });

    document.getElementById('opcionesHorario').addEventListener('change', function () {
        // Obtener el valor seleccionado (idCita) de opcionesHorario
        const idCitaSeleccionada = this.value;
        console.log(idCitaSeleccionada);
        
         document.getElementById('formulario').addEventListener('submit', function (e) {
    e.preventDefault();
        // Obtener el idPaciente (podrías obtenerlo de algún otro lugar, por ejemplo, de un input en tu formulario)
        const idPaciente = document.getElementById('identificacion').value;
        console.log(idPaciente);
        // Realizar la solicitud para actualizar el estado y el idPaciente
        fetch(`http://localhost:3000/cita/actualizarCita/${encodeURIComponent(idCitaSeleccionada)}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                estado: 'Apartada',
                idPaciente: idPaciente
            })
        })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Error al actualizar la cita');
                    }
                    return response.json();
                })
                .then(data => {
                    console.log(data);

                swal('Genial!', 'Cita Apartada.');
                document.getElementById('formulario').reset();

                    // Puedes realizar otras acciones después de actualizar la cita si es necesario
                })
                .catch(error => {
                    console.error('Error al actualizar la cita:', error);
                    alert('Error al actualizar la cita. Por favor, inténtelo de nuevo.');
                });
    });
});
});
    