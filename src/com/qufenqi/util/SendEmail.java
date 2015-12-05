package com.qufenqi.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 * 邮箱发送类
 * @author Administrator
 *
 */
public  class SendEmail {
	/** 
	 *1.获得一个Session对象. 
	 *2.创建一个代表邮件的对象Message. 
	 *3.发送邮件Transport 
	 */  
	public static void send(String to){//to 收件人
		String subject = "趣分期网上商城邮箱验证激活";
		String content = "感谢您在趣分期商城注册,复制以下链接，即可完成安全验证："
				+"http://127.0.0.1:8080/qufenqi/registbyEmail.action?checkemail="+to
				+"为保障您的帐号安全，请在24小时内点击该链接，您也可以将链接制到浏览器地址栏访问。"
				+"若您没有申请过验证邮箱 ，请您忽略此邮件，由此给您带来的不便请谅解";
		String host = "smtp.qq.com";//发件人使用发邮件的电子信箱服务器
		String portcool = "smtp";
		String port = "25";
		String from = "1254171906@qq.com";
		String password = "nfdqiklmzubpgeih";
//		String from = "fangtt_0627@163.com";//发邮件的出发地（发件人的邮箱）
//		String password = "whxx06270924"; // 发件人的密码
		
		// 1.获得连接对象 
		Properties properties = System.getProperties();
			//设置邮件服务器地址
		properties.put("mail.smtp.host", host);
			//设置协议
		properties.put("mail.store.protocol", portcool);
		properties.put("mail.smtp.port", port);//设置端口
			//取得session
		properties.put("mail.smtp.auth", "true");//这样才能通过验证
		MyAuthenticator myauth = new MyAuthenticator(from, password);
		Session session = Session.getDefaultInstance(properties, myauth); 
		
		// 2.创建邮件对象:  message  
		MimeMessage message = new MimeMessage(session);   
		try {
			// 设定发送邮件的地址   // 设置发件人: 
			message.setFrom(new InternetAddress(from));
			// 设定接受邮件的地址   // 设置收件人: 
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to)); 
			// 设定邮件主题  
		    message.setSubject(subject);
		    //
		    message.setSentDate(new Date());
		    // 设定邮件内容  
		    BodyPart mdp=new MimeBodyPart();//新建一个存放信件内容的BodyPart对象
		    // 设置邮件正文: 
		    mdp.setContent(content,"text/html;charset=utf-8");//给BodyPart对象设置内容和格式/编码方式
		    Multipart mm=new MimeMultipart();//新建一个MimeMultipart对象用来存放BodyPart对 象(事实上可以存放多个) 
		    mm.addBodyPart(mdp);//将BodyPart加入到MimeMultipart对象中(可以加入多个BodyPart)  
		    message.setContent(mm);//把mm作为消息对象的内容
		    //message.setText(content); 
		    message.saveChanges();  
		    // 3.发送邮件:
		    Transport transport = session.getTransport(portcool);
			transport.connect((String)properties.get("mail.smtp.host"),from,password);
			// 真正的连接邮件服务器并进行身份验证
			// 发送邮件
			transport.sendMessage(message, message.getRecipients(javax.mail.Message.RecipientType.TO));
			System.out.println("发送邮件成功！");
			transport.close();
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}   
	}
}
