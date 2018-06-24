/**  
* @function 
* @author zhaozhou
* @date 2018年4月21日  
* @version 1.0  
*/
package resume.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import resume.entity.SkillIcon;
import resume.mybatis.dao.SkillDao;

@Service
public class SkillService {

	@Autowired
	private SkillDao skillDao;

	public String getSkill() {
		List<SkillIcon> list = skillDao.getSkillList();
		String html = "";
		// <a href="javascript:;" data="460091" id="19">团队协作</a>
		for (SkillIcon skill : list) {
			html += "<a href=\"javascript:;\" data=\"" + skill.getData() + "\" id=\"" + skill.getId() + "\">"
					+ skill.getSkillName() + "</a>";
		}
		return html;
	}

	public void insertSkill() {

		FileInputStream is = null;
		InputStreamReader ir = null;
		BufferedReader br = null;
		try {

			File f = new File("C:\\Users\\Mr.X\\Desktop\\web-resume\\src\\main\\webapp\\skillList.html");
			is = new FileInputStream(f);
			ir = new InputStreamReader(is);
			br = new BufferedReader(ir);
			String s = "";
			List<SkillIcon> list = new ArrayList<SkillIcon>();
			SkillIcon icon = null;
			while ((s = br.readLine()) != null) {
				icon = new SkillIcon();
				String[] arr = s.split("=");
				icon.setId(Integer.parseInt(arr[2].split("\"")[1]));
				icon.setData(arr[1].split("\"")[1]);
				icon.setSkillName(arr[2].split(">")[1]);
				list.add(icon);
			}
			skillDao.insertSkillList(list);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (br != null) {
					br.close();
				}
				if (ir != null) {
					ir.close();
				}
				if (is != null) {
					is.close();
				}

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

	}

}
