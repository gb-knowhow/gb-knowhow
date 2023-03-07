package com.knowhow.question;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.question.dao.QuestionDAO;
import com.knowhow.question.domain.QuestionVO;

public class QuestionUpdateActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionDAO questionDAO = new QuestionDAO();
		Result result = new Result();
		QuestionVO questionVO = new QuestionVO();
		Long questionId = Long.parseLong(req.getParameter("questionId"));
		
		questionVO.setQuestionId(questionId);
		questionVO.setQuestionTitle(req.getParameter("questionTitle"));
		questionVO.setQuestionContent(req.getParameter("questionContent"));
		
		questionDAO.update(questionVO);
		
		result.setPath(req.getContextPath() + "/questionListAction.question");
		result.setRedirect(true);
		return result;
	}

}
