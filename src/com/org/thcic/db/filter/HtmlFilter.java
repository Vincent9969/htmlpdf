package com.org.thcic.db.filter;



import java.io.*;
import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;

import java.util.*; // For Date class

/** Simple filter that prints a report on the standard output
* each time an associated servlet or JSP page is accessed.
*/

public class HtmlFilter implements Filter {
	
	private static Logger logger = Logger.getLogger(HtmlFilter.class);
	
   public void doFilter(ServletRequest request,
                   ServletResponse resp,
                  FilterChain chain)
       throws ServletException, IOException {
		System.out.println("test filter ..." );
     HttpServletRequest req = (HttpServletRequest)request;
     
     HttpServletResponse response = (HttpServletResponse) resp;
     //生成用于打印的html
     if( req.getRequestURI().contains("wordprint")){
    	// chain.doFilter(request,response);
 		ResponseWrapper wrapper = new ResponseWrapper((HttpServletResponse)resp);
 		// 这句话非常重要，注意看到第二个参数是我们的包装器而不是response
 		chain.doFilter(request, wrapper);
 		// 处理截获的结果并进行处理，比如替换所有的“名称”为“铁木箱子”
 		String result = wrapper.getResult();
 		System.out.println("result:" + result);
 		String html_path = req.getSession().getServletContext().getRealPath("/WEB-INF/tmp/html");
 		String ip = "word";//getIpAddr(req);
 		
 		String htmlFilePath = html_path + File.separator + ip +".html";
 		String pdfName = ip +".pdf";
 		String pdfFilePath = req.getSession().getServletContext().getRealPath("/WEB-INF/tmp/pdf")+File.separator + pdfName;
 		File file= new File(htmlFilePath);
 	//	FileUtils.deleteQuietly(file);
 		file.createNewFile();
 	//	FileUtils.writeStringToFile(file, result, "UTF8", false);
 		OutputStream outstream = new FileOutputStream(file);
 		BufferedOutputStream bout = new BufferedOutputStream(outstream);
 		bout.write(result.getBytes("UTF8"));
 		bout.close();
 		outstream.close();
 		
 		
 		String fontPath = "f:\\html\\font";
 		
 		boolean convertHtmlToPdf = false;
 		//转换
 		try {
			 convertHtmlToPdf = CreatePdfGen.convertHtmlToPdf(htmlFilePath, pdfFilePath,fontPath);
			 if(convertHtmlToPdf){
				 File out_file = new File(pdfFilePath);
				 OutputStream out;
					try {
						
						response.setContentType("application/pdf");
						response.setHeader("Content-Disposition", "attachment;filename="
								+ new String(pdfName.getBytes("UTF8"), "ISO8859_1"));
						out = response.getOutputStream();
						out.write(FileUtils.readFileToByteArray(out_file));
						out.flush();
						
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						// 输出最终的结果
				 		PrintWriter output = response.getWriter();
				 		output.write("转换失败");
				 		output.flush();
				 		output.close();
						
					}
				 
			 }
 		
 		
 		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
 		
 		
 		
     }else{
    	 chain.doFilter(request,response);
     }
     
   }

   public void init(FilterConfig config)
       throws ServletException {
   }

public void destroy() {}

//获取客户端的ip
		private String getIpAddr(HttpServletRequest request) {
		       String ip = request.getHeader("x-forwarded-for");
		       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		           ip = request.getHeader("Proxy-Client-IP");
		       }
		       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		           ip = request.getHeader("WL-Proxy-Client-IP");
		       }
		       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		           ip = request.getHeader("X-real-ip");
		       }
		       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		           ip = request.getRemoteAddr();
		       }
		       return ip;
		 }


//获取本机ip
	/*private String getLocalIp(){
		InetAddress ip = null;
		String localip = null;
		try {
			ip = ip.getLocalHost();
			String localname=ip.getHostName();
			localip=ip.getHostAddress();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return localip;
	}*/
}