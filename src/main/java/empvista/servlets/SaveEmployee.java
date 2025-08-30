package empvista.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import empvista.entities.Certifications;
import empvista.entities.CustomMessage;
import empvista.entities.Emergency_Contacts;
import empvista.entities.Employee;
import empvista.entities.Skill;
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
			
			System.out.println("hdnSkills : "+hdnSkills);
			System.out.println("hdnCertifications: "+hdnCertifications);
			System.out.println("hdnContacts: "+hdnContacts);
			
			 ArrayList<Skill> skillList = new ArrayList<>();
			    if (hdnSkills != null && !hdnSkills.trim().isEmpty()) {
			        String[] skillPairs = hdnSkills.split(";");
			        for (String skillPair : skillPairs) {
			            String[] parts = skillPair.split(",");
			            if (parts.length == 2) {
			                Skill skill = new Skill();
			                skill.setSkill_name(parts[0].trim());
			                skill.setProficiency_level(parts[1].trim());
			                skillList.add(skill);
			            }
			        }
			    }
			    
			    ArrayList<Certifications> certList = new ArrayList<>();
			    if (hdnCertifications != null && !hdnCertifications.trim().isEmpty()) {
			        String[] certPairs = hdnCertifications.split(";");
			        for (String certPair : certPairs) {
			            String[] parts = certPair.split(",");
			            if (parts.length == 3) {
			                Certifications cert = new Certifications();
			                cert.setCertificate_name(parts[0].trim());
			                cert.setCertificate_authority(parts[1].trim());
			                cert.setCertifcate_year(parts[2].trim());
			                certList.add(cert);
			            }
			        }
			    }
			    
			    ArrayList<Emergency_Contacts> contactList = new ArrayList<>();
			    if (hdnContacts != null && !hdnContacts.trim().isEmpty()) {
			        String[] contactPairs = hdnContacts.split(";");
			        for (String contactPair : contactPairs) {
			            String[] parts = contactPair.split(",");
			            if (parts.length == 3) {
			            	Emergency_Contacts emergency_Contacts = new Emergency_Contacts();
			            	emergency_Contacts.setContact_name(parts[1].trim());
			            	emergency_Contacts.setContact_name(parts[0].trim());
			            	emergency_Contacts.setRelationship(parts[2].trim());
			            	contactList.add(emergency_Contacts);
			            }
			        }
			    }
			    
			    Employee emp = new Employee();
			    emp.setSkills(skillList);
			    emp.setCertifications(certList);
			    emp.setEmergency_Contacts(contactList);
			
			
			
			
			
			
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
