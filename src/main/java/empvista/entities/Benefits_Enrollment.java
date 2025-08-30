package empvista.entities;

public class Benefits_Enrollment {
	private int enrollment_id;
	private String medical_insurance;
	private String provident_fund;
	private String life_insurabce;
	private int employee_id;
	public int getEnrollment_id() {
		return enrollment_id;
	}
	public void setEnrollment_id(int enrollment_id) {
		this.enrollment_id = enrollment_id;
	}
	public String getMedical_insurance() {
		return medical_insurance;
	}
	public void setMedical_insurance(String medical_insurance) {
		this.medical_insurance = medical_insurance;
	}
	public String getProvident_fund() {
		return provident_fund;
	}
	public void setProvident_fund(String provident_fund) {
		this.provident_fund = provident_fund;
	}
	public String getLife_insurabce() {
		return life_insurabce;
	}
	public void setLife_insurabce(String life_insurabce) {
		this.life_insurabce = life_insurabce;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}

}
