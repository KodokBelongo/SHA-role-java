package com.example.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = (String) request.getAttribute("userId");

        Map<String, String> students = new HashMap<>();
        students.put("S1", "Student 1");
        students.put("S2", "Student 2");
        students.put("S3", "Student 3");
        students.put("S4", "Student 4");
        students.put("S5", "Student 5");
        students.put("S6", "Student 6");
        students.put("S7", "Student 7");
        students.put("S8", "Student 8");

        request.setAttribute("students", students);
        request.setAttribute("userId", userId);

        RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
        dispatcher.forward(request, response);
    }
}
