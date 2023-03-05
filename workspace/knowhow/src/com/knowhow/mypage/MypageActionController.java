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

		req.setAttribute("myInfo", mypageDAO.selectMyInfo(1L));
		req.setAttribute("countMyBoards", mypageDAO.countMyBoards(1L));
		req.setAttribute("likedIGot", mypageDAO.countLikedIGot(1L));
		req.setAttribute("countMyComments", mypageDAO.countMyComments(1L));
		req.setAttribute("countBoardsILiked", mypageDAO.countBoardsILiked(1L));
		
		result.setPath(req.getContextPath() + "/templates/mypage/myHomePage.jsp");
		
		System.out.println("ActionController");
		
		return result;
	}

}

