/**  
* @function 
* @author zhaozhou
* @date 2018年4月13日  
* @version 1.0  
*/
package resume.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import resume.entity.Resume;
import resume.entity.ResumeContent;
import resume.service.EmailService;
import resume.service.HobbyService;
import resume.service.PersonalTagsService;
import resume.service.ResumeService;
import resume.service.SkillService;
import util.DataUtils;
import util.EasyUIHelper;

@Controller
@RequestMapping("/cvresume")
public class CvresumeController {

	@Autowired
	private HobbyService hobbyService;
	@Autowired
	private SkillService skillService;
	@Autowired
	private PersonalTagsService personalTagsService;
	@Autowired
	private ResumeService resumeService;
	@Autowired
	private EmailService emailService;

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public Object save(HttpServletRequest request, ModelMap model, HttpServletResponse response) {

		Map<String, Object> map = EasyUIHelper.getSimpleParameters(request);
		Resume resume = resumeService.createByMap(map);

		Map<String, Object> result = new HashMap<String, Object>(2);
		result.put("type", "success");
		result.put("content", "{\"itemid\":\"" + resume.getItemid() + "\",\"resumeid\":\"" + resume.getResumeid()
				+ "\",\"visitid\":\"9585647947\",\"memberid\":\"" + resume.getMemberid() + "\"}");
		// result.put("content",resume);
		return result;

	}

	@RequestMapping(value = "/hobby", method = RequestMethod.GET)
	@ResponseBody
	public String hobby(HttpServletRequest request, ModelMap model, HttpServletResponse response) {

		return hobbyService.getHobby();

	}

	@RequestMapping(value = "/skill", method = RequestMethod.GET)
	@ResponseBody
	public String skill(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		return skillService.getSkill();

	}

	@RequestMapping(value = "/commend_personal_tags", method = RequestMethod.GET)
	@ResponseBody
	public String personalTags(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		return personalTagsService.getTags();

	}

	@RequestMapping(value = "/commend_personal_tags/update_use_num", method = RequestMethod.GET)
	@ResponseBody
	public Object updateUseNum(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		Map<String, Object> result = new HashMap<String, Object>(2);
		result.put("type", "success");
		return result;

	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView returnResumeContent(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		Map<String, Object> map = EasyUIHelper.getSimpleParameters(request);
		Resume resume = resumeService.find(DataUtils.objToLong(map.get("resumeId")));
		model.addAttribute("resume_content", resume.getJson());
		model.put("resume_itemid", resume.getItemid());
		return new ModelAndView("/resume", model);
	}

	@RequestMapping(value = "/select_resume", method = RequestMethod.POST)
	@ResponseBody
	public String returnResumes(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		Map<String, Object> map = EasyUIHelper.getSimpleParameters(request);
		List<Resume> resumes = resumeService.findResumes(DataUtils.objToLong(map.get("memberid")));
		return resumeService.returnResumesHtml(resumes);
	}

	@RequestMapping(value = "/resume_list", method = RequestMethod.GET)
	@ResponseBody
	public String resumelist(HttpServletRequest request, ModelMap model, HttpServletResponse response) {

		List<Resume> resumes = resumeService
				.findResumes(DataUtils.objToLong(SecurityUtils.getSubject().getSession().getAttribute("memberid")));
		return resumeService.ResumelistHtml(resumes);
	}

	@RequestMapping(value = "/preview", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView returnPreviewContent(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		Map<String, Object> map = EasyUIHelper.getSimpleParameters(request);
		Resume resume = resumeService.find(DataUtils.objToLong(map.get("resumeid")));
		model.addAttribute("resume_content", resume.getJson());
		model.put("resume_itemid", resume.getItemid());
		return new ModelAndView("/preview", model);
	}

	@RequestMapping(value = "/resume_cover_letter", method = RequestMethod.POST)
	@ResponseBody
	public Object sendEmail(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		Map<String, Object> map = EasyUIHelper.getSimpleParameters(request);
		Map<String, Object> result = new HashMap<String, Object>(2);
		if (emailService.sendEmail(map, request)) {
			result.put("type", "success");
		} else {
			result.put("type", "fail");
		}
		return result;

	}

	@RequestMapping(value = "/select_resume_content", method = RequestMethod.GET)
	@ResponseBody
	public Object sendUrl(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		Map<String, Object> map = EasyUIHelper.getSimpleParameters(request);
		Map<String, Object> result = new HashMap<String, Object>(2);
		String downUrl = "/web-resume/cvresume/pdf_download.jhtml?resumeid=" + map.get("resumeid");
		String visitPath = "/web-resume/cvresume/preview.jhtml?resumeid=" + map.get("resumeid");
		result.put("type", "success");
		result.put("content", "{\"downUrl\":\"" + downUrl + "\",\"visitPath\":\"" + visitPath + "\"}");
		return result;

	}
	
	@RequestMapping(value = "/select_template", method = RequestMethod.GET)
	@ResponseBody
	public Object sendItem(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
//		<div class="template_list">
//		<img src="http://static.500d.me/upload/resume_bank_item/jm0203.jpg" alt="JM0203">
//		<div class="template_masking">
//		    <a href="javascript:;" class="select_template"  data-itemid="206">选择</a>
//		    <p class="template_msg">
//		        <span>JM0203</span>
//		        <span>支持<i>PDF</i>下载</span>
//		    </p>
//		</div>
//	</div>
		Map<String, Object> result = new HashMap<String, Object>(2);
		String itemStr = "<div class=\"template_list\"><img src=\"http://localhost:8080/web-resume/resources/web/images/jm0203.jpg\" alt=\"JM0203\"><div class=\"template_masking\"><a href=\"javascript:;\" class=\"select_template\"  data-itemid=\"206\">选择</a><p class=\"template_msg\"><span>JM0203</span><span>支持<i>PDF</i>下载</span></p></div></div>";
		result.put("item", itemStr);
		return result;

	}
	@RequestMapping(value = "/pdf_download", method = RequestMethod.GET)
	@ResponseBody
	public Object downPDF(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		Map<String, Object> map = EasyUIHelper.getSimpleParameters(request);
		Map<String, Object> result = new HashMap<String, Object>(2);
		String downUrl = "/web-resume/cvresume/pdf_download.jhtml?resumeid=" + map.get("resumeid");
		String visitPath = "/web-resume/cvresume/preview.jhtml?resumeid=" + map.get("resumeid");
		result.put("type", "success");
		result.put("content", "{\"downUrl\":\"" + downUrl + "\",\"visitPath\":\"" + visitPath + "\"}");
		return result;

	}
}
