package com.qufenqi.util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthenticator extends Authenticator{
	private String strUser;
	private String strPwd;  
	public MyAuthenticator(String user, String password) {  
		this.strPwd = user;
		this.strPwd = password;
	}
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(strUser, strPwd);
	}
}
