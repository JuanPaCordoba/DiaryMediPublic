/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const data = {
  user: "dasdsad",
  pass: "sierra123",
  role: "Paciente",
  status: "Activo"
};

window.location.href = "http://localhost:3000/user/add?user=" + data.user + "&pass=" + data.pass + "&role=" + data.role + "&status=" + data.status;