/**  
* @function 
* @author zhaozhou
* @date 2018年4月11日  
* @version 1.0  
*/
package resume.service;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.web.context.support.ServletContextParameterFactoryBean;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.context.support.ServletContextResourceLoader;

import resume.entity.HobbyIcon;
import resume.mybatis.dao.HobbyDao;

@Service
public class HobbyService {

	@Autowired
	private HobbyDao hobbyDao;

	public String getHobby() {
		List<HobbyIcon> list = hobbyDao.getHobbyList();
		String html = "";
		// <a href="javascript:;" id="8" data-icon="&#xe7e2;" date="420854">音乐</a>
		for (HobbyIcon hobby : list) {
			html += "<a href=\"javascript:;\" id=\"" + hobby.getId() + "\" data-icon=\"" + hobby.getDataIcon()
					+ "\" date=" + hobby.getDate() + "\">" + hobby.getHobbyName() + "</a>";
		}

		return html;
	}

//	public void insertSkill() {
//
//		FileInputStream is = null;
//		InputStreamReader ir = null;
//		BufferedReader br = null;
//		try {
//
//			File f = new File("C:\\Users\\Mr.X\\Desktop\\web-resume\\src\\main\\webapp\\hobbyIcon.html");
//			is = new FileInputStream(f);
//			ir = new InputStreamReader(is);
//			br = new BufferedReader(ir);
//			String s = "";
//			List<SkillIcon> list = new ArrayList<SkillIcon>();
//			SkillIcon icon = null;
//			while ((s = br.readLine()) != null) {
//				icon = new SkillIcon();
//				String[] arr = s.split("=");
//				icon.setId(Integer.parseInt(arr[1].split("\"")[1]));
//				icon.setDataIcon(arr[2].split("\"")[1]);
//				icon.setDate(arr[3].split("\"")[1]);
//				icon.setSkillName(arr[3].split(">")[1]);
//				list.add(icon);
//			}
//			hobbyDao.insertSkillList(list);
//		} catch (FileNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			try {
//				if (br != null) {
//					br.close();
//				}
//				if (ir!=null) {
//					ir.close();
//				}
//				if (is!=null) {
//					is.close();
//				}
//
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//		}
//
//	}

}
