package br.com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.IOException;
import java.util.UUID;

public class Recsenha extends HttpServlet {


    private static boolean verificarEmail(String email) {
        return true;
    }

    
    private static void armazenarToken(String email, String token) {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");

        if (verificarEmail(email)) {
            String token = UUID.randomUUID().toString();
            armazenarToken(email, token);

            
            String link = "http://Strument_Store/resetar-senha?token=" + token;
           
           
            response.sendRedirect("view/user/codconfirm.jsp");
        } else {
     
            response.sendRedirect("erro.jsp");
        }
    }
}
