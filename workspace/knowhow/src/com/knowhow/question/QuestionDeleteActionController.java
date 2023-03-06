package com.knowhow.question;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.question.dao.QuestionDAO;

public class QuestionDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionDAO questionDAO = new QuestionDAO();
		Result result = new Result();
		Long questionId = Long.parseLong(req.getParameter("questionId"));
		
		questionDAO.delete(questionId);
		result.setPath(req.getContextPath() + "/questionListAction.question");
		
		
		return result;
	}

}
