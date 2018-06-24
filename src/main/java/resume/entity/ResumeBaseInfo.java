/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

public class ResumeBaseInfo {

	private String name;
	private String minSummary;
	private String birthYear;
	private String birthMonth;
	private String city;
	private String cityName;
	private String mobile;
	private String email;
	private String sex;
	private String nation;
	private String[] personalTags;
	private String[] customMsg;
	private String[] customWebsite;

	public ResumeBaseInfo(String name, String minSummary, String birthYear, String birthMonth, String city,
			String cityName, String mobile, String email, String sex, String nation, String[] personalTags,
			String[] customMsg, String[] customWebsite) {
		super();
		this.name = name;
		this.minSummary = minSummary;
		this.birthYear = birthYear;
		this.birthMonth = birthMonth;
		this.city = city;
		this.cityName = cityName;
		this.mobile = mobile;
		this.email = email;
		this.sex = sex;
		this.nation = nation;
		this.personalTags = personalTags;
		this.customMsg = customMsg;
		this.customWebsite = customWebsite;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMinSummary() {
		return minSummary;
	}

	public void setMinSummary(String minSummary) {
		this.minSummary = minSummary;
	}

	public String getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}

	public String getBirthMonth() {
		return birthMonth;
	}

	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String[] getPersonalTags() {
		return personalTags;
	}

	public void setPersonalTags(String[] personalTags) {
		this.personalTags = personalTags;
	}

	public String[] getCustomMsg() {
		return customMsg;
	}

	public void setCustomMsg(String[] customMsg) {
		this.customMsg = customMsg;
	}

	public String[] getCustomWebsite() {
		return customWebsite;
	}

	public void setCustomWebsite(String[] customWebsite) {
		this.customWebsite = customWebsite;
	}

	public ResumeBaseInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

}
