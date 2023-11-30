<%-- 
    Document   : index
    Created on : 30/11/2023, 9:56:40 a. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/style.css">
    <title>DiaryMedi</title>
</head>
<body>
    <div class="contenedorGeneral1">
        <!--**************NAVEGACIÓN**************-->
        <div class="contenedorNavegacion">
            <ul>
                <li>
                    <a href="index.html">
                        <span class="icon"> <ion-icon name="medical-outline"></ion-icon> </span>
                        <span class="tituloDiary">DIARYMEDI</span>
                    </a>
                </li>
                <li>
                    <a href="index.html">
                        <span class="icon"> <ion-icon name="home" ></ion-icon> </span>
                        <span class="titulo">Home</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/agenda.html">
                        <span class="icon"> <ion-icon name="person"></ion-icon> </span>
                        <span class="titulo">Ver Agenda</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/historialPaciente.html">
                        <span class="icon"> <ion-icon name="people"></ion-icon> </span>
                        <span class="titulo">Historial Pacientes</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/adjuntarArchivo.jsp">
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
                    <h2>HOME</h2>
                </div>
                <div class="user">
                    <img src="images/pngwing.com.png" alt="UserIcon">
                </div>
            </div>
            <!--**************CARTAS**************-->
            <div class="cardBox">
                <div class="card">
                    <div>
                        <div class="titleCard">CITAS DEL DIA</div>
                        <div class="cardName">12</div>
                    </div>

                    <div class="iconBx">
                        <a href="navegacion/gestionCita.html">
                            <span class="iconCard"> <ion-icon name="today"></ion-icon> </span>
                        </a>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="titleCard">ESPECIALIDAD</div>
                        <div class="cardName">Cardiología</div>
                    </div>

                    <div class="iconBx">
                        <a href="navegacion/gestionPaciente.html">
                            <span class="iconCard"> <ion-icon name="person"></ion-icon> </span>
                        </a>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div id="dayContainer" class="titleCard"></div>
                        <div id="dateContainer" class="cardName"></div>
                    </div>

                    <div class="iconBx">
                        <a href="navegacion/gestionPaciente.html">
                            <span class="iconCard"> <ion-icon name="calendar-number"></ion-icon> </span>
                        </a>
                    </div>
                </div>
            </div>
            <!--**************ULTIMAS CITAS**************-->
            <div class="citas">
                <div class="citasRecientes">
                    <div class="headerCard">
                        <h2>CITAS RECIENTES</h2>
                        <a href="navegacion/historialPaciente.html" class="btn">Ver Todo</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Identificación</td>
                                <td>Nombre Paciente</td>
                                <td>Fecha/Hora Cita</td>
                                <td>Estado</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1065789534</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td class="date">2023-11-27</td>
                                <td><span class="estado pendiente">Pendiente</span></td>
                            </tr>
                            <tr>
                                <td>1065789534</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023T15:30</td>
                                <td><span class="estado atendido">Atendido</span></td>
                            </tr>
                            <tr>
                                <td>1065789534</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023T15:30</td>
                                <td><span class="estado pendiente">Pendiente</span></td>
                            </tr>
                            <tr>
                                <td>1065789534</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023T15:30</td>
                                <td><span class="estado pendiente">Pendiente</span></td>
                            </tr>
                            <tr>
                                <td>1065789534</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023T15:30</td>
                                <td><span class="estado cancelado">Cancelada</span></td>
                            </tr>
                            <tr>
                                <td>1065789534</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023T15:30</td>
                                <td><span class="estado pendiente">Pendiente</span></td>
                            </tr>
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
    <script src="../JS/scripts.js"></script>
</body>
</html>
