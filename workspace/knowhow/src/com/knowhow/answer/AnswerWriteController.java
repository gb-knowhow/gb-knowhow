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

public class AnswerWriteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long questionId = Long.parseLong(req.getParameter("questionId"));
		System.out.println(questionId);
		Result result = new Result();
		AnswerDAO answerDAO = new AnswerDAO();
		QuestionDAO questionDAO = new QuestionDAO();
		AnswerVO answerVO = new AnswerVO();
		
		req.setAttribute("questionId", questionId);
		answerVO.setQuestionId(questionId);
		result = new Result();
		result.setPath("/templates/board/answerWrite.jsp");
		
		return result;
	}

}
