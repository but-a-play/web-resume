/**  
* @function 
* @author zhaozhou
* @date 2018年4月29日  
* @version 1.0  
*/
package resume.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.util.HtmlUtils;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;

import resume.entity.Resume;
import resume.mybatis.dao.ResumeDao;
import util.DataUtils;
import util.DateUtils;

@Service
public class ResumeService {

	@Autowired
	private ResumeDao resumeDao;

	public Resume createOrUpdate(Resume resume) {
		Resume getResume = null;
		boolean bUpdate = false;
		if (resume.getResumeid() != null && resume.getResumeid() > 0) {
			getResume = find(resume.getResumeid());
			if (getResume != null && getResume.getResumeid() != null) {
				bUpdate = true;
			}
		}
		if (bUpdate) {
			getResume.setItemid(resume.getItemid());
			getResume.setJson(resume.getJson());
			getResume.setMemberid(resume.getMemberid());
			getResume.setResumeid(resume.getResumeid());
			if (getResume.getCreateTime() == null) {
				getResume.setCreateTime(new Date());
			}
			getResume.setModifyTime(new Date());
			updateResume(getResume);
		} else {
			resume.setCreateTime(new Date());
			resume.setModifyTime(new Date());
			getResume = insertResume(resume);
		}
		return getResume;
	}

	public Resume insertResume(Resume resume) {
		resumeDao.insertResume(resume);
//		resume.setResumeid(resumeid);
		return resume;
	}

	public void updateResume(Resume resume) {
		resumeDao.updateResume(resume);
	}

	public Resume find(Long resumeid) {
		return resumeDao.find(resumeid);
	}

	public Long findMaxId() {
		return resumeDao.findMaxId();
	}

	public Resume createByMap(Map<String, Object> map) {
		Resume resume = new Resume();
		try {
			String json = DataUtils.objToString(map.get("json"));
			Long memberid = DataUtils.objToLong(map.get("memberid"));
			int itemid = DataUtils.objToInt(map.get("itemid"));
			Long resumeid = DataUtils.objToLong(map.get("resumeid"));
			resume.setItemid(itemid);
			resume.setMemberid(memberid);
			resume.setResumeid(resumeid);
			resume.setJson(json);
			resume = createOrUpdate(resume);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return resume;
	}

	public List<Resume> findResumes(Long memberid) {
		return resumeDao.findResumes(memberid);
	}

	public String returnResumesHtml(List<Resume> resumes) {
		String html = "<div class=\"px\">";
		for (Resume r : resumes) {
			html+=resumeLi(r);
		}
		html+="</div>";
		return html;
	}

	public String resumeLi(Resume resume) {
		Date date = resume.getCreateTime();
		JSONObject jsonObject = JSONObject.parseObject(resume.getJson());
		String title =  jsonObject.getString("resume_title");
		if(title==null||title.length()==0){
			title="我的简历-"+DateUtils.DateToStr(date);
		}
		String html = "<li class=\"doc_resume sort\" date_time="+DateUtils.DateToStr(date, false)+"><b></b><div class=\"img\"><s></s><img src=\"http://static.500d.me/upload/image/201707/item/jm0203.jpg\"><div class=\"hover-div\"><a class=\"edit btn choose_edit_other_resume 500dtongji\" data_track=\"PC-在线制作-我的简历功能（{0}编辑）-简历展示-简历展示-选择某简历\" href=\"cvresume/edit.jhtml?itemid="+resume.getItemid()+"&resumeId="+resume.getResumeid()+"\" data_path=\"cvresume/edit.jhtml?itemid="+resume.getItemid()+"&resumeId="+resume.getResumeid()+"\">编辑</a></div></div><div class=\"text\"><p>"+title+"</p>			<i>"+date.toString()+"</i></div></li>";

		return html;
	}
	
	public String resumeOption(Resume resume) {
		Date date = resume.getCreateTime();
		JSONObject jsonObject = JSONObject.parseObject(resume.getJson());
		String title =  jsonObject.getString("resume_title");
		if(title==null||title.length()==0){
			title="我的简历-"+DateUtils.DateToStr(date);
		}
		String html = "<option value=\""+resume.getResumeid()+"\">"+title+"</option>";
		
		return html;
	}

	public String ResumelistHtml(List<Resume> resumes) {
		String html = "";
		for (Resume r : resumes) {
			html+=resumeOption(r);
		}
		return html;
	}

}
