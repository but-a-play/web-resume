/**  
* @function 
* @author zhaozhou
* @date 2018年5月29日  
* @version 1.0  
*/
package html2pdf.model;

import java.io.File;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

public class Html2pdf {
	// wkhtmltopdf在系统中的路径
	private static final String toPdfTool = "C:\\Program Files\\wkhtmltopdf\\bin\\wkhtmltopdf.exe";

	/**
	 * html转pdf
	 * 
	 * @param srcPath
	 *            html路径，可以是硬盘上的路径，也可以是网络路径
	 * @param destPath
	 *            pdf保存路径
	 * @return 转换成功返回true
	 */
	public static boolean convert(String srcPath, String destPath) {
		File file = new File(destPath);
		File parent = file.getParentFile();
		// 如果pdf保存路径不存在，则创建路径
		if (!parent.exists()) {
			parent.mkdirs();
		}

		Session session = SecurityUtils.getSubject().getSession();
		StringBuilder cmd = new StringBuilder();
		cmd.append(toPdfTool);
		cmd.append(" ");
		cmd.append("  --cookie sid" + " " + session.getId() + " ");// 设置cookie
		cmd.append("  ");
		cmd.append(" --page-size A4 ");
		// –margin-bottom 设置页面下边距 (default 10mm)
		cmd.append(" --margin-bottom 0 ");
		// –margin-left 将左边页边距 (default 10mm)
		cmd.append(" --margin-left 0 ");
		// –margin-right 设置页面右边距 (default 10mm)
		cmd.append(" --margin-right 0 ");
		// –margin-top 设置页面上边距 (default 10mm)
		cmd.append(" --margin-top 0 ");
		cmd.append(" --zoom 2 ");
		cmd.append(srcPath);
		cmd.append(" ");
		cmd.append(destPath);

		boolean result = true;
		try {
			Process proc = Runtime.getRuntime().exec(cmd.toString());
			HtmlToPdfInterceptor error = new HtmlToPdfInterceptor(proc.getErrorStream());
			HtmlToPdfInterceptor output = new HtmlToPdfInterceptor(proc.getInputStream());
			error.start();
			output.start();
			proc.waitFor();
		} catch (Exception e) {
			result = false;
			e.printStackTrace();
		}

		return result;
	}
}
