package servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet
public class AutoInit1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String adminEmail;
	
	public void init(ServletConfig config) throws ServletException {
		String email = config.getInitParameter("adminEmail");
		this.adminEmail = email;
		
		System.out.println("Servlet carregado! adminEmail = " + adminEmail);
	}

}
