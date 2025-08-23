package empvista.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import empvista.entities.CustomMessage;
import empvista.entities.User;

/**
 * Servlet implementation class SaveEmployee
 */
@WebServlet("/SaveEmployee")
public class SaveEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveEmployee() {
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
		
		if (loggedIn == 1) 
		{
			String empName = request.getParameter("name"); //
			String skillName = request.getParameter("skillName");
			
			System.out.println("empName: "+empName);
			System.out.println("skillName: "+skillName);
			
			request.getRequestDispatcher("AddEmployee").forward(request, response);
			
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
