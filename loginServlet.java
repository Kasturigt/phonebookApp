package com.servlet;

import java.io.IOException;

import com.conn.DbConnect;
import com.dao.UserDAO;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {
	
    @Override
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
    ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("password");
        
        UserDAO dao = new UserDAO(DbConnect.getConn());
        User u = dao.loginUser(email, pass);
        System.out.println(u);
        HttpSession session = req.getSession();
        if (u != null) {
            // Store user information in the session
            session.setAttribute("user", u);
            
            
            // Redirect to home page or dashboard
            resp.sendRedirect("home.jsp");
        } else {
            // Set an error message in the session
            session.setAttribute("errorMsg", "Invalid email or password.");
            
            
            // Redirect back to login page with error message
            resp.sendRedirect("login.jsp");
        }
    }
}