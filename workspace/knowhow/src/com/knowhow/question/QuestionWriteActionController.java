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
//		Long memberId = Long.parseLong(req.getParameter("memberId"));
		Result result = new Result();
		System.out.println(req.getParameter("questionTitle"));
		System.out.println(req.getParameter("questionContent"));
//		Long memberId = memberDAO.login(memberIdentification, memberPassword);
		
		
//	      if(memberId != null) {
//	         HttpSession session = req.getSession();
//	         session.setAttribute("memberId", memberId);
//	         result.setPath(req.getContextPath() + "/main.jsp");
//	         result.setRedirect(true);
//	      }
		
		
//	      questionVO.setQuestionId((Long)req.getSession().getAttribute("memberId"));
		questionVO.setQuestionTitle(req.getParameter("questionTitle")); // || ""
		questionVO.setQuestionContent(req.getParameter("questionContent"));
		questionVO.setMemberId(1L);
		questionVO.setCategoryId(1L);
		
		
		questionDAO.insert(questionVO);
		result.setPath(req.getContextPath() + "/questionListAction.question");
		
		
		return result;
	}

}
