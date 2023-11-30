<%-- 
    Document   : index
    Created on : 30/11/2023, 7:36:38 a. m.
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
                    <a href="index.jsp">
                        <span class="icon"> <ion-icon name="medical-outline"></ion-icon> </span>
                        <span class="tituloDiary">DIARYMEDI</span>
                    </a>
                </li>
                <li>
                    <a href="index.jsp">
                        <span class="icon"> <ion-icon name="home" ></ion-icon> </span>
                        <span class="titulo">Home</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/agendarCita.jsp">
                        <span class="icon"> <ion-icon name="calendar"></ion-icon> </span>
                        <span class="titulo">Agendar Citas</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/historialCitas.jsp">
                        <span class="icon"> <ion-icon name="documents"></ion-icon> </span>
                        <span class="titulo">Historial Citas</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/documentos.jsp">
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
                        <div class="titleCard">TIPO DE SANGRE</div>
                        <div class="cardName">O+</div>
                    </div>

                    <div class="iconBx">
                        <a href="#">
                            <span class="iconCard"> <ion-icon name="water"></ion-icon> </span>
                        </a>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="titleCard">ENFERMEDAD</div>
                        <div class="cardName">Cardiovascular</div>
                    </div>

                    <div class="iconBx">
                        <a href="#">
                            <span class="iconCard"> <ion-icon name="fitness"></ion-icon> </span>
                        </a>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="titleCard">Proxima Cita</div>
                        <div class="cardName">24-03-2023T15:00 - Viernes</div>
                    </div>

                    <div class="iconBx">
                        <a href="#">
                            <span class="iconCard"> <ion-icon name="time"></ion-icon> </span>
                        </a>
                    </div>
                </div>
            </div>
            <!--**************ULTIMAS CITAS**************-->
            <div class="citas">
                <div class="citasRecientes">
                    <div class="headerCard">
                        <h2>ULTIMAS CITAS</h2>
                        <a href="navegacion/historialCitas.html" class="btn">Ver Todo</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Tipo Cita</td>
                                <td>Nombre Médico</td>
                                <td>Fecha Cita</td>
                                <td>Hora Cita</td>
                                <td>Dia Cita</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Exámenes y Procedimientos</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023</td>
                                <td>15:30</td>
                                <td>Viernes</td>
                            </tr>
                            <tr>
                                <td>Exámenes y Procedimientos</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023</td>
                                <td>15:30</td>
                                <td>Viernes</td>
                            </tr>
                            <tr>
                                <td>Exámenes y Procedimientos</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023</td>
                                <td>15:30</td>
                                <td>Viernes</td>
                            </tr>
                            <tr>
                                <td>Exámenes y Procedimientos</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023</td>
                                <td>15:30</td>
                                <td>Viernes</td>
                            </tr>
                            <tr>
                                <td>Exámenes y Procedimientos</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023</td>
                                <td>15:30</td>
                                <td>Viernes</td>
                            </tr>
                            <tr>
                                <td>Exámenes y Procedimientos</td>
                                <td>Julia Perenceja Cotes Libañes</td>
                                <td>24-02-2023</td>
                                <td>15:30</td>
                                <td>Viernes</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--**************ULTIMOS USUARIOS**************-->
                <div class="usuariosRecientes">
                    <div class="headerUsuarios">
                        <h2>Médicos Frecuentes</h2>
                    </div>
                    <table>
                        <tr>
                            <td>
                                <div class="imgBx"><img src="images/pngwing.com.png" alt=""></div>
                            </td>
                            <td>
                                <h4>Julia Perenceja<br> <span>Cotes Libañes</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBx"><img src="images/pngwing.com.png" alt=""></div>
                            </td>
                            <td>
                                <h4>Julia Perenceja<br> <span>Cotes Libañes</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBx"><img src="images/pngwing.com.png" alt=""></div>
                            </td>
                            <td>
                                <h4>Julia Perenceja<br> <span>Cotes Libañes</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBx"><img src="images/pngwing.com.png" alt=""></div>
                            </td>
                            <td>
                                <h4>Ernesto Esquivel<br> <span>Lobo Sandero</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBx"><img src="images/pngwing.com.png" alt=""></div>
                            </td>
                            <td>
                                <h4>Ernesto Esquivel<br> <span>Lobo Sandero</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBx"><img src="images/pngwing.com.png" alt=""></div>
                            </td>
                            <td>
                                <h4>Ernesto Esquivel<br> <span>Lobo Sandero</span></h4>
                            </td>
                        </tr>
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
