/**  
* @function 
* @author zhaozhou
* @date 2018年4月20日  
* @version 1.0  
*/
package resume.entity;

public class Hobby {

	private String key;
	private String id;
	private String name;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Hobby(String key, String id, String name) {
		super();
		this.key = key;
		this.id = id;
		this.name = name;
	}

	public Hobby() {
		super();
		// TODO Auto-generated constructor stub
	}

}
