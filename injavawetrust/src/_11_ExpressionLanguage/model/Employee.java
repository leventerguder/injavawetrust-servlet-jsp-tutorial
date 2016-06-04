package _11_ExpressionLanguage.model;

public class Employee {
	
	private int empId;
	private String name;
	private Department department;
	
	public Employee() {}
	
	public Employee(int empId, String name, Department department) {
	
		this.empId = empId;
		this.name = name;
		this.department = department;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	
}
