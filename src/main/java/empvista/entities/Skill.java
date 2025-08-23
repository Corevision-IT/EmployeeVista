package empvista.entities;

public class Skill {
	
	private int skill_id;
	private int employee_id;
	private String proficiency_level;
	private String skill_name;
	
	
	public int getSkill_id() {
		return skill_id;
	}
	public void setSkill_id(int skill_id) {
		this.skill_id = skill_id;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public String getProficiency_level() {
		return proficiency_level;
	}
	public void setProficiency_level(String proficiency_level) {
		this.proficiency_level = proficiency_level;
	}
	public String getSkill_name() {
		return skill_name;
	}
	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}
	
	
	

}
