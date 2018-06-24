/**  
* @function 
* @author zhaozhou
* @date 2018年4月3日  
* @version 1.0  
*/
package resume.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import html2pdf.model.FileHelper;
import html2pdf.model.Html2pdf;
import util.Base642Img;

@Controller
@RequestMapping("/file")
public class FileController {

	@RequestMapping(value = "/upload/cropper_image", method = RequestMethod.POST)
	@ResponseBody
	public Object upload_img(MultipartFile imgFile, HttpServletRequest request, ModelMap model,
			HttpServletResponse response) {
		String cropStr = request.getParameter("cropper_image");
		// 输出base64 数据,截取","之后的值进行转换
		String imgStr = cropStr.substring(cropStr.indexOf(",") + 1);
		// 文件保存目录路径
		String savePath = "C:\\Users\\Mr.X\\Desktop\\upload\\";
		// String savePath =
		// request.getSession().getServletContext().getRealPath("/") +
		// "upload\\";
		// 文件保存目录URL
		String saveUrl = "/upload/";
		// String saveUrl = request.getContextPath() + "/upload/";

		// 检查目录
		File uploadDir = new File(savePath);
		if (!uploadDir.isDirectory()) {
			uploadDir.mkdir();
			// return getError("上传目录不存在。");
		}
		// 检查目录写权限
		if (!uploadDir.canWrite()) {
			return getError("上传目录没有写权限。");
		}

		String dirName = request.getParameter("dir");
		if (dirName == null) {
			dirName = "image";
		}
		// 创建文件夹
		savePath += dirName + "\\";
		saveUrl += dirName + "/";
		File saveDirFile = new File(savePath);
		if (!saveDirFile.exists()) {
			saveDirFile.mkdirs();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String ymd = sdf.format(new Date());
		String timeMillis = System.currentTimeMillis() + "";
		savePath += ymd + timeMillis + ".jpeg";
		saveUrl += ymd + timeMillis + ".jpeg";

		boolean isSuccess = Base642Img.GenerateImage(imgStr, savePath);

		if (isSuccess) {

			return getError(saveUrl);
		}

		return getError("上传失败");
	}

	private Map<String, Object> getError(String message) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("error", 1);
		map.put("message", message);
		return map;
	}

	@RequestMapping(value = "/pdf", method = RequestMethod.POST)
	public void createPdf(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		String resumeHtml = request.getParameter("resumeHtml").trim();

		// 获取pdf的临时保存路径
		// tmp为网站下的目录
		// 把生成的pdf放到网站下以便下载
		String path = request.getSession().getServletContext().getRealPath("/");

		File file = new File(path + "/resume_download.jsp");
		FileHelper fh = new FileHelper();
		fh.appendMethod(file.getPath(), 1350, resumeHtml);
		 String pdfName = UUID.randomUUID().toString() + ".pdf";
		// // pdfPath + "\\" + pdfName;
		 String destPath = "D:\\" + pdfName;
		 Html2pdf.convert("localhost:8080/web-resume/resume_download.jsp", destPath);
		// model.put("resumeHtml", resumeHtml);
		// String srcPath = "localhost:8080/web-resume/resume_download.jsp";
		// return "/resume_download";
	}

}
