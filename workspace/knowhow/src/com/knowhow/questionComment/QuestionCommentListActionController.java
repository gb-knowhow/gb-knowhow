package com.knowhow.questionComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.questionComment.dao.QuestionCommentDAO;

public class QuestionCommentListActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionCommentDAO commentDAO = new QuestionCommentDAO();
		Result result = new Result();
		Long questionId = Long.parseLong(req.getParameter("questionId"));
		
		req.setAttribute("comments",commentDAO.selectAll(questionId));
		result.setPath("/templates/board/detailsPageMine.jsp");
		
		
		return result;
	}

}
