/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

public class ResumePortfolio {

	private String[] img;
	private String[] link;

	public String[] getImg() {
		return img;
	}

	public void setImg(String[] img) {
		this.img = img;
	}

	public String[] getLink() {
		return link;
	}

	public void setLink(String[] link) {
		this.link = link;
	}

	public ResumePortfolio(String[] img, String[] link) {
		super();
		this.img = img;
		this.link = link;
	}

	public ResumePortfolio() {
		super();
		// TODO Auto-generated constructor stub
	}

}
