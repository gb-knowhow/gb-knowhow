package com.knowhow.questionComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.questionComment.dao.QuestionCommentDAO;

public class QuestionCommentDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionCommentDAO commentDAO = new QuestionCommentDAO();
		Long commentId = Long.parseLong(req.getParameter("commentId"));
		
		commentDAO.delete(commentId);
		return null;
	}

}
