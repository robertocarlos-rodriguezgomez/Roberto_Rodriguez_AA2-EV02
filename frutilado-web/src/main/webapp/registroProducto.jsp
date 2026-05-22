<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de productos - Frutilado</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <main class="contenedor">
        <header class="barra">
            <div>
                <p class="etiqueta">Inventario</p>
                <h1>Registro de productos</h1>
            </div>
            <a href="index.jsp">Inicio</a>
        </header>

        <form class="formulario" action="productos" method="post">
            <label for="codigo">Codigo del producto</label>
            <input type="text" id="codigo" name="codigo" placeholder="Ej: FRU-004" required>

            <label for="nombre">Nombre del producto</label>
            <input type="text" id="nombre" name="nombre" placeholder="Ej: Ensalada de frutas con helado" required>

            <label for="categoria">Categoria</label>
            <select id="categoria" name="categoria" required>
                <option value="Helado artesanal">Helado artesanal</option>
                <option value="Helado industrial">Helado industrial</option>
                <option value="Malteada">Malteada</option>
                <option value="Ensalada de frutas">Ensalada de frutas</option>
                <option value="Brownie">Brownie</option>
                <option value="Bebida">Bebida</option>
                <option value="Dulce">Dulce</option>
            </select>

            <label for="precio">Precio de venta</label>
            <input type="number" id="precio" name="precio" min="0" step="100" required>

            <label for="cantidad">Cantidad disponible</label>
            <input type="number" id="cantidad" name="cantidad" min="0" required>

            <label for="estado">Estado</label>
            <select id="estado" name="estado" required>
                <option value="Disponible">Disponible</option>
                <option value="Agotado">Agotado</option>
            </select>

            <button type="submit">Registrar producto</button>
        </form>

        <form action="productos" method="get">
            <button class="boton secundario" type="submit">Consultar productos registrados</button>
        </form>
    </main>
</body>
</html>
