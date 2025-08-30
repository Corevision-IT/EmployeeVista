package empvista.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import empvista.entities.CustomMessage;
import empvista.entities.Employee;
import empvista.entities.User;
import empvista.utils.DBConnector;

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
			String empName = request.getParameter("name"); 
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			String phone = request.getParameter("phone");
			String department = request.getParameter("department");
			String jobTitle = request.getParameter("jobTitle");
			String manager = request.getParameter("manager");
			String hiringDate = request.getParameter("hiringDate");
			String emptype = request.getParameter("emptype");
			String emailaddress = request.getParameter("emailAddress");
			
			String addressLine1 = request.getParameter("addressLine1")	;
			String addressLine2 = request.getParameter("addressLine2")	;
			String country = request.getParameter("country")	;
			String state = request.getParameter("state")	;
			String city = request.getParameter("city")	;
			String zipCode = request.getParameter("zipCode")	;
			
			String[] benefits = request.getParameterValues("benefits[]");
            String workingFrom = request.getParameter("workingFrom");
            String workingTo = request.getParameter("workingTo");
            
            String hdnSkills = request.getParameter("hdnSkills");             
            String hdnCertifications = request.getParameter("hdnCertifications"); 
            String hdnContacts = request.getParameter("hdnContacts"); 
			
//			String skillName = request.getParameter("skillName");
//			System.out.println("skill: "+skillName);
//			
			
			System.out.println("empName: "+empName);
			System.out.println("Gender: "+gender);
			System.out.println("dob: "+dob);
			System.out.println("Phone number: "+phone);
			System.out.println("department: "+department);
			System.out.println("manager: "+manager);
			System.out.println("jobTitle: "+jobTitle);
			System.out.println("hiringDate: "+hiringDate);
			System.out.println("emptype: "+emptype);
			System.out.println("emailaddress: "+emailaddress);
			
			
			String sql="";
			
			DBConnector dBConnector = DBConnector.getInstance();
			try {
				Connection con = dBConnector.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);

				//System.out.println(stmt);

				ResultSet rs = stmt.executeQuery();

				
				}

			 catch (SQLException e) {

				e.printStackTrace();
			}
			
			
			
			
			
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
