package empvista.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import empvista.entities.Employee;
import empvista.entities.Menu;
import empvista.utils.DBConnector;

public class EmployeeServices {

	public static ArrayList getEmployeeList() {
		
		ArrayList empList = new ArrayList();
		
		//Modify the query to show values instead of ids
		String sql = "SELECT \r\n"
				+ "    emp.employee_id,\r\n"
				+ "    emp.name,\r\n"
				+ "    gen.gender,\r\n"
				+ "    emp.dob,\r\n"
				+ "    emp.email_id,\r\n"
				+ "    emp.phone_number,\r\n"
				+ "    j_t.job_title,\r\n"
				+ "    emp.hire_date,    \r\n"
				+ "    d.department,    \r\n"
				+ "    e_t.employee_type,\r\n"
				+ "    e_s.status,\r\n"
				+ "    (s_s.basic+s_s.bonus+s_s.conveyance_allowance+s_s.hra+s_s.special_allowance) AS Salary,\r\n"
				+ "    CONCAT('Weekly Hours ',w_h.weekly_hours,'----',w_h.shift_type,'  Shift ') as Work_Hours,\r\n"
				+ "    CONCAT(p_r.rating_score,'  --  ',p_r.comments) AS Performance    \r\n"
				+ "FROM\r\n"
				+ "    employees emp\r\n"
				+ "    JOIN genders gen ON emp.gender_id = gen.gender_id\r\n"
				+ "    JOIN job_title j_t ON emp.job_title_id = j_t.job_title_id\r\n"
				+ "    JOIN departments d ON emp.department_id = d.department_id\r\n"
				+ "    JOIN employees_type e_t ON emp.employee_type_id = e_t.employee_type_id\r\n"
				+ "    JOIN salary_structures s_s ON s_s.salary_structure_id = emp.salary_structure_id\r\n"
				+ "    JOIN performance_ratings p_r ON emp.rating_id = p_r.rating_id\r\n"
				+ "    JOIN employment_status e_s ON emp.emp_status_id = e_s.emp_status_id\r\n"
				+ "   \r\n"
				+ "    JOIN work_hours w_h ON w_h.employee_id= emp.employee_id";
		
		DBConnector dBConnector = DBConnector.getInstance();
		
		try {
			Connection con = dBConnector.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
								
			System.out.println(stmt);
			
			ResultSet rs = stmt.executeQuery();
			
			//We should see if any rows returned or not
			while(rs.next())
			{
				Employee emp = new Employee();
				emp.setEmployee_id(rs.getInt("employee_id"));
				emp.setName(rs.getString("name"));
				emp.setGender(rs.getString("gender"));
				emp.setDob(rs.getString("dob"));
				emp.setEmail_id(rs.getString("email_id")); //rs.getString("")
				emp.setPhone_number(rs.getString("phone_number"));
				emp.setJob_title(rs.getString("job_title"));
				
//				System.out.println(emp.toString());
				
				empList.add(emp);
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return empList;
	}
	
	

}
