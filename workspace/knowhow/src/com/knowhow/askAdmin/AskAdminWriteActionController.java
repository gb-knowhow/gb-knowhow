package com.knowhow.askAdmin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.askAdmin.dao.AskAdminDAO;
import com.knowhow.askAdmin.domain.AskAdminVO;

public class AskAdminWriteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AskAdminVO askAdminVO = new AskAdminVO();
		AskAdminDAO askAdminDAO = new AskAdminDAO();
		Result result = new Result();
		
		askAdminVO.setAskAdminTitle(req.getParameter("askAdminTitle"));
		askAdminVO.setAskAdminContent(req.getParameter("askAdminContent"));
		askAdminVO.setMemberId(1L);
		
		askAdminDAO.insert(askAdminVO);
		
		result.setPath(req.getContextPath() + "/askAdmin/askAdminListAction.askAdmin");
		result.setRedirect(true);
		
		return result;
	}

}
