<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="modelo.ServicioLocal"%>

<%-- Paso 1: Declarar el servicio --%>
<%! ServicioLocal servicio; %>

<%-- Paso 2: Crear el contexto y el servicio--%>
<%
    InitialContext ctx = new InitialContext();
    servicio=(ServicioLocal)ctx.lookup("java:global/EjemploSingleton/Servicio!modelo.ServicioLocal");
%>

<%-- Paso 3: Hacer que el servicio sea visible para EL y JSTL--%>
<c:set var="servicio" scope="page" value="<%=servicio%>"/>

<%@include file="templates/header.jsp" %>

<div class="row">
    <div class="col s6 offset-s3">
        <div class="card-panel">
            <p class="center-align">Ingresar Productos</p>
            <form action="control.do" method="post">
                <div class="input-field">
                    <input id="nombre" name="nombre" type="text" class="validate">
                    <label for="nombre">Name</label>
                </div>
                <div class="input-field">
                    <input id="precio" name="precio" type="number" class="validate">
                    <label for="precio">Precio</label>
                </div>
                <button type="sumbit" class="btn right">Guardar</button>
                <br><br>
            </form>
        </div>
        <table class="bordered highlight">
            <tr>
                <th>Nombre</th>
                <th>Precio</th>
            </tr>
            <c:forEach items="${servicio.productos}" var="p">
                <tr>
                    <td>${p.nombre}</td>
                    <td>${p.precio}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<%@include file="templates/footer.jsp" %>