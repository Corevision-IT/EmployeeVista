package empvista.entities;

public class Manager {
	
	private int managerId;
	private String manager;
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	@Override
	public String toString() {
		return "Manager [managerId=" + managerId + ", manager=" + manager + "]";
	}
	
	

}
