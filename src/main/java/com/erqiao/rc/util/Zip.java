package com.erqiao.rc.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;

import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipFile;
import org.apache.tools.zip.ZipOutputStream;

public class Zip {
	/**
	 * 
	 * @param filepath 压缩成的文件路径
	 * @param srcfilepath 被压缩文件路径
	 * @throws IOException 
	 */
	public static void ZipFiles(String filepath,String srcfilepath) throws IOException{
		File zip = new File(filepath);
		File[] srcFiles = new File[]{new File(srcfilepath)};
		ZipFiles(zip, null, srcFiles);
	}
	/** 
     * 压缩文件-由于out要在递归调用外,所以封装一个方法用来 
     * 调用ZipFiles(ZipOutputStream out,String path,File... srcFiles) 
     * @param zip 
     * @param path 
     * @param srcFiles 
     * @throws IOException 
     * @author isea533 
     */  
    public static void ZipFiles(File zip,String path,File... srcFiles) throws IOException{  
        ZipOutputStream out = new ZipOutputStream(new FileOutputStream(zip));  
        ZipFiles(out,path,srcFiles);  
        out.close();  
        System.out.println("*****************压缩完毕*******************");  
    }  
    /** 
     * 压缩文件-File 
     * @param zipFile  zip文件 
     * @param srcFiles 被压缩源文件 
     * @author isea533 
     */  
    public static void ZipFiles(ZipOutputStream out,String path,File... srcFiles){  
    	if(path!=null){
    		path = path.replaceAll("\\*", "/");  
    		if(!path.endsWith("/")){  
    			path+="/";  
    		}  
    	}else{
    		path="";
    	}
        byte[] buf = new byte[1024];  
        try {  
            for(int i=0;i<srcFiles.length;i++){  
                if(srcFiles[i].isDirectory()){  
                    File[] files = srcFiles[i].listFiles();  
                    String srcPath = srcFiles[i].getName();  
                    srcPath = srcPath.replaceAll("\\*", "/");  
                    if(!srcPath.endsWith("/")){  
                        srcPath+="/";  
                    }  
                    out.putNextEntry(new ZipEntry(path+srcPath));  
                    ZipFiles(out,path+srcPath,files);  
                }  
                else{  
                    FileInputStream in = new FileInputStream(srcFiles[i]);  
                    System.out.println(path + srcFiles[i].getName());  
                    out.putNextEntry(new ZipEntry(path + srcFiles[i].getName()));  
                    int len;  
                    while((len=in.read(buf))>0){  
                        out.write(buf,0,len);  
                    }  
                    out.closeEntry();  
                    in.close();  
                }  
            }  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    }  
	/** 
     * 解压到指定目录 
     * @param zipPath 
     * @param descDir 
     * @author isea533 
     */  
    public static void unZipFiles(String zipPath,String descDir)throws IOException{  
        unZipFiles(new File(zipPath), descDir);  
    }  
    /** 
     * 解压文件到指定目录 
     * @param zipFile 
     * @param descDir 
     * @author isea533 
     */  
    @SuppressWarnings({ "rawtypes" })  
    public static void unZipFiles(File zipFile,String descDir)throws IOException{  
        File pathFile = new File(descDir);  
        if(!pathFile.exists()){  
            pathFile.mkdirs();  
        }  
        ZipFile zip = new ZipFile(zipFile, "GBK"); // 以“GBK”编码创建zip文件，用来处理winRAR压缩的文件。
        for(Enumeration entries = zip.getEntries();entries.hasMoreElements();){  
            ZipEntry entry = (ZipEntry)entries.nextElement();  
            String zipEntryName = entry.getName();  
            
            //必须加这句，因为pad上传的文件名称有日期格式，windows不允许文件名包含  :
            zipEntryName = zipEntryName.replaceAll(":", "_");
            
            System.out.println("zipEntryName="+zipEntryName);
            InputStream in = zip.getInputStream(entry);  
            String outPath = (descDir+zipEntryName).replaceAll("\\*", "/");;  
            //判断路径是否存在,不存在则创建文件路径  
            File file = new File(outPath.substring(0, outPath.lastIndexOf('/')));  
            if(!file.exists()){  
                file.mkdirs();  
            }  
            //判断文件全路径是否为文件夹,如果是上面已经上传,不需要解压  
            if(new File(outPath).isDirectory()){  
                continue;  
            }  
            //输出文件路径信息  
//            System.out.println(outPath);  
              
            OutputStream out = new FileOutputStream(outPath);  
            byte[] buf1 = new byte[1024];  
            int len;  
            while((len=in.read(buf1))>0){  
                out.write(buf1,0,len);  
            }  
            in.close();  
            out.close();  
            }  
		zip.close();
        System.out.println("******************解压完毕********************");  
    }   
}
