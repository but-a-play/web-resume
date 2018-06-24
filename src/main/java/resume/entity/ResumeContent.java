
package resume.entity;

public class ResumeContent {

	private String resume_title;
	private String resume_scale;
	private String resume_language;
	private ResumeSet resume_set;
	private ModulShow modul_show;
	private IconFontMap iconFontMap;
	private String[] resume_cover;
	private String resume_head;
	private String resume_headType;
	private ResumeBaseInfo resume_base_info;
	private ResumeJobPreference resume_job_preference;
	private Skill[] resume_skill;
	private Hobby[] resume_hobby;
	private Experience[] resume_edu;
	private Experience[] resume_work;
	private Experience[] resume_internship;
	private Experience[] resume_volunteer;
	private Experience[] resume_project;
	private ResumePortfolio resume_portfolio;
	private Sort sort;
	private ResumeContact resume_contact;
	private ResumeQrcode resume_qrcode;

	public String getResume_title() {
		return resume_title;
	}

	public void setResume_title(String resume_title) {
		this.resume_title = resume_title;
	}

	public String getResume_scale() {
		return resume_scale;
	}

	public void setResume_scale(String resume_scale) {
		this.resume_scale = resume_scale;
	}

	public String getResume_language() {
		return resume_language;
	}

	public void setResume_language(String resume_language) {
		this.resume_language = resume_language;
	}

	public ResumeSet getResume_set() {
		return resume_set;
	}

	public void setResume_set(ResumeSet resume_set) {
		this.resume_set = resume_set;
	}

	public ModulShow getModul_show() {
		return modul_show;
	}

	public void setModul_show(ModulShow modul_show) {
		this.modul_show = modul_show;
	}

	public IconFontMap getIconFontMap() {
		return iconFontMap;
	}

	public void setIconFontMap(IconFontMap iconFontMap) {
		this.iconFontMap = iconFontMap;
	}

	public String[] getResume_cover() {
		return resume_cover;
	}

	public void setResume_cover(String[] resume_cover) {
		this.resume_cover = resume_cover;
	}

	public String getResume_head() {
		return resume_head;
	}

	public void setResume_head(String resume_head) {
		this.resume_head = resume_head;
	}

	public String getResume_headType() {
		return resume_headType;
	}

	public void setResume_headType(String resume_headType) {
		this.resume_headType = resume_headType;
	}

	public ResumeBaseInfo getResume_base_info() {
		return resume_base_info;
	}

	public void setResume_base_info(ResumeBaseInfo resume_base_info) {
		this.resume_base_info = resume_base_info;
	}

	public ResumeJobPreference getResume_job_preference() {
		return resume_job_preference;
	}

	public void setResume_job_preference(ResumeJobPreference resume_job_preference) {
		this.resume_job_preference = resume_job_preference;
	}

	public Skill[] getResume_skill() {
		return resume_skill;
	}

	public void setResume_skill(Skill[] resume_skill) {
		this.resume_skill = resume_skill;
	}

	public Hobby[] getResume_hobby() {
		return resume_hobby;
	}

	public void setResume_hobby(Hobby[] resume_hobby) {
		this.resume_hobby = resume_hobby;
	}

	public Experience[] getResume_edu() {
		return resume_edu;
	}

	public void setResume_edu(Experience[] resume_edu) {
		this.resume_edu = resume_edu;
	}

	public Experience[] getResume_work() {
		return resume_work;
	}

	public void setResume_work(Experience[] resume_work) {
		this.resume_work = resume_work;
	}

	public Experience[] getResume_internship() {
		return resume_internship;
	}

	public void setResume_internship(Experience[] resume_internship) {
		this.resume_internship = resume_internship;
	}

	public Experience[] getResume_volunteer() {
		return resume_volunteer;
	}

	public void setResume_volunteer(Experience[] resume_volunteer) {
		this.resume_volunteer = resume_volunteer;
	}

	public Experience[] getResume_project() {
		return resume_project;
	}

	public void setResume_project(Experience[] resume_project) {
		this.resume_project = resume_project;
	}

	public ResumePortfolio getResume_portfolio() {
		return resume_portfolio;
	}

	public void setResume_portfolio(ResumePortfolio resume_portfolio) {
		this.resume_portfolio = resume_portfolio;
	}

	public Sort getSort() {
		return sort;
	}

	public void setSort(Sort sort) {
		this.sort = sort;
	}

	public ResumeContact getResume_contact() {
		return resume_contact;
	}

	public void setResume_contact(ResumeContact resume_contact) {
		this.resume_contact = resume_contact;
	}

	public ResumeQrcode getResume_qrcode() {
		return resume_qrcode;
	}

	public void setResume_qrcode(ResumeQrcode resume_qrcode) {
		this.resume_qrcode = resume_qrcode;
	}

	public ResumeContent(String resume_title, String resume_scale, String resume_language, ResumeSet resume_set,
			ModulShow modul_show, IconFontMap iconFontMap, String[] resume_cover, String resume_head,
			String resume_headType, ResumeBaseInfo resume_base_info, ResumeJobPreference resume_job_preference,
			Skill[] resume_skill, Hobby[] resume_hobby, Experience[] resume_edu, Experience[] resume_work,
			Experience[] resume_internship, Experience[] resume_volunteer, Experience[] resume_project,
			ResumePortfolio resume_portfolio, Sort sort, ResumeContact resume_contact, ResumeQrcode resume_qrcode) {
		super();
		this.resume_title = resume_title;
		this.resume_scale = resume_scale;
		this.resume_language = resume_language;
		this.resume_set = resume_set;
		this.modul_show = modul_show;
		this.iconFontMap = iconFontMap;
		this.resume_cover = resume_cover;
		this.resume_head = resume_head;
		this.resume_headType = resume_headType;
		this.resume_base_info = resume_base_info;
		this.resume_job_preference = resume_job_preference;
		this.resume_skill = resume_skill;
		this.resume_hobby = resume_hobby;
		this.resume_edu = resume_edu;
		this.resume_work = resume_work;
		this.resume_internship = resume_internship;
		this.resume_volunteer = resume_volunteer;
		this.resume_project = resume_project;
		this.resume_portfolio = resume_portfolio;
		this.sort = sort;
		this.resume_contact = resume_contact;
		this.resume_qrcode = resume_qrcode;
	}

	public ResumeContent() {
		super();
		// TODO Auto-generated constructor stub
	}

}
