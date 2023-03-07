package com.knowhow.question;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.answer.dao.AnswerDAO;
import com.knowhow.answerComment.dao.AnswerCommentDAO;
import com.knowhow.question.dao.QuestionDAO;
import com.knowhow.question.domain.QuestionVO;
import com.knowhow.questionComment.dao.QuestionCommentDAO;
import com.knowhow.questionComment.domain.QuestionCommentVO;

public class QuestionDetailActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionDAO questionDAO = new QuestionDAO();
		QuestionCommentDAO commentDAO = new QuestionCommentDAO();
		QuestionCommentVO questionCommVO = new QuestionCommentVO();
		AnswerCommentDAO answerCommentDAO = new AnswerCommentDAO();
		AnswerDAO answerDAO = new AnswerDAO();
		Result result = new Result();
		Long questionId = Long.parseLong(req.getParameter("questionId"));
//		Long memberId = (Long)req.getSession().getAttribute("memberId");
//		System.out.println(memberId);
//		Long commentId = Long.parseLong(req.getParameter("commentId"));
		
		
		
		req.setAttribute("question", questionDAO.selectOne(questionId));
		req.setAttribute("answer", answerDAO.selectOne(questionId));
		req.setAttribute("comments", commentDAO.selectAll(questionId));
		req.setAttribute("answercommets", answerCommentDAO.selectAll(questionId));
		
		
		
		result.setPath("/templates/board/detailsPageMine.jsp");
		
		return result;
	}

}
