package com.erqiao.rc.action;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import com.erqiao.rc.util.FormFile;


public class HttpUpload {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("start..............");
		post("c:\\111.zip");
//		post("c:\\0001.png");
	}

//	private static String newName = "image.zip";
	//    private static String uploadFile = "/sdcard/Photo/001.jpg";
//	private static String actionUrl = "http://192.168.1.111:8080/UploadZipServlet/UploadServlet";
	private static String actionUrl = "http://192.168.1.102:8080/ErqiaoWeb_s2sh/Upload";
	private static final int TIME_OUT = 10*1000; //超时时间
//	private static final String TAG = "uploadFile";
	public static void post(String pathToOurFile){
		
		File file = null;// 本地文件  
		String result=null;
		String end = "\r\n";
		String twoHyphens = "--";
		String boundary = "---------------------------7da2e536604c8";
		try {
			file = new File(pathToOurFile);  
			URL url = new URL(actionUrl);
//			Log.e(TAG, "使用URL打开一个链接....");
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setReadTimeout(TIME_OUT);
			con.setConnectTimeout(TIME_OUT);
			/* 允许Input、Output，不使用Cache */
			con.setDoInput(true);
			con.setDoOutput(true);
			con.setUseCaches(false);
			/* 设置传送的method=POST */
			con.setRequestMethod("POST");
			/* setRequestProperty */
			con.setRequestProperty("Content-Length", "" + file.length());// 文件大小  
//			con.setRequestProperty("Accept","application/zip, */*");
			con.setRequestProperty("Connection", "Keep-Alive");// 连接方式，此处为长连接  
			con.setRequestProperty("Charset", "UTF-8");
			con.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + boundary);
			/* 设置DataOutputStream */
			System.out.println("++++++++++++++++DataOutputStream+++++++++++++++++++++");
		
			
//			Log.e(TAG, "建立链接....");
			DataOutputStream ds = new DataOutputStream(con.getOutputStream());
//			FormFile formfile = new FormFile(file.getName(), file, "file", "application/x-zip-compressed");
			FormFile formfile = new FormFile(file.getName(), file, "file", null);
			ds.writeBytes(twoHyphens + boundary + end);
			ds.writeBytes("Content-Disposition: form-data; " + "name=\"file\";filename=\"" + formfile.getFilname() + "\"" + end);
//			ds.writeBytes("Content-Type:application/ms-word\r\n\r\n");  
			ds.writeBytes("Content-Type:"+ formfile.getContentType()+"\r\n\r\n");  
//			ds.writeBytes(end);
			
			System.out.println("+++++++++++++++++++取得文件的FileInputStream++++++++++++++++++");
			/* 取得文件的FileInputStream */
			FileInputStream fStream = new FileInputStream(file);
			/* 设置每次写入1024bytes */
			int bufferSize = 1024*2;
			byte[] buffer = new byte[bufferSize];
			int length = -1;
			/* 从文件读取数据至缓冲区 */
			while ((length = fStream.read(buffer)) != -1) {
				/* 将资料写入DataOutputStream中 */
				ds.write(buffer, 0, length);
			}
			ds.writeBytes(end);
			ds.writeBytes(twoHyphens + boundary + twoHyphens + end);
			/* close streams */
			fStream.close();
			ds.flush();
			
			// HTTP响应  
			/*BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));  
	        String line = null;  
	        StringBuffer sb = new StringBuffer();  
	        while ((line = br.readLine()) != null) {  
	            sb.append(line);  
	        }  
	        System.out.println(sb.toString());  */
			System.out.println("文件写入OutputStream完毕，等待服务器响应...");
			int res = con.getResponseCode();
			System.out.println("response code:" + res);
			// 取得Response内容 
			if (res == 200) {
				System.out.println("request success");
				InputStream is = con.getInputStream();
				StringBuffer b = new StringBuffer();
				int ch;
				while ((ch = is.read()) != -1) {
					b.append((char) ch);
				}
				result = b.toString();
				System.out.println("result : " + result);
				if(result.equals("finish download")){
					//关闭DataOutputStream 
					ds.close();
					System.out.println("上传成功");
//					return true;
				}else{
//					return false;
				}
			} else {
				System.out.println( "request error");
//				return false;
			}
			/* 关闭DataOutputStream */

		} catch (Exception e) {
			System.out.println("上传失败");
		}
	}
}
