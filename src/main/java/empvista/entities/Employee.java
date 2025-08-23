package empvista.entities;

import java.util.ArrayList;

public class Employee {
	
	private int employee_id;
	private String name;
	private String gender;
	private String dob;
	private String email_id;
	private String phone_number;
	private String department;
	private String job_title;
	private String manager;
	private String hire_date;
	private String salary_structure;
	private String emp_status;
	private String employee_type;
	private String rating;
	private String enrollement;
	private String work_hour;
	private String profile_picture;
	
	private Enrollment enrollment;
	
	private ArrayList<Skill> skills;
	
	
	
	
	
	public Enrollment getEnrollment() {
		return enrollment;
	}
	public void setEnrollment(Enrollment enrollment) {
		this.enrollment = enrollment;
	}
	
	
	public ArrayList<Skill> getSkills() {
		return skills;
	}
	public void setSkills(ArrayList<Skill> skills) {
		this.skills = skills;
	}
	
	
	public String getProfile_picture() {
		return profile_picture;
	}
	public void setProfile_picture(String profile_picture) {
		this.profile_picture = profile_picture;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	public String getSalary_structure() {
		return salary_structure;
	}
	public void setSalary_structure(String salary_structure) {
		this.salary_structure = salary_structure;
	}
	public String getEmp_status() {
		return emp_status;
	}
	public void setEmp_status(String emp_status) {
		this.emp_status = emp_status;
	}
	public String getEmployee_type() {
		return employee_type;
	}
	public void setEmployee_type(String employee_type) {
		this.employee_type = employee_type;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getEnrollement() {
		return enrollement;
	}
	public void setEnrollement(String enrollement) {
		this.enrollement = enrollement;
	}
	public String getWork_hour() {
		return work_hour;
	}
	public void setWork_hour(String work_hour) {
		this.work_hour = work_hour;
	}
	@Override
	public String toString() {
		return "Employee [employee_id=" + employee_id + ", name=" + name + ", gender=" + gender + ", dob=" + dob
				+ ", email_id=" + email_id + ", phone_number=" + phone_number + ", department=" + department
				+ ", job_title=" + job_title + ", manager=" + manager + ", hire_date=" + hire_date
				+ ", salary_structure=" + salary_structure + ", emp_status=" + emp_status + ", employee_type="
				+ employee_type + ", rating=" + rating + ", enrollement=" + enrollement + ", work_hour=" + work_hour
				+ "]";
	}
	
	
	
	

}
