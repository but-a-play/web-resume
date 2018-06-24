/**  
* @function 
* @author zhaozhou
* @date 2018年4月21日  
* @version 1.0  
*/
package resume.entity;

public class SkillIcon {

	private int id;
	private String data;
	private String skillName;

	public SkillIcon() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SkillIcon(int id, String data, String skillName) {
		super();
		this.id = id;
		this.data = data;
		this.skillName = skillName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

}
