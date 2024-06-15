package com.example.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");

        if("admin".equals(userId) && "password".equals(password)) {
            request.setAttribute("userId", userId);
            RequestDispatcher dispatcher = request.getRequestDispatcher("welcome");
            dispatcher.forward(request, response);
        } else {
            response.getWriter().println("<h1>Login Failed</h1>");
        }
    }
}
