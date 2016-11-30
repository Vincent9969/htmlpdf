package com.org.thcic.db.filter;



import java.awt.Color;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.xhtmlrenderer.pdf.ITextFontResolver;
import org.xhtmlrenderer.pdf.ITextRenderer;




import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.Image;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.PdfContentByte;
import com.lowagie.text.pdf.PdfCopy;
import com.lowagie.text.pdf.PdfGState;
import com.lowagie.text.pdf.PdfImportedPage;
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfStamper;

public class CreatePdfGen {
	public static void main(String[] args) throws DocumentException,
			IOException {
		try {
			convertHtmlToPdf("E:\\project\\htmlpdf\\WebRoot\\word.html"
					,"f:\\html\\pdf\\word2.pdf"
					,"f:\\html\\font");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			 }
	
	static public boolean convertHtmlToPdf(String inputFile, String outputFile, String fontLocation)
		    throws Exception {
		        System.out.println("开始转化");
		        OutputStream os = new FileOutputStream(outputFile);    
		        ITextRenderer renderer = new ITextRenderer();    
		        String url = new File(inputFile).toURI().toURL().toString();
		        
		        renderer.setDocument(url);  
		         
		        // 解决中文支持问题    
		        ITextFontResolver fontResolver = renderer.getFontResolver();   
//		        fontResolver.addFont("D:\\work\\代码\\ONE\\shoes\\keyia-base-web\\src\\main\\webapp\\components\\font\\msyh.ttc"
//		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);    
//		        fontResolver.addFont("D:\\work\\代码\\ONE\\shoes\\keyia-base-web\\src\\main\\webapp\\components\\font\\msyhbd.ttc"
//		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);    
//		        fontResolver.addFont("D:\\work\\代码\\ONE\\shoes\\keyia-base-web\\src\\main\\webapp\\components\\font\\msyhl.ttc"
//		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);    
//		        fontResolver.addFont("D:\\work\\代码\\ONE\\shoes\\keyia-base-web\\src\\main\\webapp\\components\\font\\simsunb.ttf"
//		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);    
		       fontResolver.addFont(fontLocation + File.separator + "ARIALUNI.TTF"
		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		        fontResolver.addFont(fontLocation + File.separator + "msyh.ttc"
		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);  
		        fontResolver.addFont(fontLocation + File.separator + "msyhbd.ttc"
		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		        fontResolver.addFont(fontLocation + File.separator + "msyhl.ttc"
		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		        fontResolver.addFont(fontLocation + File.separator + "simsun.ttc"
		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED); 
		        fontResolver.addFont(fontLocation + File.separator + "simsunb.ttf"
		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED); 
		       fontResolver.addFont(fontLocation + File.separator + "TIMES.TTF"
		        		, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		       fontResolver.addFont(fontLocation + File.separator + "TIMESBD.TTF"
		    		   , BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		       fontResolver.addFont(fontLocation + File.separator + "TIMESBI.TTF"
		    		   , BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		       fontResolver.addFont(fontLocation + File.separator + "TIMESBI.TTF"
		    		   , BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		       fontResolver.addFont(fontLocation + File.separator + "STZhongsong.TTF"
		    		   , BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		       fontResolver.addFont(fontLocation + File.separator + "标准仿宋体简.ttf"
		    		   , BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		       /*fontResolver.addFont(fontLocation + File.separator + "simfang.ttf"
		    		   , BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);*/
		       fontResolver.addFont(fontLocation + File.separator + "TimesCE-Bold.otf"
		    		   , BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		        
		        //解决图片的相对路径问题
		        //renderer.getSharedContext().setBaseURL("file:/"+imageDiskPath);
		        renderer.layout();   
		        renderer.createPDF(os); 
		        os.flush();
		        os.close();
		        
		        return true;
		    }
}