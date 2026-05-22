package com.frutilado.servlet;

import com.frutilado.modelo.Producto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/productos")
public class ProductoServlet extends HttpServlet {

    private static final List<Producto> productos = new ArrayList<>();

    @Override
    public void init() {
        if (productos.isEmpty()) {
            productos.add(new Producto("FRU-001", "Helado artesanal de fresa", "Helado artesanal", 5500, 35, "Disponible"));
            productos.add(new Producto("FRU-002", "Malteada de vainilla", "Malteada", 9000, 18, "Disponible"));
            productos.add(new Producto("FRU-003", "Brownie con helado", "Brownie", 8000, 12, "Disponible"));
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String codigo = request.getParameter("codigo");
        String nombre = request.getParameter("nombre");
        String categoria = request.getParameter("categoria");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        String estado = request.getParameter("estado");

        Producto producto = new Producto(codigo, nombre, categoria, precio, cantidad, estado);
        productos.add(producto);

        request.setAttribute("mensaje", "Producto registrado correctamente.");
        request.setAttribute("productos", productos);
        request.getRequestDispatcher("/listadoProductos.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("productos", productos);
        request.getRequestDispatcher("/listadoProductos.jsp").forward(request, response);
    }
}
