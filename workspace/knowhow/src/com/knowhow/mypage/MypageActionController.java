package com.knowhow.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.mypage.dao.MypageDAO;

public class MypageActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Result result = new Result();
		

		req.setAttribute("myInfo", mypageDAO.selectMyInfo(1));
		System.out.println("contextPath: " + req.getContextPath() );
		
		result.setPath(req.getContextPath() + "/html/jyc/myHomePage.jsp");
		
		System.out.println("ActionController");
		
		return result;
	}

}

