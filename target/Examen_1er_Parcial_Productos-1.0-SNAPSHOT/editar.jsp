<%@page import="com.emergentes.modelo.Producto"%>
<%

    Producto item = (Producto)request.getAttribute("miProducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Producto</title>
    </head>
    <body>
        <h1><%= (item.getId()==0)? "Nuevo Registro":"Editar Registro" %></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>"/>
            <table>
                <tr>   
                    <td>Descripción</td>
                    <td><input type="text" name="descripcion" value="<%= item.getDescripcion()%>"/></td>                   
                </tr>
                <tr>   
                    <td>Cantidad</td>
                    <td><input type="number" name="cantidad" value="<%= item.getCantidad()%>"/></td>                   
                </tr>
                <tr>   
                    <td>Precio</td>
                    <td><input type="number" step="any" name="precio" value="<%= item.getPrecio()%>"/></td>                   
                </tr>
                <tr>
                    <td align="right"><label>Categoría : </label></td>
                    <td align="left">
                        <select name="categoria">
                            <option value="sin categoria"selected disabled>seleccionar</option>
                         <option value="bebidas">bebidas</option>
                          <option value="detergentes">detergentes</option>
                          <option value="pastas">pastas</option>
                         <option value="masitas" >masitas</option>
                         <option value="frutas">frutas</option></select></td>
                </tr>
                <tr>   
                    <td></td>
                    <td><input type="submit" value="Procesar"/></td>                   
                </tr>
            </table>
            
        </form>
        
    </body>
</html>
