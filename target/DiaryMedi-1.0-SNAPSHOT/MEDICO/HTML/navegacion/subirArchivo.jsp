<%-- 
    Document   : subirArchivo
    Created on : 30/11/2023, 9:59:14 a. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../CSS/navegacion/adjuntarArchivo.css">
    <title>DiaryMedi</title>
</head>
<body>
    <div class="contenedorGeneral1">
        <!--**************NAVEGACIÓN**************-->
        <div class="contenedorNavegacion">
            <ul>
                <li>
                    <a href="#">
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
                    <a href="agenda.jsp">
                        <span class="icon"> <ion-icon name="person"></ion-icon> </span>
                        <span class="titulo">Ver Agenda</span>
                    </a>
                </li>
                <li>
                    <a href="historialPaciente.jsp">
                        <span class="icon"> <ion-icon name="people"></ion-icon> </span>
                        <span class="titulo">Historial Pacientes</span>
                    </a>
                </li>
                <li>
                    <a href="adjuntarArchivo.jsp">
                        <span class="icon"> <ion-icon name="duplicate"></ion-icon> </span>
                        <span class="titulo">Adjuntar Archivo</span>
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
                    <h2>Subir Archivo</h2>
                </div>
                <div class="user">
                    <img src="../images/pngwing.com.png" alt="">
                </div>
            </div>
            <!--**************CRUD SUBIR ARCHIVO**************-->
            <div class="contenedorSubirArchivo">
                <form action="" id="formulario" action="http://localhost:3000/pdf/upload" method="POST" enctype="multipart/form-data">
                    <div class="subirArchivo">
                        <div class="inputBox" id="inputIdentificacion">
                            <span class="labels" id="labelId">Identificacion Del Paciente</span>
                            <input type="text" placeholder="Identificación Del Paciente" required id="idPaciente" name="userId" maxlength="10" oninput="validarNumero()">
                        </div>               
                        <div class="inputBox" id="inputCorreo">
                            <span class="labels">Identificación Del Medico</span>
                            <input type="text" placeholder="Identificación Del Medico" required id="idMedico" name="medicoId" maxlength="35">
                        </div>  
                        <div class="inputBox">
                            <span class="labels">Archivo</span>
                            <input id="fileInput" type="file" name="pdf_data" accept=".pdf"/>
                            <div id="fileInfo"></div>
                        </div>
                        <div class="botonSubir">
                            <input type="submit" value="Registrar Pdf" id="botonRegistrarCitas">
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
    <script src="../../JSS/subir.js" type="text/javascript"></script>
</body>
</html>
