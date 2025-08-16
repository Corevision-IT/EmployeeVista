package empvista.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import empvista.entities.CustomMessage;
import empvista.entities.User;
import empvista.services.EmployeeServices;

/**
 * Servlet implementation class AddEmployee
 */
@WebServlet("/AddEmployee")
public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER");
		int loggedIn = 0;
		
		if(user==null) 
			{
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		else
		{
			loggedIn = user.getLoggedIn();
		}
		
		

		if (loggedIn == 1) {
			
			// get the list of employees from db using service class
			ArrayList empList = EmployeeServices.getEmployeeList();
			
			request.setAttribute("EMPLIST", empList);
			
			request.getRequestDispatcher("addEmployeeForm.jsp").forward(request, response);

		}
		else
		{
			CustomMessage customMessage = new CustomMessage();
			customMessage.setUserMessage("You are successfully logged out/n Please login again to uset the application");
			request.setAttribute("UserMessage", customMessage);
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
