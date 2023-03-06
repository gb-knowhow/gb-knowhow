package com.knowhow.resume;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;

public class ResumeDownloadActionController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
	      req.setCharacterEncoding("UTF-8");
	      
	      String fileSystemName = req.getParameter("resumeSystemName");
	      String fileOriginalName = req.getParameter("resumeOriginalName");
	      String filePath = req.getSession().getServletContext().getRealPath("/") + "upload/resume/" + fileSystemName;
	      
	      byte[] datas = null;
	      InputStream inputStream = null;
	      OutputStream outputStream = null;
	      
	      File file = new File(filePath);
	      
	      datas = new byte[(int)file.length()];
	      
	      inputStream = new FileInputStream(file);
	      
	      resp.setContentType("application/octet-stream");
	      resp.setHeader("Content-Disposition", "attachment;filename=\"" + new String((fileOriginalName).getBytes("UTF-8"), "ISO-8859-1") + "\"");
	      
	      outputStream = resp.getOutputStream();
	      
	      while(inputStream.read(datas) != -1) {
	         outputStream.write(datas);
	      }
	      outputStream.close();
	      inputStream.close();
	      
	      return null;
		
	}
}
