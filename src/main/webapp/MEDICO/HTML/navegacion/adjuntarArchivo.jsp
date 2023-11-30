<%-- 
    Document   : adjuntarArchivo
    Created on : 30/11/2023, 10:00:06 a. m.
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
                    <a href="../index.html">
                        <span class="icon"> <ion-icon name="home" ></ion-icon> </span>
                        <span class="titulo">Home</span>
                    </a>
                </li>
                <li>
                    <a href="agenda.html">
                        <span class="icon"> <ion-icon name="person"></ion-icon> </span>
                        <span class="titulo">Ver Agenda</span>
                    </a>
                </li>
                <li>
                    <a href="historialPaciente.html">
                        <span class="icon"> <ion-icon name="people"></ion-icon> </span>
                        <span class="titulo">Historial Pacientes</span>
                    </a>
                </li>
                <li>
                    <a href="adjuntarArchivo.html">
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
                    <h2>Adjuntar Archivo</h2>
                </div>
                <div class="user">
                    <img src="../images/pngwing.com.png" alt="">
                </div>
            </div>
            <!--**************LISTA ARCHIVOS**************-->
            <div class="archivos">
                <div class="contenedorBtn">
                    <div class="headerContenedor">
                        <a href="subirArchivo.jsp" class="btn">
                            <span>Adjuntar Archivo</span>
                            <span class="iconoBtn"> <ion-icon name="add"></ion-icon> </span>
                        </a>
                    </div>
                    <table id="tabla">
                        <thead>
                            <tr>
                                <td>Identificación</td>
                                <td>Nombre Usuario</td>
                                <td>Correo</td>
                                <td>Fecha</td>
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
    <script src="../../JS/scripts.js"></script>
</body>
</html>
