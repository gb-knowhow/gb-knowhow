package com.knowhow.questionComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;

public class QuestionCommentFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("questionCommentList")) {
			
		} else if(target.equals("questionCommentListAction")){
			result = new QuestionCommentListActionController().execute(req, resp);
			
		} else if(target.equals("questionCommentWrite")){
			
		} else if(target.equals("questionCommentWriteAction")){
			result = new QuestionCommentWriteActionController().execute(req, resp);
			
		} else if(target.equals("questionCommentDelete")){
			
		} else if(target.equals("questionCommentDeleteAction")){
			result = new QuestionCommentDeleteActionController().execute(req, resp);
			
		} else if(target.equals("questionCommentUpdate")){
			
		} else if(target.equals("questionCommentUpdateAction")){
			result = new QuestionCommentUpdateActionController().execute(req, resp);
			
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
