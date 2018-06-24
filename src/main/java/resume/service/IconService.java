/**  
* @function 
* @author zhaozhou
* @date 2018年4月11日  
* @version 1.0  
*/
package resume.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import resume.entity.Icon;
import resume.mybatis.dao.IconDao;

@Service
public class IconService {

	@Autowired
	private IconDao iconDao;

	public String getIcon(String desc) {
		List<Icon> list = iconDao.getIconList(desc);
		String html = "";
		/*
		 * <li data-code="&#xf117;" id="1320" data="21382"><a
		 * class="icon wbdfont">&#xf117;</a> <p>兴趣爱好-阅读</p></li>
		 */
		for (Icon icon : list) {
			html += "<li><a class=\"icon wbdfont\">" + icon.getIconCode() + "</a><p>" + icon.getIconDesc()
					+ "</p></li>";
		}

		return html;
	}

}
