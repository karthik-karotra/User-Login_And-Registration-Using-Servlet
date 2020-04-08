package com.servletdemoproject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(
        description = "User Login Servlet Testing",
        urlPatterns = {"/loginServlet"}
)
public class UserLoginServlet extends HttpServlet {
    static String VALID_NAME_PATTERN = "^[A-Z]{1}[a-z]{2,}$";
    static String VALID_PASSWORD_PATTERN = "^((?=[^@|#|&|%|$]*[@|&|#|%|$][^@|#|&|%|$]*$)(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9#@$?]{8,})$";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");

        boolean validCredentials = userName.matches(VALID_NAME_PATTERN) && userPassword.matches(VALID_PASSWORD_PATTERN);

        if (validCredentials) {
            request.setAttribute("userName", userName);
            request.getRequestDispatcher("LoginPageSuccessful.jsp").forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/LoginPage.jsp");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('Please enter valid credentials');</script>");
            requestDispatcher.include(request, response);
        }
    }
}
