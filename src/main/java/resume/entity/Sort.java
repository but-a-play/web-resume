/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

public class Sort {

	private String[] left;
	private String[] top;
	private String[] right;
	private String[] bottom;

	public String[] getLeft() {
		return left;
	}

	public void setLeft(String[] left) {
		this.left = left;
	}

	public String[] getTop() {
		return top;
	}

	public void setTop(String[] top) {
		this.top = top;
	}

	public String[] getRight() {
		return right;
	}

	public void setRight(String[] right) {
		this.right = right;
	}

	public String[] getBottom() {
		return bottom;
	}

	public void setBottom(String[] bottom) {
		this.bottom = bottom;
	}

	public Sort(String[] left, String[] top, String[] right, String[] bottom) {
		super();
		this.left = left;
		this.top = top;
		this.right = right;
		this.bottom = bottom;
	}

	public Sort() {
		super();
		// TODO Auto-generated constructor stub
	}

}
