/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
document.getElementById('formularioAutenticacion').addEventListener('submit', function(event) {
            event.preventDefault(); // Evitar el envío del formulario por defecto

            // Realizar la solicitud al backend
            fetch('http://localhost:3000/user/login', {
                method: 'POST',
                body: new FormData(this), // Envía los datos del formulario
            })
            .then(response => response.text())
            .then(data => {
                // Mostrar el resultado en el div resultadoAutenticacion
                const resultadoDiv = document.getElementById('resultadoAutenticacion');
                resultadoDiv.textContent = data;
                window.location.href = 'paciente.jsp';// Mostrar el texto directamente
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Ocurrió un error al procesar la solicitud.');
            });
        });

