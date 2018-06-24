/**  
* @function 
* @author zhaozhou
* @date 2018年4月19日  
* @version 1.0  
*/
package resume.entity;

public class ModulShow {

	private boolean letterShow;
	private boolean coverShow;
	private boolean headShow;
	private boolean contactShow;
	private ResumeHeadSet resume_head;
	private BaseInfoSet base_info;
	private BaseHomeSet base_home;
	private BaseSocialSet base_social;
	private ResumeSkillSet resume_skill;
	private ResumeHobbySet resume_hobby;
	private ResumeNameSet resume_name;
	private ResumeJobPreferenceSet resume_job_preference;
	private ResumeEduSet resume_edu;
	private ResumeWorkSet resume_work;
	private ResumeInternshipSet resume_internship;
	private ResumeVolunteerSet resume_volunteer;
	private ResumeProjectSet resume_project;
	private ResumeHonorSet resume_honor;
	private ResumeSummarySet resume_summary;
	private ResumePortfolioSet resume_portfolio;
	private ResumeRecomentSet resume_recoment;
	private ResumeQrcodeSet resume_qrcode;

	public boolean isLetterShow() {
		return letterShow;
	}

	public void setLetterShow(boolean letterShow) {
		this.letterShow = letterShow;
	}

	public boolean isCoverShow() {
		return coverShow;
	}

	public void setCoverShow(boolean coverShow) {
		this.coverShow = coverShow;
	}

	public boolean isHeadShow() {
		return headShow;
	}

	public void setHeadShow(boolean headShow) {
		this.headShow = headShow;
	}

	public boolean isContactShow() {
		return contactShow;
	}

	public void setContactShow(boolean contactShow) {
		this.contactShow = contactShow;
	}

	public ResumeHeadSet getResumeHead() {
		return resume_head;
	}

	public void setResumeHead(ResumeHeadSet resumeHead) {
		this.resume_head = resumeHead;
	}

	public BaseInfoSet getBaseInfo() {
		return base_info;
	}

	public void setBaseInfo(BaseInfoSet baseInfo) {
		this.base_info = baseInfo;
	}

	public BaseHomeSet getBaseHome() {
		return base_home;
	}

	public void setBaseHome(BaseHomeSet baseHome) {
		this.base_home = baseHome;
	}

	public BaseSocialSet getBaseSocial() {
		return base_social;
	}

	public void setBaseSocial(BaseSocialSet baseSocial) {
		this.base_social = baseSocial;
	}

	public ResumeSkillSet getResumeSkill() {
		return resume_skill;
	}

	public void setResumeSkill(ResumeSkillSet resumeSkill) {
		this.resume_skill = resumeSkill;
	}

	public ResumeHobbySet getResumeHobby() {
		return resume_hobby;
	}

	public void setResumeHobby(ResumeHobbySet resumeHobby) {
		this.resume_hobby = resumeHobby;
	}

	public ResumeNameSet getResumeName() {
		return resume_name;
	}

	public void setResumeName(ResumeNameSet resumeName) {
		this.resume_name = resumeName;
	}

	public ResumeJobPreferenceSet getResumeJobPreference() {
		return resume_job_preference;
	}

	public void setResumeJobPreference(ResumeJobPreferenceSet resumeJobPreference) {
		this.resume_job_preference = resumeJobPreference;
	}

	public ResumeEduSet getResumeEdu() {
		return resume_edu;
	}

	public void setResumeEdu(ResumeEduSet resumeEdu) {
		this.resume_edu = resumeEdu;
	}

	public ResumeWorkSet getResumeWork() {
		return resume_work;
	}

	public void setResumeWork(ResumeWorkSet resumeWork) {
		this.resume_work = resumeWork;
	}

	public ResumeInternshipSet getResumeInternship() {
		return resume_internship;
	}

	public void setResumeInternship(ResumeInternshipSet resumeInternship) {
		this.resume_internship = resumeInternship;
	}

	public ResumeVolunteerSet getResumeVolunteer() {
		return resume_volunteer;
	}

	public void setResumeVolunteer(ResumeVolunteerSet resumeVolunteer) {
		this.resume_volunteer = resumeVolunteer;
	}

	public ResumeProjectSet getResumeProject() {
		return resume_project;
	}

	public void setResumeProject(ResumeProjectSet resumeProject) {
		this.resume_project = resumeProject;
	}

	public ResumeHonorSet getResumeHonor() {
		return resume_honor;
	}

	public void setResumeHonor(ResumeHonorSet resumeHonor) {
		this.resume_honor = resumeHonor;
	}

	public ResumeSummarySet getResumeSummary() {
		return resume_summary;
	}

	public void setResumeSummary(ResumeSummarySet resumeSummary) {
		this.resume_summary = resumeSummary;
	}

	public ResumePortfolioSet getResumePortfolio() {
		return resume_portfolio;
	}

	public void setResumePortfolio(ResumePortfolioSet resumePortfolio) {
		this.resume_portfolio = resumePortfolio;
	}

	public ResumeRecomentSet getResumeRecoment() {
		return resume_recoment;
	}

	public void setResumeRecoment(ResumeRecomentSet resumeRecoment) {
		this.resume_recoment = resumeRecoment;
	}

	public ResumeQrcodeSet getResumeQrcode() {
		return resume_qrcode;
	}

	public void setResumeQrcode(ResumeQrcodeSet resumeQrcode) {
		this.resume_qrcode = resumeQrcode;
	}

	public ModulShow(boolean letterShow, boolean coverShow, boolean headShow, boolean contactShow,
			ResumeHeadSet resumeHead, BaseInfoSet baseInfo, BaseHomeSet baseHome, BaseSocialSet baseSocial,
			ResumeSkillSet resumeSkill, ResumeHobbySet resumeHobby, ResumeNameSet resumeName,
			ResumeJobPreferenceSet resumeJobPreference, ResumeEduSet resumeEdu, ResumeWorkSet resumeWork,
			ResumeInternshipSet resumeInternship, ResumeVolunteerSet resumeVolunteer, ResumeProjectSet resumeProject,
			ResumeHonorSet resumeHonor, ResumeSummarySet resumeSummary, ResumePortfolioSet resumePortfolio,
			ResumeRecomentSet resumeRecoment, ResumeQrcodeSet resumeQrcode) {
		super();
		this.letterShow = letterShow;
		this.coverShow = coverShow;
		this.headShow = headShow;
		this.contactShow = contactShow;
		this.resume_head = resumeHead;
		this.base_info = baseInfo;
		this.base_home = baseHome;
		this.base_social = baseSocial;
		this.resume_skill = resumeSkill;
		this.resume_hobby = resumeHobby;
		this.resume_name = resumeName;
		this.resume_job_preference = resumeJobPreference;
		this.resume_edu = resumeEdu;
		this.resume_work = resumeWork;
		this.resume_internship = resumeInternship;
		this.resume_volunteer = resumeVolunteer;
		this.resume_project = resumeProject;
		this.resume_honor = resumeHonor;
		this.resume_summary = resumeSummary;
		this.resume_portfolio = resumePortfolio;
		this.resume_recoment = resumeRecoment;
		this.resume_qrcode = resumeQrcode;
	}

	public ModulShow() {
		super();
	}

}
