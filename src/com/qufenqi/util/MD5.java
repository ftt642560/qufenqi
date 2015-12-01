package com.qufenqi.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

public final class MD5 {
	public static String getMD5(String str){
		try {
			MessageDigest digest = MessageDigest.getInstance("md5");
			digest.update(str.getBytes("utf8"));
			byte[] meg = digest.digest();
			StringBuffer buffer = new StringBuffer();
			for(byte b : meg){
				buffer.append(String.format("%02x", b&0xff));
			}
			str = buffer.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return str;
	}
	public static void main(String[] args) {
		String str = MD5.getMD5("55");
		System.out.println(str);
		
		System.out.println(String.format("%1$tF %1$tT", new Date()));
	}
}
