<%-- 
    Document   : agregarPaciente
    Created on : 29/11/2023, 5:54:51 p. m.
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
                    <h2>Registrar Paciente</h2>
                </div>
                <div class="user">
                    <img src="../images/pngwing.com.png" alt="">
                </div>
            </div>
            <!--**************AGREGAR PACIENTE**************-->
            <div class="contenedorFormularioRegistrarPacientes">   
                <form id="registroForm" action="http://localhost:3000/user/add" method="POST">
                    <div class="registroPacientes">
                        <div class="inputTipoDocumento">
                                <div class="tiposDocumentos">Tipo Documento</div>
                                <select class="listaDocumentos" id="listaDocumentos" name="tipodoc">
                                    <option value="" disabled selected>Seleccione una opcion</option>
                                    <option value="CC">Cédula Ciudadania</option>
                                    <option value="TI">Tarjeta Identidad</option>
                                    <option value="RC">Registro Civil</option>
                                    <option value="CE">Cédula Extranjería</option>
                                </select>
                            </div>
                            <div class="inputBox" id="inputIdentificacion">
                                <span class="labels" id="labelId">Identificacion</span>
                                <input type="text" placeholder="Identificación" required id="identificacion" name="idUser" maxlength="10" oninput="validarNumero()">
                            </div>        
                            <div class="inputBox" id="inputNombres">
                                <span class="labels">Nombres</span>
                                <input type="text" placeholder="Nombres" required id="nombres" name="nombres" maxlength="30" oninput="validarLetras()">
                            </div>
                            <div class="inputBox" id="inputApellidos">
                                <span class="labels">Apellidos</span>
                                <input type="text" placeholder="Apellidos" required id="apellidos" name="apellidos" maxlength="30" oninput="validarLetras()">
                            </div>
                            <div class="inputBox" id="inputCorreo">
                                <span class="labels">Correo</span>
                                <input type="email" placeholder="Correo Electronico" required id="corre" name="email" maxlength="35">
                            </div>  
                            <div class="inputBox" id="inputNombreUsuario">
                                <span class="labels">Nombre de Usuario</span>
                                <input type="text" placeholder="Nombre de Usuario" required id="nombreUsuario" name="user" maxlength="10" oninput="validarInicio()">
                            </div>
                            <div class="inputBox" id="inputTelefono">
                                <span class="labels" id="labelId">Teléfono</span>
                                <input type="text" placeholder="Teléfono" required id="telefono" name="telefono" maxlength="10" oninput="validarTelefono()">
                            </div> 
                            <div class="inputBox" id="inputContraseña">
                                <span class="labels">Contraseña</span>
                                <input type="password" placeholder="Contraseña" required id="password" name="pass" maxlength="16">
                            </div>
                        <div class="inputGenero">
                                <div class="opcionGenero">Genero</div>
                                <select class="listaGeneros" id="listaGeneros" name="listaGeneros">
                                    <option value="" disabled selected>Seleccione una opcion</option>
                                    <option value="Femenino">Femenino</option>
                                    <option value="Masculino">Masculino</option>
                                    <option value="Otro">Otro</option>
                                </select>
                            </div>
                        <div id="inputTipoSangre" class="inputTipoSangre">
                            <div class="tipoSanguineo">Grupo Sanguineo</div>
                            <select class="opcionesTipoSangre" id="opcionesTipoSangre" name="gposan">
                                <option value="" disabled selected>Seleccione una opcion</option>
                                <option value="A Positivo">A + (Positivo)</option>
                                <option value="a-">A - (Negativo)</option>
                                <option value="b+">B + (Positivo)</option>
                                <option value="b-">B - (Negativo)</option>
                                <option value="ab+">AB + (Positivo)</option>
                                <option value="ab-">AB - (Negativo)</option>
                                <option value="o+">O + (Positivo)</option>
                                <option value="o-">O - (Negativo)</option>
                            </select>
                        </div>
                        <div class="inputBox" id="inputDireccion">
                            <span class="labels">Dirección</span>
                            <input type="text" placeholder="Dirección" required id="dirección" name="dire" maxlength="30">
                        </div>
                        <div class="inputBox" id="inputContactoEmergencia">
                            <span class="labels">Contacto de Emergencia</span>
                            <input type="text" placeholder="Contacto de Emergencia" required id="contactoEmergencia" name="conEmer" maxlength="10" oninput="validarNumero()">
                        </div>
                        <div class="inputBox" id="inputAlergias">
                            <span class="labels">Alergias</span>
                            <input type="text" placeholder="Alergias" required id="alergias" name="alergias" maxlength="30" oninput="validarLetras()">
                        </div>
                        <div class="inputBox" id="inputSeguroMedico">
                            <span class="labels">Número Seguro Médico</span>
                            <input type="text" placeholder="Seguro Médico" required id="seguroMedico" name="numse" maxlength="10" oninput="validarNumero()">
                        </div>
                        <div class="inputCargo">
                                <div class="cargoUsuario">Cargo Usuario</div>
                                <select name="cargosUsuarios" id="cargo" class="cargosUsuarios">
                                    <option value="Paciente">Paciente</option>
                                </select>
                            </div>
                        <div class="inputEstado">
                                <div class="estadoUsuario">Estado</div>
                                <select class="estadosUsuarios" id="estadosUsuarios" name="estadosUsuarios">
                                    <option value="" disabled selected>Seleccione una opcion</option>
                                    <option value="Activo">Activo</option>
                                    <option value="Inactivo">Inactivo</option>
                                </select>
                            </div>                      
                        <div class="botonPaciente">
                            <input type="submit" value="Registrar Paciente" onclick="validarFormularios()">
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
    <script src="../../JSS/insertarPaciente.js" type="text/javascript"></script>
</body>
</html>
