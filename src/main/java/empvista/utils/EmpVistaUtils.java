package empvista.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import empvista.entities.Menu;
import empvista.entities.User;

public class EmpVistaUtils {

	public static User  authenticateUser(User user) {
		
		boolean isValid=false;
		
		DBConnector dBConnector = DBConnector.getInstance();
		
		
		String sql = "Select * from users,roles where emailAddress=? and password=? and users.userRoleId=roles.roleId";
		String updateUserSql = "UPDATE users SET loggedIn =? , lastLoggedIN = ? WHERE emailAddress = ?";
		
		try {
			Connection con = dBConnector.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			PreparedStatement updStmt = con.prepareStatement(updateUserSql);
			
			
			stmt.setString(1, user.getEmailAddress());
			stmt.setString(2, user.getPassword());
			
			ResultSet rs = stmt.executeQuery();
			
			//We should see if any rows returned or not
			if(rs.next())
			{
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				LocalDateTime currentDateTime = LocalDateTime.now();
				String formattedDateTime = currentDateTime.format(formatter);	
				
				//Update user object before returning
				user.setLastLoggedIN(formattedDateTime);
				user.setLoggedIn(1);
				user.setUserName(rs.getString("userName"));
				user.setUserRoleId(rs.getInt("userRoleId"));
				user.setProfilePicName(rs.getString("profilePicName"));
				user.setRoleName(rs.getString("roleName"));
				
				
				
				//We need to update the User Table also 
				updStmt.setInt(1, 1);
				updStmt.setString(2, formattedDateTime);
				updStmt.setString(3, user.getEmailAddress());
				
				int row = updStmt.executeUpdate();
				
				if(row==0)
				{
					user.setLastLoggedIN("");
					user.setLoggedIn(0);
				}
			}
			else
			{
				user.setLastLoggedIN("");
				user.setLoggedIn(0);
			}
			
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return user;
		
	}

	public static ArrayList getMenuForUser(int userRoleId) {
		
		ArrayList menuList = new ArrayList();
		String sql = "Select * from menu,roles where roles.roleId = menu.roleId and menu.roleId=?";
		DBConnector dBConnector = DBConnector.getInstance();
		
		
		try {
			Connection con = dBConnector.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
								
			stmt.setInt(1, userRoleId);
			
			ResultSet rs = stmt.executeQuery();
			
			//We should see if any rows returned or not
			while(rs.next())
			{
				Menu menu = new Menu();
				menu.setMenuId(rs.getInt("menuId"));
				menu.setMenuName(rs.getString("menuName"));
				menu.setUrlPath(rs.getString("urlPath"));
				
				menuList.add(menu);
				
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return menuList;
	}

}
