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

public class AdminDashBoardActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();
		
		Map<String, Object> menteeQuestionMap = new HashMap<String, Object>();
		Map<String, Object> mentorReplyMap = new HashMap<String, Object>();
		Map<String, Object> newMemberMap = new HashMap<String, Object>();
		Map<String, Object> askAdminMap = new HashMap<String, Object>();
		
		req.setAttribute("menteequestion", adminDAO.dashBoardMenteeQuestion(menteeQuestionMap));
		req.setAttribute("mentorreply", adminDAO.dashBoardMentorReply(mentorReplyMap));
		req.setAttribute("newmember", adminDAO.dashBoardNewMember(newMemberMap));
		req.setAttribute("askadmin", adminDAO.dashBoardAskAdmin(askAdminMap));
		result.setPath("html/lut/dash-board-manager.jsp");
		return result;
	}

}
