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
		String sql = "SELECT * FROM employees emp, genders gen where emp.gender_id=gen.gender_id";
		DBConnector dBConnector = DBConnector.getInstance();
		
		try {
			Connection con = dBConnector.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
								
			
			
			ResultSet rs = stmt.executeQuery();
			
			//We should see if any rows returned or not
			while(rs.next())
			{
				Employee emp = new Employee();
				
				
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return empList;
	}
	
	

}
