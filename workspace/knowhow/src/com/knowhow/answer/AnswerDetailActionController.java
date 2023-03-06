package com.knowhow.answer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.answer.dao.AnswerDAO;
import com.knowhow.answerComment.dao.AnswerCommentDAO;

public class AnswerDetailActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AnswerDAO answerDAO = new AnswerDAO();
		AnswerCommentDAO commentDAO = new AnswerCommentDAO();
		Result result = new Result();
		Long questionId = Long.parseLong(req.getParameter("questionId"));
		
		System.out.println("sss");
		req.setAttribute("answer", answerDAO.selectOne(questionId));
//		req.setAttribute("comments", commentDAO.selectAll(questionId));
		result.setPath("/templates/board/detailsPageMine.jsp");
		
		return result;
	}

}
