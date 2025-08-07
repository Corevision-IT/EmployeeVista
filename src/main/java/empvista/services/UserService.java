package empvista.services;

import java.util.ArrayList;

import empvista.entities.Menu;
import empvista.entities.User;
import empvista.utils.EmpVistaUtils;

public class UserService {

	public static User validateUser(User user) {
		
		boolean response = false;
		System.out.println(user.toString());
		
		//Authentication process
		
		user = EmpVistaUtils.authenticateUser(user);
		
		int res = user.getLoggedIn();
		
		if(res==1) 
		{
			response = true;
			
		}
		
		
		
		
		return user;
	}

	public static ArrayList generateMenu(int userRoleId) {
		
		ArrayList menuList = new ArrayList();
		
		menuList = EmpVistaUtils.getMenuForUser(userRoleId);
		
		return menuList;
	}

}
