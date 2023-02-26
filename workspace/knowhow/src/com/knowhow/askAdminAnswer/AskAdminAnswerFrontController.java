package com.knowhow.askAdminAnswer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;

public class AskAdminAnswerFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("askAdminAnswerList")) {
			
		} else if(target.equals("askAdminAnswerListAction")){
			result = new AskAdminAnswerListActionController().execute(req, resp);
		} else if(target.equals("askAdminAnswerDetail")){
			
		} else if(target.equals("askAdminAnswerDetailAction")){
			result = new AskAdminAnswerDetailActionController().execute(req, resp);
			
		} else if(target.equals("askAdminAnswerWrite")){
			
		} else if(target.equals("askAdminAnswerWriteAction")){
			result = new AskAdminAnswerWriteActionController().execute(req, resp);
			
		} else if(target.equals("askAdminAnswerUpdate")){
			
		} else if(target.equals("askAdminAnswerUpdateAction")){
			result = new AskAdminAnswerUpdateActionController().execute(req, resp);
			
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
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
