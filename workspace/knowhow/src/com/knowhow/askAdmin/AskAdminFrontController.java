package com.knowhow.askAdmin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;

public class AskAdminFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("askAdminList")) {
			
		} else if(target.equals("askAdminListAction")){
			result = new AskAdminListActionController().execute(req, resp);
			
		} else if(target.equals("askAdminDetail")){
			
		} else if(target.equals("askAdminDetailAction")){
			result = new AskAdminDetailActionController().execute(req, resp);
			
		} else if(target.equals("askAdminWrite")){
			
		} else if(target.equals("askAdminWriteAction")){
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
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
