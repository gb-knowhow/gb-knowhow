package com.knowhow.answer;

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

public class AnswerWriteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AnswerDAO answerDAO = new AnswerDAO();
		AnswerVO answerVO = new AnswerVO();
		QuestionDAO questionDAO = new QuestionDAO();
//		System.out.println(Long.valueOf(req.getParameter("questionId")));
		Long questionId = Long.parseLong(req.getParameter("questionId"));
//		Long memberId = (Long)req.getSession().getAttribute("memberId");
		Result result = new Result();
		String answerTitle = req.getParameter("answerTitle");
		String answerContent = req.getParameter("answerContent");
//		questionVO.setMemberId((Long)req.getSession().getAttribute("memberId"));
		
		
		
		answerVO.setAnswerTitle(answerTitle);
		answerVO.setAnswerContent(answerContent);
		answerVO.setMemberId(1L);
		answerVO.setQuestionId(questionId);
		 
		System.out.println(answerVO);
		
		req.setAttribute("answerTitle",answerTitle);
		req.setAttribute("answerContent",answerContent);
		req.setAttribute("questionId",questionId);
		
		answerDAO.insert(answerVO);
		result.setPath(req.getContextPath() + "/questionDetailAction.question");
//		result.setPath("/templates/board/detailsPageMine.jsp");
		
		return result;
	}

}
