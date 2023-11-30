<%-- 
    Document   : agendarCita
    Created on : 30/11/2023, 7:43:05 a. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../CSS/navegacion/agendarCita.css">
    <title>DiaryMedi</title>
</head>
<body>
    <div class="contenedorGeneral1">
        <!--**************NAVEGACIÓN**************-->
        <div class="contenedorNavegacion">
            <ul>
                <li>
                    <a href="">
                        <span class="icon"> <ion-icon name="medical-outline"></ion-icon> </span>
                        <span class="tituloDiary">DIARYMEDI</span>
                    </a>
                </li>
                <li>
                    <a href="../index.jsp">
                        <span class="icon"> <ion-icon name="home" ></ion-icon> </span>
                        <span class="titulo">Home</span>
                    </a>
                </li>
                <li>
                    <a href="agendarCita.jsp">
                        <span class="icon"> <ion-icon name="calendar"></ion-icon> </span>
                        <span class="titulo">Agendar Citas</span>
                    </a>
                </li>
                <li>
                    <a href="historialCitas.jsp">
                        <span class="icon"> <ion-icon name="documents"></ion-icon> </span>
                        <span class="titulo">Historial Citas</span>
                    </a>
                </li>
                <li>
                    <a href="documentos.jsp">
                        <span class="icon"> <ion-icon name="document-attach"></ion-icon> </span>
                        <span class="titulo">Documentos</span>
                    </a>
                </li>
            </ul>
        </div>
        <!--**************MAIN**************-->
        <div class="contenedorMain">
            <div class="contenedorTopbar">
                <div class="contenedorToggle">
                    <ion-icon name="menu"></ion-icon>
                </div>
                <div class="tituloTopbar">
                    <h2>Agendar Citas</h2>
                </div>
                <div class="user">
                    <img src="../images/pngwing.com.png" alt="">
                </div>
            </div>
            <!--**************AGREGAR PACIENTE**************-->
            <div class="contenedorFormularioAgendarCitas">   
                <form action="" id="formulario">
                    <div class="AgendarCitas">
                        <div class="inputBox" id="inputIdentificacion">
                            <span class="labels" id="labelId">Identificación</span>
                            <input type="text" placeholder="Identificación" required id="identificacion" name="identificacion" maxlength="10" oninput="validarNumero()">
                        </div>        

                        <div class="inputEstado">
                                <div class="estadoUsuario">Especialidad</div>
                                <select class="estadosUsuarios" id="especialidad" name="estadosUsuarios">
                                    <option value="" disabled selected>Seleccione una opcion</option>
                                    <option value="Medicina General">Medicina General</option>
                                    <option value="Psicologia">Psicologia</option>

                                </select>
                            </div>
                            <div class="inputEstado">
                                <div class="estadoUsuario">Medico</div>
                                <select class="estadosUsuarios" id="estadosUsuarios" name="estadosUsuarios">
                                    <option value="" disabled selected>Seleccione una opcion</option>

                                </select>
                            </div>
                        <div id="inputHorario" class="inputHorario">
                            <div class="tipoHorario">Horario</div>
                            <select class="opcionesHorario" id="opcionesHorario">
                                <option value="" disabled selected>Seleccione una opcion</option>
                            </select>
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
    <script src="../../JS/scripts.js"></script>
    <script src="../../JSS/agendar.js" type="text/javascript"></script>
</body>
</html>
