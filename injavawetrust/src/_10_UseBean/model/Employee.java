package _10_UseBean.model;

public class Employee extends AbstractPerson {
	
	private int empId;

	public Employee() {

	}

	public Employee(int empId,String name, String surname, int year) {
		super(name, surname, year);	
		this.empId = empId;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

}
