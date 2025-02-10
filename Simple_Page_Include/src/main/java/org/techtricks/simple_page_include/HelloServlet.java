package org.techtricks.simple_page_include;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;

    public HelloServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String parameter = req.getParameter("page");

        if (parameter == null || parameter.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Error:Missing 'page' parameter");
            return;
        }
        String page = parameter.toLowerCase();

        String targetPage;
        switch (page) {
            case "login":
                targetPage = "/login.jsp";
                break;
            case "signup":
                targetPage = "/signup.jsp";  // Ensure filename matches exactly (case-sensitive in some servers)
                break;
            case "about":
                targetPage = "/about.jsp";
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Invalid Page Requested: " + parameter);
                return;
        }

        getServletContext().getRequestDispatcher(targetPage).forward(req, resp);
    }
}