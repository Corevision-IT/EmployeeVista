package empvista.entities;

public class Certifications {
	private int certificate_id;
	private String certificate_name;
	private String certificate_authority;
	private String certifcate_year;
	private int employee_id;
	public int getCertificate_id() {
		return certificate_id;
	}
	public void setCertificate_id(int certificate_id) {
		this.certificate_id = certificate_id;
	}
	public String getCertificate_name() {
		return certificate_name;
	}
	public void setCertificate_name(String certificate_name) {
		this.certificate_name = certificate_name;
	}
	public String getCertificate_authority() {
		return certificate_authority;
	}
	public void setCertificate_authority(String certificate_authority) {
		this.certificate_authority = certificate_authority;
	}
	public String getCertifcate_year() {
		return certifcate_year;
	}
	public void setCertifcate_year(String certifcate_year) {
		this.certifcate_year = certifcate_year;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}

}
