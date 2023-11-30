/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
document.getElementById('registroForm').addEventListener('submit', function (e) {
    e.preventDefault(); // Previene el envío del formulario por defecto

    // Obtén los datos del formulario
    const formData = new FormData(this);

    // Realiza una solicitud POST al backend
    fetch('http://localhost:3000/user/add', {
        method: 'POST',
        body: JSON.stringify(Object.fromEntries(formData)), // Convierte los datos en un objeto JSON
        headers: {
            'Content-Type': 'application/json'
        }
    })
    
            .then(response => response.json())
            .then(data => {
                // Procesa la respuesta del backend (opcional)
                console.log(data);
            })
            .catch(error => {
                // Maneja errores (opcional)
                console.error(error);
            });
             document.getElementById('registroForm').reset();
});
