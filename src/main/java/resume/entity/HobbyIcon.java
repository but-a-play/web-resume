/**  
* @function 
* @author zhaozhou
* @date 2018年4月20日  
* @version 1.0  
*/
package resume.entity;

public class HobbyIcon {

	private int id;
	private String dataIcon;
	private String date;
	private String hobbyName;

	public HobbyIcon(int id, String dataIcon, String date, String hobbyName) {
		super();
		this.id = id;
		this.dataIcon = dataIcon;
		this.date = date;
		this.hobbyName = hobbyName;
	}

	public String getHobbyName() {
		return hobbyName;
	}

	public void setHobbyName(String hobbyName) {
		this.hobbyName = hobbyName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDataIcon() {
		return dataIcon;
	}

	public void setDataIcon(String dataIcon) {
		this.dataIcon = dataIcon;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public HobbyIcon() {
		super();
		// TODO Auto-generated constructor stub
	}

}
