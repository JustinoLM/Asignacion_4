<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Registro docente</title>


<%@page import="java.sql.*" %>
<link href="style.css" rel="stylesheet" type="text/css" />

</head>
<body>

  <header>
    <div class="logo">
      <a href="HOME.html">
        <img src="Logos/Logo_uni_negro.png">
      </a>
    </div>

    <h1>UNIVERSIDAD DEL PUEBLO</h1>
  </header>

  <h1 class="saludo"> Registro Exitoso de Docente </h1>
  <hr class="separator">
  
  
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/Asignacion4","root","");
Statement dbstatement = dbconect.createStatement();

String nombre = request.getParameter("nombre");
String cedula = request.getParameter("cedula");
String materia = request.getParameter("materia");
String centro_regional = request.getParameter("provincia");
String experiencia = request.getParameter("experiencia");
String insertarsql= "INSERT INTO Docentes(nombre, cedula, materia, centro_regional,experiencia_virtual) VALUES ('" +nombre+ "','" +cedula+ "','" +materia+ "','" +centro_regional+ "','"+experiencia+"')";
dbstatement.executeUpdate(insertarsql);
 %>
  
  
  
  <br> <br> <br>
  <a class="boton" href="HOME.html" style="margin-left: 50px">Volver al inicio</a>

  <footer class="footer-fondo">
    <div class="logo-footer">
      <a href="HOME.html">
        <img src="Logos/logo_uni_blanco_2.png">
      </a>
    </div>

    <ul>
      <li><a href="HOME.html">Inicio</a></li>
      <li><a href="CALENDARIO.html">Calendario</a></li>
      <li><a href="REG_DOCENTE.html">Registro de Docentes</a></li>
      <li><a href="SOPORTE.html">Soporte</a></li>
      <br>
      <li class="copirait">Copyright (c) 2023 Universo del Pueblo</li>
      <li class="copirait">All Rights Reserved</li>
    </ul>
  </footer>

</body>
</html>