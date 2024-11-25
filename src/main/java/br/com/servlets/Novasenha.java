import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Novasenha extends HttpServlet {
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String password = request.getParameter("password");
	        String confirmPassword = request.getParameter("confirmPassword");

	        if (password.equals(confirmPassword)) {
	            // Redirect to success page
	            response.sendRedirect("../../pages/login/Login.html");
	        } else {
	            // Redirect to error page or display an error message on the same page
	            response.sendRedirect("error.jsp"); // Or handle the error within the JSP
	        }
	    }
	}
   