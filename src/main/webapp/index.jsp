
<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>)session.getAttribute("listaprod");
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Productos</title>
    </head>
    <body>
        <br><div style="border:PowderBlue 5px solid;border-radius: 20px;margin: auto 400px" >
 <center><h2>PRIMER PARCIAL TEM-742<br><h3>Nombre : Alex Churata Mamani<br> Carnet: 9950103 LP </h3></h2></center></div>
        
        <h1><center>PRODUCTOS</center></h1>
        <a href="MainController?op=nuevo">Nuevo Producto</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoría</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if(lista!=null){
                
                for(Producto item : lista){
                    
                

            %>
            <tr>
                <td> <%= item.getId() %> </td>
                <td> <%= item.getDescripcion()%> </td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getPrecio()%></td>
                <td><%= item.getCategoria()%></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick="return confirm('Esta seguro de eliminar el registro? ');">Eliminar</a></td>
            </tr>
            <%
                }
                }
            %>
        </table>
    </body>
</html>
