package com.knowhow.resume;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;

public class ResumeFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		if(target.equals("resumeList")) {

		} else if(target.equals("resumeListAction")){
			result = new ResumeListActionController().execute(req, resp);

		} else if(target.equals("resumeListDelete")){

		}else if(target.equals("resumeListDeleteAction")){
			result = new ResumeListDeleteController().execute(req, resp);

		}else if(target.equals("resumeDownloadAction")){
			result = new ResumeDownloadActionController().execute(req, resp);

		}else {
			System.out.println(target);
		}

		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
