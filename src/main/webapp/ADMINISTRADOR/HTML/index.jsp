<%-- 
    Document   : index.jps
    Created on : 28/11/2023, 2:01:48 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    <a href="navegacion/gestionPaciente.jsp">
                        <span class="icon"> <ion-icon name="person"></ion-icon> </span>
                        <span class="titulo">Gestión Paciente</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/gestionMedico.html">
                        <span class="icon"> <ion-icon name="people"></ion-icon> </span>
                        <span class="titulo">Gestión Médico</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/gestionUsuarios.jsp">
                        <span class="icon"> <ion-icon name="person-circle"></ion-icon> </span>
                        <span class="titulo">Gestión Administrador</span>
                    </a>
                </li>
                <li>
                    <a href="navegacion/registrarCita.jsp">
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
                        <div class="titleCard">CITAS</div>
                        <div id="card" class="cardName">30</div>
                    </div>

                    <div class="iconBx">
                        <a href="#">
                            <span class="iconCard"> <ion-icon name="today"></ion-icon> </span>
                        </a>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="titleCard">PACIENTE</div>
                        <div class="cardName">15</div>
                    </div>

                    <div class="iconBx">
                        <a href="#">
                            <span class="iconCard"> <ion-icon name="person"></ion-icon> </span>
                        </a>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="titleCard">MÉDICO</div>
                        <div class="cardName">20</div>
                    </div>

                    <div class="iconBx">
                        <a href="#">
                            <span class="iconCard"> <ion-icon name="medkit"></ion-icon> </span>
                        </a>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="titleCard">ADMINISTRADOR</div>
                        <div class="cardName">25</div>
                    </div>

                    <div class="iconBx">
                        <a href="#">
                            <span class="iconCard"> <ion-icon name="people-circle-outline"></ion-icon> </span>
                        </a>
                    </div>
                </div>
            </div>
            <!--**************ULTIMAS CITAS**************-->
            <div class="citas">
                <div class="citasRecientes">
                    <div class="headerCard">
                        <h3>Usuarios Recientes</h3>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Identificación</td>
                                <td>Nombre Usuario</td>
                                <td>Fecha/Hora Creación</td>
                                <td>Cargo</td>
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
    <script src="../JSS/scripts.js"></script>
</body>
</html>
