package com.knowhow.askAdmin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;
import com.knowhow.member.dao.MemberDAO;

public class AskAdminFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("/askAdmin/askAdminListAction")) {
			System.out.println("안녕");
			result = new AskAdminListActionController().execute(req, resp);
		} else if(target.equals("/askAdmin/askAdminDetail")){
			
		} else if(target.equals("/askAdmin/askAdminDetailAction")){
			result = new AskAdminDetailActionController().execute(req, resp);
			 
		} else if(target.equals("/askAdmin/askAdminWrite")){
			result = new Result();
			/* MemberDAO memberDAO = new MemberDAO(); */
//			req.setAttribute("memberIdentification", memberDAO.selectIdentification((Long)req.getSession().getAttribute("memberId")));
			result.setPath("/templates/notice/inquiry-board.jsp");
		} else if(target.equals("/askAdmin/askAdminWriteAction")){
			result = new AskAdminWriteActionController().execute(req, resp);
			
		}else {
			System.out.println(target);
		}
		
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}
