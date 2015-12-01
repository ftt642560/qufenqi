package com.qufenqi.util;

import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


/**
 * 发送邮件的Java类
 * @author Administrator
 *
 */
public class SendEmails {
	private static Properties properties;
	private static Session session;
	private static MimeMessage mimeMessage;
	private static Multipart multipart;
	private static BodyPart bodyPart;
	public static void send(String to){
		String subject = "趣分期网上商城邮箱验证激活";
		String content = "感谢您在趣分期商城注册,复制以下链接，即可完成安全验证："
				+"http://127.0.0.1/qufenqi/registbyEmail.action?checkemail="+to
				+"为保障您的帐号安全，请在24小时内点击该链接，您也可以将链接制到浏览器地址栏访问。"
				+"若您没有申请过验证邮箱 ，请您忽略此邮件，由此给您带来的不便请谅解";
		String hostName = "smtp.qq.com";//发件人使用发邮件的电子信箱服务器
		String portcool = "smtp";
		String port = "25";
		String from = "1254171906@qq.com";
		String userName = "1254171906@qq.com";//进行用户身份验证时，设置用户名和密码
		String password = "bdilubkpwnyibagj";
		String style = "text/html;charset=UTF-8";
		
		if(properties == null){
			properties = System.getProperties();
		}
		properties.put("mail.smtp.host", hostName);
//		properties.put("mail.store.protocol", portcool);
		properties.put("mail.smtp.auth", "true");//这样才能通过验证
		session = Session.getDefaultInstance(properties, null);
		mimeMessage = new MimeMessage(session);
		try {
			mimeMessage.setSubject(subject);
			bodyPart = new MimeBodyPart();
			bodyPart.setContent(content	, style);
			multipart = new MimeMultipart();
			//// 在组件上添加邮件文本
			multipart.addBodyPart(bodyPart);
			mimeMessage.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(to));
			mimeMessage.setFrom(new InternetAddress(from));
			mimeMessage.setContent(multipart);
			mimeMessage.saveChanges();
			System.out.println("正在发送邮件....");
			Session mailSession = Session.getInstance(properties, null);
			Transport transport = mailSession.getTransport(portcool);
			transport.connect((String)properties.get("mail.smtp.host"),userName,password);
			// 真正的连接邮件服务器并进行身份验证
			// 发送邮件
			transport.sendMessage(mimeMessage, mimeMessage.getRecipients(javax.mail.Message.RecipientType.TO));
			System.out.println("发送邮件成功！");
			transport.close();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
