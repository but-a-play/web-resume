/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

import java.util.Date;

public class Resume {

	private Long memberid;
	private int itemid;
	private Long resumeid;
	private String json;
	private Date createTime;
	private Date modifyTime;

	private ResumeContent resumeContent;

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}

	public Long getMemberid() {
		return memberid;
	}

	public void setMemberid(Long memberid) {
		this.memberid = memberid;
	}

	public int getItemid() {
		return itemid;
	}

	public void setItemid(int itemid) {
		this.itemid = itemid;
	}

	public Long getResumeid() {
		return resumeid;
	}

	public void setResumeid(Long resumeid) {
		this.resumeid = resumeid;
	}

	public ResumeContent getResumeContent() {
		return resumeContent;
	}

	public void setResumeContent(ResumeContent resumeContent) {
		this.resumeContent = resumeContent;
	}

	public Resume() {
		super();
		// TODO Auto-generated constructor stub
	}

}
