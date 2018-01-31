package com.shopolic.OTP;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.io.*;


public class Sms {
	
	public static int SendSMS(String AccountID, String Email, String Password,
			String Recipient, String Message,StringBuffer Response) throws IOException
			{
			String RequestURL = "http://www.redoxygen.net/sms.dll?Action=SendSMS";

			String Data = null;
			try {
				Data = ("AccountId=" + URLEncoder.encode(AccountID, "UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				Data += ("&Email=" + URLEncoder.encode(Email, "UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				Data += ("&Password=" + URLEncoder.encode(Password, "UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				Data += ("&Recipient=" + URLEncoder.encode(Recipient, "UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				Data += ("&Message=" + URLEncoder.encode(Message, "UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			int Result = -1;
			URL Address = null;
			try {
				Address = new URL(RequestURL);
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			HttpURLConnection Connection = (HttpURLConnection) Address.openConnection();
			try {
				Connection.setRequestMethod("POST");
			} catch (ProtocolException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Connection.setDoInput(true);
			Connection.setDoOutput(true);

			DataOutputStream Output = null;
			try {
				Output = new DataOutputStream(Connection.getOutputStream());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Output.writeBytes(Data);
			Output.flush();
			Output.close();

			BufferedReader Input = new BufferedReader(new InputStreamReader(Connection.getInputStream()));
			StringBuffer ResponseBuffer = new StringBuffer();
			String InputLine;

			while ((InputLine = Input.readLine()) != null)
			{
			ResponseBuffer = ResponseBuffer.append(InputLine);
			ResponseBuffer = ResponseBuffer.append("\n\n\n");
			}

			Response.replace(0, 0, ResponseBuffer.toString());
			String ResultCode = Response.substring(0, 4);
			Result = Integer.parseInt(ResultCode);
		

			return Result;
			}
	/*public static void main(String[] args) throws IOException {
			 StringBuffer sb=new StringBuffer("send successfully");
		 Sms.SendSMS("CI00195965", "sagarrajesh657@gmail.com","	uIpkBy82", "+917386882904", "Hi Mr.Rajesh Sagar Ammula . Welcome to Rajesh Sagar ShopaholicStop! and your OTP for Registration is S6Y78", sb);
	}*/
}
