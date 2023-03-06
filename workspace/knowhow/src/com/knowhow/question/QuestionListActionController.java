package com.knowhow.question;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.question.dao.QuestionDAO;

public class QuestionListActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QuestionDAO questionDAO = new QuestionDAO();
		Result result = new Result();
		Map<String, Object> pageMap = new HashMap<String, Object>();

		String temp = req.getParameter("page");

		int page = temp == null ? 1 : Integer.parseInt(temp);

		Long total = questionDAO.getTotal();

//	      한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//	      한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;

		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int) Math.ceil(total / (double) rowCount);

		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;

		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);

		req.setAttribute("questions", questionDAO.selectAll(pageMap));
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);

		result.setPath("templates/board/questionList.jsp");

		return result;

	}

}
