package com.knowhow.questionComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.answer.dao.AnswerDAO;
import com.knowhow.answer.domain.AnswerVO;
import com.knowhow.question.dao.QuestionDAO;
import com.knowhow.question.domain.QuestionVO;
import com.knowhow.questionComment.dao.QuestionCommentDAO;
import com.knowhow.questionComment.domain.QuestionCommentVO;

public class QuestionCommentWriteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionCommentDAO commentDAO = new QuestionCommentDAO();
		QuestionCommentVO questionCommVO = new QuestionCommentVO();
//		System.out.println(Long.valueOf(req.getParameter("questionId")));
		Long questionId = Long.parseLong(req.getParameter("questionId"));
//		Long memberId = (Long)req.getSession().getAttribute("memberId");
		Result result = new Result();
		
//		questionCommVO.setMemberId((Long)req.getSession().getAttribute("memberId"));
		questionCommVO.setCommentContent(req.getParameter("replyContent"));
		questionCommVO.setMemberId(1L);
		questionCommVO.setQuestionId(questionId);
		 
		commentDAO.insert(questionCommVO);
		return null;
	}
}