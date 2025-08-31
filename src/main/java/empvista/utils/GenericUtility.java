package empvista.utils;

import java.util.ArrayList;

import empvista.entities.Skill;

public class GenericUtility<T> {

	public static ArrayList<?> arrayToArrayList(String arrString, int len, String seprarator1, String separator2, GenericObj obj) {
		
		ArrayList<?> skillList = new ArrayList<>();
////		if (arrString != null && !arrString.trim().isEmpty()) {
////	        String[] skillPairs = arrString.split(seprarator1);
////	        for (String skillPair : skillPairs) {
////	            String[] parts = skillPair.split(separator2);
////	            if (parts.length == len) {
////	            	obj skill = new Skill();
////	                skill.setSkill_name(parts[0].trim());
////	                skill.setProficiency_level(parts[1].trim());
////	                skillList.add(skill);
////	            }
//	        }
//	    }
		
		return skillList;
		
	}
	
	

}
