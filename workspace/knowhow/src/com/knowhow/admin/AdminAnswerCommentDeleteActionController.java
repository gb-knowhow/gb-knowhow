package com.knowhow.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.admin.dao.AdminDAO;

public class AdminAnswerCommentDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();
		
		
//		forward는 데이터를 전달할 값이 있거나, 경로를 바꾸지 않을 때 사용한다.(초기화를 안시키기 때문이다.)
//		redirect는 지금 페이지에서 데이터를 전달할 값이 없고 다음 경로에서 값을 담아야 하니까 비우고 이동해야 할 때 사용하거나 경로를 바꿀 때 사용(초기화를 시킨다.) 
		
		return result;
	}

}