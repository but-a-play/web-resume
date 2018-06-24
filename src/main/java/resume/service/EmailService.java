/**  
* @function 
* @author zhaozhou
* @date 2018年5月29日  
* @version 1.0  
*/
package resume.service;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Map;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import util.DataUtils;

@Service
public class EmailService {

	public boolean sendEmail(Map<String, Object> map, HttpServletRequest request) {
		boolean isSuccess = false;
		Session session = sessionSet();
		MimeMessage message = createMimeMessage(session, map, request);
		Transport transport = null;
		try {
			transport = session.getTransport();
			transport.connect("302695049@qq.com", "cketqqnuqhuncbae");
			transport.sendMessage(message, message.getAllRecipients());

			isSuccess = true;
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (transport != null) {
					transport.close();
				}
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return isSuccess;
	}

	private Session sessionSet() {
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.smtp.host", "smtp.qq.com");
		props.setProperty("mail.smtp.port", "465");
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.setProperty("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.socketFactory.port", "465");
		Session session = Session.getInstance(props);
		session.setDebug(true);
		return session;
	}

	public MimeMessage createMimeMessage(Session session, Map<String, Object> map, HttpServletRequest request) {
		String title = DataUtils.objToString(map.get("title"));
		String emailContent = DataUtils.objToString(map.get("emailContent"));
		Long resumeid = DataUtils.objToLong(map.get("resume"));
		String targetEmail = DataUtils.objToString(map.get("sendeeEmail"));
		String sendEmail = "302695049@qq.com";
		Address sender = null;
		Address receiver = null;
		MimeMessage message = null;
		try {
			sender = new InternetAddress(sendEmail, "简历平台", "UTF-8");
			receiver = new InternetAddress(targetEmail, "UTF-8");
			message = new MimeMessage(session);
			message.setFrom(sender);
			message.setRecipient(MimeMessage.RecipientType.TO, receiver);
			message.setSubject(title, "UTF-8");

			String imgUrl = "http://localhost:8080/"+request.getContextPath()
					+ "/resources/web/images/send_resume_modal_sp.png";

			// 创建图片的文本节点（html）
			String html = emailContent
					+ "<span style=\"display:block; height:40px; line-height:40px; font-size:12px; color:#5d6876;\">其它两种方式查看简历</span><div style=\"display:inline-block; width:140px; height:140px; margin-right:66px; border:1px solid #dce3ec; vertical-align:bottom;\"><i style=\"display:block; width:48px; height:106px; margin:0 auto; background:url("+imgUrl+") -5px 20px no-repeat;\"></i><p style=\"display:block; width:100%; height:32px; line-height:32px; border-top:1px solid #dce3ec;  font-size:12px; color:#96a0ac; text-align:center;\"><a href=\"http://localhost:8080/web-resume/cvresume/preview.jhtml?resumeid=55\" style=\"color:#96a0ac;\">查看链接</a></p></div><div style=\"display:inline-block; width:140px; height:140px; margin-right:0; border:1px solid #dce3ec; vertical-align:bottom;\"><i style=\"display:block; width:50px; height:106px; margin:0 auto; background:url("+imgUrl+") -96px 17px no-repeat;\"></i><p style=\"display:block; width:100%; height:32px; line-height:32px; border-top:1px solid #dce3ec;  font-size:12px; color:#96a0ac; text-align:center;\"><a href=\"http://localhost:8080/web-resume/cvresume/preview.jhtml?resumeid=55\" target=\"_blank\" style=\"color:#96a0ac;text-decoration:none;\">下载PDF简历查看</a></p></div>";
			
			message.setContent(html, "text/html;charset=UTF-8");
			message.setSentDate(new Date());
			message.saveChanges();
		} catch (UnsupportedEncodingException | MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return message;
	}

}
