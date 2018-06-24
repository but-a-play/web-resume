/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

public class ResumeContact {

	private String name;
	private String desc;
	private String contact;
	private String content;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public ResumeContact(String name, String desc, String contact, String content) {
		super();
		this.name = name;
		this.desc = desc;
		this.contact = contact;
		this.content = content;
	}

	public ResumeContact() {
		super();
		// TODO Auto-generated constructor stub
	}

}
