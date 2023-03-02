package com.knowhow.question;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.question.dao.QuestionDAO;
import com.knowhow.questionComment.dao.QuestionCommentDAO;

public class QuestionDetailActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionDAO questionDAO = new QuestionDAO();
		QuestionCommentDAO commentDAO = new QuestionCommentDAO();
		Result result = new Result();
		Long questionId = Long.parseLong(req.getParameter("questionId"));
		
		req.setAttribute("question", questionDAO.selectOne(questionId));
		req.setAttribute("comments", commentDAO.selectAll(questionId));
		result.setPath("/html/kdh/detailsPageMine.jsp");
		
		return result;
	}

}
