/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

public class BaseModulSet {

	private boolean isShow;
	private boolean isTitleShow;
	private boolean isTimeShow;
	private boolean isContentShow;
	private String title;
	private String key;

	public boolean isShow() {
		return isShow;
	}

	public void setShow(boolean isShow) {
		this.isShow = isShow;
	}

	public boolean isTitleShow() {
		return isTitleShow;
	}

	public void setTitleShow(boolean isTitleShow) {
		this.isTitleShow = isTitleShow;
	}

	public boolean isTimeShow() {
		return isTimeShow;
	}

	public void setTimeShow(boolean isTimeShow) {
		this.isTimeShow = isTimeShow;
	}

	public boolean isContentShow() {
		return isContentShow;
	}

	public void setContentShow(boolean isContentShow) {
		this.isContentShow = isContentShow;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public BaseModulSet(boolean isShow, boolean isTitleShow, boolean isTimeShow, boolean isContentShow, String title,
			String key) {
		super();
		this.isShow = isShow;
		this.isTitleShow = isTitleShow;
		this.isTimeShow = isTimeShow;
		this.isContentShow = isContentShow;
		this.title = title;
		this.key = key;
	}

	public BaseModulSet() {
		super();
		// TODO Auto-generated constructor stub
	}

}
