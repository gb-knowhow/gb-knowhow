package com.knowhow.resume;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.resume.dao.ResumeDAO;

public class ResumeListDeleteController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		ResumeDAO resumeDAO = new ResumeDAO();
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		JSONObject json = new JSONObject();
		
		String[] arrayParam = req.getParameterValues("resumeId");
		for (int i = 0; i < arrayParam.length; i++) {
			resumeDAO.resumeListDelete(Long.valueOf(arrayParam[i]));
		}
		
		result.setPath("/resumeListAction.resume");
		return result;
	}
}
