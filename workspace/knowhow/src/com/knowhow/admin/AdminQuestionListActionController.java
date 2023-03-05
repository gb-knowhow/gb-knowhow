package com.knowhow.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.admin.dao.AdminDAO;

public class AdminQuestionListActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();


		Map<String, Object> pageMap = new HashMap<String, Object>();
		Map<String, Object> searchMap = new HashMap<String, Object>();

		String menteeQuestionKeyword = req.getParameter("menteeQuestionKeyword");
		String temp = req.getParameter("page"); 

		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		//

		searchMap.put("menteeQuestionKeyword", menteeQuestionKeyword);
		
//		전체 질문
		Long total = adminDAO.menteeQuestionGetTotal();
		//			      한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
		//	      한 페이지에서 나오는 페이지 버튼의 개수
		
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;

		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);

		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		pageMap.put("menteeQuestionKeyword", menteeQuestionKeyword);
		req.setAttribute("menteeQuestions", adminDAO.menteeQuestionList(pageMap));
		req.setAttribute("menteeQuestionTotal", adminDAO.menteeQuestionGetTotal());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("menteeQuestionKeyword", menteeQuestionKeyword);
		result.setPath("html/lut/mentee-ask-manager.jsp");
		return result;
	}

}
