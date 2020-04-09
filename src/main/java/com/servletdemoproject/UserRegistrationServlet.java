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
        description = "Registration Page",
        urlPatterns = "/registrationServletPage"
)
public class UserRegistrationServlet extends HttpServlet {
    static String VALID_NAME_PATTERN = "^[A-Z]{1}[a-z]{2,}$";
    static String VALID_PASSWORD_PATTERN = "^((?=[^@|#|&|%|$]*[@|&|#|%|$][^@|#|&|%|$]*$)(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9#@$?]{8,})$";
    static String VALID_MOBILE_NUMBER_PATTERN = "^([1-9]{1}[0-9]{9})$";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String userPassword = request.getParameter("userPassword");
        String mobileNo = request.getParameter("number");
        String address = request.getParameter("address");

        boolean validCredentials = name.matches(VALID_NAME_PATTERN) && userPassword.matches(VALID_PASSWORD_PATTERN) && mobileNo.matches(VALID_MOBILE_NUMBER_PATTERN);

        if (validCredentials) {
            request.setAttribute("userName", name);
            request.setAttribute("password", userPassword);
            request.setAttribute("email", email);
            request.setAttribute("mobileNo", mobileNo);
            request.setAttribute("address", address);
            request.getRequestDispatcher("UserRegistrationSuccessful.jsp").forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/UserRegistration.jsp");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Please enter valid credentials');</script>");
            requestDispatcher.include(request, response);
        }
    }
}
