/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

  document.getElementById('formulario').addEventListener('submit', function (e) {
    e.preventDefault(); // Prevenir la acción predeterminada del formulario

    // Obtener los valores del formulario
    const especialidad = document.getElementById('especialidad').value;
    const medicoSeleccionado = document.getElementById('estadosUsuarios').value;
    const fechaHora = document.getElementById('event-input').value;

    // Validar que se hayan seleccionado valores para especialidad y médico
    if (!especialidad || !medicoSeleccionado) {
      alert('Por favor, seleccione una especialidad y un médico.');
      return;
    }


    // Crear un objeto con los datos del formulario
    const formData = {
      especialidad: especialidad,
      medico: medicoSeleccionado,
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
       swal('Genial!', 'Cita Apartada.');
                document.getElementById('formulario').reset();
        // Puedes realizar otras acciones después de registrar la cita si es necesario
      })
      .catch(error => {
        swal('Genial!', 'Cita Apartada.');
                document.getElementById('formulario').reset();
      });
  });

