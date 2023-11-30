<%-- 
    Document   : gestionUsuarios
    Created on : 28/11/2023, 2:27:56 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../CSS/navegacionCSS/gestionPaciente.css">
    <title>DiaryMedi</title>
</head>
<body>
    <div class="contenedorGeneral1">
        <!--**************NAVEGACIÓN**************-->
        <div class="contenedorNavegacion">
           <ul>
                <li>
                    <a href="index.jsp">
                        <span class="icon"> <ion-icon name="medical-outline"></ion-icon> </span>
                        <span class="tituloDiary">DIARYMEDI</span>
                    </a>
                </li>
                <li>
                    <a href="../../HTML/index.jsp">
                        <span class="icon"> <ion-icon name="home" ></ion-icon> </span>
                        <span class="titulo">Home</span>
                    </a>
                </li>
                <li>
                    <a href="gestionPaciente.jsp">
                        <span class="icon"> <ion-icon name="person"></ion-icon> </span>
                        <span class="titulo">Gestión Paciente</span>
                    </a>
                </li>
                <li>
                    <a href="gestionMedico.html">
                        <span class="icon"> <ion-icon name="people"></ion-icon> </span>
                        <span class="titulo">Gestión Médico</span>
                    </a>
                </li>
                <li>
                    <a href="gestionUsuarios.jsp">
                        <span class="icon"> <ion-icon name="person-circle"></ion-icon> </span>
                        <span class="titulo">Gestión Administrador</span>
                    </a>
                </li>
                <li>
                    <a href="registrarCita.jsp">
                        <span class="icon"> <ion-icon name="calendar"></ion-icon> </span>
                        <span class="titulo">Registrar Agenda</span>
                    </a>
                </li>
                <li>
            </ul>
        </div>
        <!--**************MAIN**************-->
        <div class="contenedorMain">
            <div class="contenedorTopbar">
                <div class="contenedorToggle">
                    <ion-icon name="menu"></ion-icon>
                </div>
                <div class="tituloTopbar">
                    <h2>Paciente</h2>
                </div>
                <div class="user">
                    <img src="../images/pngwing.com.png" alt="">
                </div>
            </div>
            <!--**************LISTA PACIENTES**************-->
            <div class="pacientes">
                <div class="contenedorPacientes">
                    <div class="headerContenedor">
                        <a href="agregarUsuarios.jsp" class="btn">
                            <span>Añadir</span>
                            <span class="iconoBtn"> <ion-icon name="add"></ion-icon> </span>
                        </a>
                    </div>
                    <table id="tabla">
                        <thead>
                            <tr>
                                <td>Tipo Documento</td>
                                <td>Identificación</td>
                                <td>Nombre Usuario</td>
                                <td>Correo</td>
                                <td>Cargo</td>
                                <td>Opción</td>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--**************ICONOS**************-->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <!--**************JAVACRIPT**************-->
    <script src="../../JSS/scripts.js"></script>
    <script src="../../JSS/all.js" type="text/javascript"></script>
    
</body>

</html>