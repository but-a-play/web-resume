/**  
* @function the column of edu and project 
* @author zhaozhou
* @date 2018年4月20日  
* @version 1.0  
*/
package resume.entity;

public class Experience {

	private String id;
	private String beginTime;
	private String endTime;
	private String unit;
	private String job;
	private String content;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Experience(String id, String beginTime, String endTime, String unit, String job, String content) {
		super();
		this.id = id;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.unit = unit;
		this.job = job;
		this.content = content;
	}

	public Experience() {
		super();
		// TODO Auto-generated constructor stub
	}

}
