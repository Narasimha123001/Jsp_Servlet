package org.example.forms_in_jsp;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/Controller")

public class Controller extends HttpServlet {

    @Serial
    private static final long serialVersionUID = 1L;

    public Controller() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().println(request.getParameter("name") + "<br/>");
        response.getWriter().println(request.getParameter("gender") + "<br/>");

        PrintWriter out = response.getWriter();
        String[] languages = request.getParameterValues("language");
        if (languages != null) {
            for (String language : languages) {
                out.println(language );
            }

        }else{
            System.out.println("No languages selected"+"<br/>");
        }
        response.getWriter().println(request.getParameter("country"));
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}