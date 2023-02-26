package com.knowhow.answerComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;

public class AnswerCommentFrontController  {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("answerCommentList")) {
			
		} else if(target.equals("answerCommentListAction")){
			result = new AnswerCommentListController().execute(req, resp);
			
		} else if(target.equals("answerCommentWrite")){
			
		} else if(target.equals("answerCommentWriteAction")){
			result = new AnswerCommentWriteActionController().execute(req, resp);
			
		} else if(target.equals("answerCommentDelete")){
			
		} else if(target.equals("answerCommentDeleteAction")){
			result = new AnswerCommentDeleteActionController().execute(req, resp);
			
		}else if(target.equals("answerCommentUpdate")){
			
		} else if(target.equals("answerCommentUpdateAction")){
			result = new AnswerCommentUpdateActionController().execute(req, resp);
			
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
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
