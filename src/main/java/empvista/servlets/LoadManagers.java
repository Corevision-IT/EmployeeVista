package empvista.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import empvista.services.EmployeeServices;

/**
 * Servlet implementation class LoadManagers
 */
@WebServlet("/LoadManagers")
public class LoadManagers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadManagers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		//We have to return a jsp with a list of managers corresponding to a department
		String deptId = request.getParameter("deptId");
		if(deptId == null)
		{
			request.getRequestDispatcher("managerList.jsp").forward(request, response);
		}
		else
		{
			ArrayList managerList = EmployeeServices.getManagerList(deptId);
			request.setAttribute("MANAGER_LIST", managerList);
			
			request.getRequestDispatcher("managerList.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		doGet(request, response);
	}

}
