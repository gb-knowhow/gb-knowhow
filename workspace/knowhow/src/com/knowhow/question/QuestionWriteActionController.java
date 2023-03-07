package com.knowhow.question;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.question.dao.QuestionDAO;
import com.knowhow.question.domain.QuestionDTO;
import com.knowhow.question.domain.QuestionVO;

public class QuestionWriteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionDAO questionDAO = new QuestionDAO();
		QuestionVO questionVO = new QuestionVO();
		
//		로그인된 세션의 아이디
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		
		Result result = new Result();
		System.out.println(req.getParameter("questionTitle"));
		System.out.println(req.getParameter("questionContent"));

		
		
//		questionVO.setMemberId((Long)req.getSession().getAttribute("memberId"));
		questionVO.setQuestionTitle(req.getParameter("questionTitle")); // || ""
		questionVO.setQuestionContent(req.getParameter("questionContent"));
		questionVO.setMemberId(1L);
		questionVO.setCategoryId(1L);
		
		
		questionDAO.insert(questionVO);
		
		result.setPath(req.getContextPath() + "/questionListAction.question");
		result.setRedirect(true);
		
		
		return result;
	}

}
