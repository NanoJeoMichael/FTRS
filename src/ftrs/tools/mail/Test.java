package ftrs.tools.mail;

public class Test {
	public static void main(String[] args){
        //这个类主要是设置邮件
	  MailSenderInfo mailInfo = new MailSenderInfo(); 
	  mailInfo.setMailServerHost("smtp.qq.com"); 
	  mailInfo.setMailServerPort("25"); 
	  mailInfo.setValidate(true); 
	  mailInfo.setUserName("328846994@qq.com"); 
	  mailInfo.setPassword("jkj15923214110");//您的邮箱密码 
	  mailInfo.setFromAddress("328846994@qq.com"); 
	  mailInfo.setToAddress("NanoJeoMichael@hotmail.com"); 
	  mailInfo.setSubject("感谢你注册FTRS"); 
	  mailInfo.setContent("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"); 
        //这个类主要来发送邮件
	  SimpleMailSender sms = new SimpleMailSender();
         sms.sendTextMail(mailInfo);//发送文体格式 
         SimpleMailSender.sendHtmlMail(mailInfo);//发送html格式
	}
}
