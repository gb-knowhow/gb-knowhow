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

public class AdminQuestionDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		JSONObject json = new JSONObject();
//		req.getParameterValues("questionId")의 questionId는 mapper의 delete 쿼리문의 #{questionId}로 하게 해준다.
		 String[] arrayParam = req.getParameterValues("questionId");
	        for (int i = 0; i < arrayParam.length; i++) {
	            adminDAO.menteeQuestionListDelete(Long.valueOf(arrayParam[i]));
	        }
	        
	     result.setPath("/adminQuestionListAction.admin");
		
		return result;
	}

}
