/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
  document.getElementById('formulario').addEventListener('submit', function (e) {
    e.preventDefault();// Prevent the default form submission

  const formData = new FormData(this);

  fetch('http://localhost:3000/pdf/upload', {
    method: 'POST',
    body: formData
  })
  .then(response => response.json())
  .then(data => {
    if (data.success) {
      // Show an alert
      window.alert('PDF subido correctamente');
      // Clear the form
        document.getElementById('formulario').reset();
    } else {
      // Show an alert
      window.alert('Error al subir el PDF: ' + data.error);
      document.getElementById('formulario').reset();
    }
  })
  .catch(error => {
    console.error('Error uploading PDF:', error);
    document.getElementById('formulario').reset();
  });
});

