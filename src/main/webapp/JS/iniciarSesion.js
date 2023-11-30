/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
document.getElementById('formularioAutenticacion').addEventListener('submit', function (e) {
  // Prevent default form submission
  e.preventDefault();

  const user = document.getElementById('nombreUsuario').value;
  const pass = document.getElementById('contrasena').value;
  console.log(user + pass);

  const url = `http://localhost:3000/user/login?user=${encodeURIComponent(user)}&pass=${encodeURIComponent(pass)}`;

  // Send login request to the server
  fetch(url, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    }
  })
    .then(response => response.json())
    .then(data => {
      if (data.success) {
        // Check the user's role
       
      } else {
        alert('Bienvenido' + data.nombres);
         const role = data.cargosUsuarios;

        if (role === 'Administrador') {
          // Redirect to the administrator page
          window.location.href = 'ADMINISTRADOR/HTML/index.jsp';
        } else {
          // Redirect to the default page for other roles
          window.location.href = 'default.jsp';
        }
      }
    })
    .catch(error => {
      console.error('Error logging in:', error);
    });
});

