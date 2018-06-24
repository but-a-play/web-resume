/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

public class ResumeJobPreference {
	
	private String jobFunction;
	private String jobType;
	private String jobCity;
	private String jobCityName;
	private String jobTime;
	private String jobMinSalary;
	private String jobMaxSalary;

	public ResumeJobPreference(String jobFunction, String jobType, String jobCity, String jobCityName, String jobTime,
			String jobMinSalary, String jobMaxSalary) {
		super();
		this.jobFunction = jobFunction;
		this.jobType = jobType;
		this.jobCity = jobCity;
		this.jobCityName = jobCityName;
		this.jobTime = jobTime;
		this.jobMinSalary = jobMinSalary;
		this.jobMaxSalary = jobMaxSalary;
	}

	public String getJobFunction() {
		return jobFunction;
	}

	public void setJobFunction(String jobFunction) {
		this.jobFunction = jobFunction;
	}

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	public String getJobCity() {
		return jobCity;
	}

	public void setJobCity(String jobCity) {
		this.jobCity = jobCity;
	}

	public String getJobCityName() {
		return jobCityName;
	}

	public void setJobCityName(String jobCityName) {
		this.jobCityName = jobCityName;
	}

	public String getJobTime() {
		return jobTime;
	}

	public void setJobTime(String jobTime) {
		this.jobTime = jobTime;
	}

	public String getJobMinSalary() {
		return jobMinSalary;
	}

	public void setJobMinSalary(String jobMinSalary) {
		this.jobMinSalary = jobMinSalary;
	}

	public String getJobMaxSalary() {
		return jobMaxSalary;
	}

	public void setJobMaxSalary(String jobMaxSalary) {
		this.jobMaxSalary = jobMaxSalary;
	}

	public ResumeJobPreference() {
		super();
		// TODO Auto-generated constructor stub
	}

}
