package com.knowhow.askAdmin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.askAdmin.dao.AskAdminDAO;

public class AskAdminDetailActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		/* Long askAdminId = Long.valueOf(req.getParameter("askAdminId")); */
		Result result = new Result();
		AskAdminDAO askAdminDAO = new AskAdminDAO();
		req.setAttribute("askAdmin", askAdminDAO.select(Long.valueOf(req.getParameter("askAdminId"))));
		req.setAttribute("askAdminAnswer", askAdminDAO.selectAnswer(Long.valueOf(req.getParameter("askAdminId"))));
		
		result.setPath("/templates/notice/inquiry-detail.jsp");
		return result;
	}

}
