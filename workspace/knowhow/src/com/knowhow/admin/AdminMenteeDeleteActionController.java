package com.knowhow.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.admin.dao.AdminDAO;

public class AdminMenteeDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		JSONObject json = new JSONObject();

		System.out.println("menteeId : " + req.getParameter("menteeId"));  
		
		 String[] arrayParam = req.getParameterValues("menteeId");
		 System.out.println(arrayParam);
	        for (int i = 0; i < arrayParam.length; i++) {
	        	System.out.println(arrayParam[i]);
	            adminDAO.menteeListDelete(Long.valueOf(arrayParam[i]));
	        }
	        
	     result.setPath("/adminMenteeListAction.admin");
		
		return result;
	}
}







