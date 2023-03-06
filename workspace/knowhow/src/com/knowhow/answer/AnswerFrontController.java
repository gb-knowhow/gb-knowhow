package com.knowhow.answer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;
import com.knowhow.question.QuestionWriteActionController;

public class AnswerFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("answerList")) {
			
		} else if(target.equals("answerListAction")){
			result = new AnswerListController().execute(req, resp);
			
		}else if(target.equals("answerWrite")){
			System.out.println("들어옴 앤");
			result = new AnswerWriteController().execute(req, resp);
			
		}else if(target.equals("answerWriteAction")){
			result = new AnswerWriteActionController().execute(req, resp);
			
		}else if(target.equals("answerDelete")){
			
		}else if(target.equals("answerDeleteAction")){
			result = new AnswerDeleteActionController().execute(req, resp);
			
		}else if(target.equals("answerUpdate")){
			
		}else if(target.equals("answerUpdateAction")){
			result = new AnswerUpdateActionController().execute(req, resp);
			
		}else if(target.equals("answerDetail")){
			
		}else if(target.equals("answerDetailAction")){
			result = new AnswerDetailActionController().execute(req, resp);
			
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
		doGet(req, resp);
	}
}
