<%@ page import="java.util.List" %>
<%@ page import="com.frutilado.modelo.Producto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de productos - Frutilado</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <main class="contenedor ancho">
        <header class="barra">
            <div>
                <p class="etiqueta">Inventario</p>
                <h1>Productos registrados</h1>
            </div>
            <a href="registroProducto.jsp">Nuevo producto</a>
        </header>

        <%
            String mensaje = (String) request.getAttribute("mensaje");
            if (mensaje != null) {
        %>
            <p class="mensaje"><%= mensaje %></p>
        <%
            }
        %>

        <table>
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Categoria</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
                    if (productos != null && !productos.isEmpty()) {
                        for (Producto producto : productos) {
                %>
                    <tr>
                        <td><%= producto.getCodigo() %></td>
                        <td><%= producto.getNombre() %></td>
                        <td><%= producto.getCategoria() %></td>
                        <td>$<%= producto.getPrecio() %></td>
                        <td><%= producto.getCantidad() %></td>
                        <td><%= producto.getEstado() %></td>
                    </tr>
                <%
                        }
                    } else {
                %>
                    <tr>
                        <td colspan="6">No hay productos registrados en el inventario.</td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </main>
</body>
</html>
