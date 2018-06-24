/**  
* @function 
* @author zhaozhou
* @date 2018年4月22日  
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
import resume.entity.PersonalTag;
import resume.mybatis.dao.TagsDao;

@Service
public class PersonalTagsService {

	@Autowired
	private TagsDao tagsDao;

	public String getTags() {
		List<PersonalTag> list = tagsDao.getTagList();
		String html = "";
		// <span data="319543" id="27" class="500dtongji"
		// data_track="PC-CV6.5.0-在线制作-在线制作-编辑基本信息-展开选填项-我的标签-通用">乐观</span>
		for (PersonalTag personalTag : list) {
			html += "<span data=\"" + personalTag.getData() + "\" id=\"" + personalTag.getId() + "\" class=\"500dtongji"
					+ "\" data_track=\"PC-CV6.5.0-在线制作-在线制作-编辑基本信息-展开选填项-我的标签-通用" + "\">" + personalTag.getTagName()
					+ "</span>";
		}
		return html;
	}

	public void insertTag() {

		FileInputStream is = null;
		InputStreamReader ir = null;
		BufferedReader br = null;
		try {

			File f = new File("C:\\Users\\Mr.X\\Desktop\\web-resume\\src\\main\\webapp\\personalTags.html");
			is = new FileInputStream(f);
			ir = new InputStreamReader(is);
			br = new BufferedReader(ir);
			String s = "";
			List<PersonalTag> list = new ArrayList<PersonalTag>();
			PersonalTag tag = null;
			while ((s = br.readLine()) != null) {
				tag = new PersonalTag();
				String[] arr = s.split("=");
				tag.setId(Integer.parseInt(arr[2].split("\"")[1]));
				tag.setData(arr[1].split("\"")[1]);
				tag.setTagName(arr[2].split(">")[1]);
				list.add(tag);
			}
			tagsDao.insertTagList(list);
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
