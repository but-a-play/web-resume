
package resume.entity;

public class Icon {

	private int id;
	private String iconDesc;
	private String iconCode;
	
	public Icon() {
		
	}
	
	public Icon(int id, String iconDesc, String iconCode) {
		super();
		this.id = id;
		this.iconDesc = iconDesc;
		this.iconCode = iconCode;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIconDesc() {
		return iconDesc;
	}
	public void setIconDesc(String iconDesc) {
		this.iconDesc = iconDesc;
	}
	public String getIconCode() {
		return iconCode;
	}
	public void setIconCode(String iconCode) {
		this.iconCode = iconCode;
	}
	
}
