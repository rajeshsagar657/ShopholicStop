package com.shopolic.email;

import java.util.Properties;
import javax.ejb.Stateless;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
@Stateless

public class SessionBean extends Authenticator{  
	public MailSender mail;
	
	
	
	
	
	
	protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("ShopholicStop", "rajeshsagar657");
    }
	

	
    	public static void sendmail(String fromEmail, String username, String pass, String toEmail,String subject, String message)
    	{
    		
    		try
    		{
    		Properties pros= System.getProperties();
    		pros.setProperty("mail.smtp.ssl.enable", "true");
    		pros.put("mail.smtp.host", "smtp.gmail.com");
    		pros.put("mail.smtp.auth", "true");
    		pros.put("mail.smtp.port", "465");
    		pros.put("mail.smtp.SocketFactory.class", "javax.net.ssl.SSLSocketFactory");
    		pros.put("mail.smtp.SocketFactory.port", "465");
    		pros.put("mail.smtp.SocketFactory.fallback", "false");
    		
    
    		java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
    		Session mailsession = Session.getInstance(pros,null);
    		mailsession.getDebug();
    		
    		Message mailMessage= new MimeMessage(mailsession);
    		
			mailMessage.setFrom(new InternetAddress(fromEmail));
				
			mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
				
			mailMessage.setText(message);
		
			
			mailMessage.setSubject(subject);
			
			Transport transport = mailsession.getTransport("smtps");
			transport.connect("smtp.gmail.com",username,pass);
			transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
			
				
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	
    	}
    	
       
    }


