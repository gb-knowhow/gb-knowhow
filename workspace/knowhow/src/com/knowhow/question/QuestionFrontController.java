package com.knowhow.question;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;


public class QuestionFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("questionList")) {
			
		} else if(target.equals("questionListAction")){
			result = new QuestionListActionController().execute(req, resp);
			
		} else if(target.equals("questionWrite")){
			
		} else if(target.equals("questionWriteAction")){
			result = new QuestionWriteActionController().execute(req, resp);
			
		} else if(target.equals("questionUpdate")){
			
		} else if(target.equals("questionUpdateAction")){
			result = new QuestionUpdateActionController().execute(req, resp);
			
		} else if(target.equals("questionDelete")){
			
		} else if(target.equals("questionDeleteAction")){
			result = new QuestionDeleteActionController().execute(req, resp);
			
		} else {
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
