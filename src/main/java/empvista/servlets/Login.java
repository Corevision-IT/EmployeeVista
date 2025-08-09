package empvista.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import empvista.entities.User;
import empvista.services.UserService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Our goal is to minimise lines of code in servlet
		

		int validUser = 0;
		
		//Step - 1. Gather information sent from browser / frontend 
		String emailAddress = request.getParameter("emailAddress");
		String password = request.getParameter("password");
		
		//Step-2. We should try to bind these frontend variables to an relevant entity
		User user = new User();
		user.setEmailAddress(emailAddress);
		user.setPassword(password);
		
		//Step-3. We should call our service class to do the work
		user = UserService.validateUser(user);
		
		validUser = user.getLoggedIn();
		
		if(validUser ==1)
		{
			request.setAttribute("USER", user);
			ArrayList menuList=UserService.generateMenu(user.getUserRoleId());
			
			request.setAttribute("MenuList", menuList);
			
			request.getRequestDispatcher("dashboard.jsp").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
