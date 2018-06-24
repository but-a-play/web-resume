/**  
* @function 
* @author zhaozhou
* @date 2018年4月11日  
* @version 1.0  
*/
package resume.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import resume.service.IconService;

@Controller
@RequestMapping("/icon")
public class IconController {

	@Autowired
	private IconService iconService;

	@RequestMapping(value = "/findIcon", method = RequestMethod.GET)
	@ResponseBody
	public String findIcon(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
		String desc = request.getParameter("name");
		return  iconService.getIcon(desc);
	}

}
