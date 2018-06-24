/**  
* @function 
* @author zhaozhou
* @date 2018年4月20日  
* @version 1.0  
*/
package resume.entity;

public class Skill {

	private String name;
	private String id;
	private String masterLevel;
	private String masterLevelDesc;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMasterLevel() {
		return masterLevel;
	}

	public void setMasterLevel(String masterLevel) {
		this.masterLevel = masterLevel;
	}

	public String getMasterLevelDesc() {
		return masterLevelDesc;
	}

	public void setMasterLevelDesc(String masterLevelDesc) {
		this.masterLevelDesc = masterLevelDesc;
	}

	public Skill(String name, String id, String masterLevel, String masterLevelDesc) {
		super();
		this.name = name;
		this.id = id;
		this.masterLevel = masterLevel;
		this.masterLevelDesc = masterLevelDesc;
	}

	public Skill() {
		super();
		// TODO Auto-generated constructor stub
	}

}
