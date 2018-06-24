/**  
* @function 
* @author zhaozhou
* @date 2018年4月22日  
* @version 1.0  
*/
package resume.entity;

public class PersonalTag {

	private int id;
	private String tagName;
	private String data;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public PersonalTag(int id, String tagName, String data) {
		super();
		this.id = id;
		this.tagName = tagName;
		this.data = data;
	}

	public PersonalTag() {
		super();
		// TODO Auto-generated constructor stub
	}

}
