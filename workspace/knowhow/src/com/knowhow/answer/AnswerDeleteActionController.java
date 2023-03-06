package com.knowhow.answer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.answer.dao.AnswerDAO;
import com.knowhow.answerComment.dao.AnswerCommentDAO;
import com.knowhow.question.dao.QuestionDAO;
import com.knowhow.questionComment.dao.QuestionCommentDAO;

public class AnswerDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AnswerDAO answerDAO = new AnswerDAO();
		Result result = new Result();
		
		Long answerId = Long.parseLong(req.getParameter("answerId"));
		
		answerDAO.delete(answerId);
		result.setPath(req.getContextPath() + "/questionDetailAction.question");
		
		
		return result;
	}

}
