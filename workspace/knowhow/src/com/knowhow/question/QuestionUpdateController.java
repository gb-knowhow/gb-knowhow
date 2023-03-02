package com.knowhow.question;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.question.dao.QuestionDAO;
import com.knowhow.question.domain.QuestionVO;

public class QuestionUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		QuestionDAO questionDAO = new QuestionDAO();
		Long questionId = Long.parseLong(req.getParameter("questionId"));
		
		
		
		req.setAttribute("question",questionDAO.selectOne(questionId));
		
		result.setPath("/html/kdh/questionModify.jsp");
		
		return result;
	}
}
