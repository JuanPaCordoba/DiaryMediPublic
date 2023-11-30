<%-- 
    Document   : registrarCita
    Created on : 28/11/2023, 7:11:26 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../CSS/navegacionCSS/registrarCita.css">
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
                        <h2>Registro de Agenda</h2>
                    </div>
                    <div class="user">
                        <img src="../images/pngwing.com.png" alt="">
                    </div>
                </div>
                <!--**************ADJUNTAR**************-->
                <div class="contenedorRegistrarCitas">
                    <form action="" id="formulario" action="http://localhost:3000/cita/add" method="POST">
                        <div class="registrarCitas">
                            <div class="inputEstado">
                                <div class="estadoUsuario">Especialidad</div>
                                <select class="estadosUsuarios" id="especialidad" name="estadosUsuarios">
                                    <option value="" disabled selected>Seleccione una opcion</option>
                                    <option value="Medicina General">Medicina General</option>
                                    <option value="Psicologia">Psicologia</option>

                                </select>
                            </div><br>
                            <div class="inputEstado">
                                <div class="estadoUsuario">Medico</div>
                                <select class="estadosUsuarios" id="estadosUsuarios" name="estadosUsuarios">
                                    <option value="" disabled selected>Seleccione una opcion</option>

                                </select>
                            </div><br>        
                            <div class="inputAgenda">
                                <span class="agenda">Agenda</span>
                                <div class="add-event">
                                    <label for="event-input">Fecha y Hora:</label>
                                    <input type="datetime-local" id="event-input" name="fechaHora" required min="">
                                </div>
                            </div><br>

                            <div class="botonAgenda">
                                <input type="submit" value="Registrar Agenda" id="botonRegistrarCitas">
                            </div>
                    </form>
                </div>
            </div>
        </div>
        <!--**************ICONOS**************-->
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        <!--**************ALERTAS**************-->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!--**************JAVACRIPT**************-->
        <script src="../../JSS/scripts.js"></script>
        <script src="../../JSS/registrocitas.js" type="text/javascript"></script>
    </body>

</html>
