package com.knowhow.member;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.member.dao.MemberDAO;
import com.knowhow.member.domain.MemberVO;
import com.knowhow.member.domain.ResumeVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class JoinActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		ResumeVO resumeVO = new ResumeVO();
		Result result = new Result();
//		서버에 저장됨
//		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "static/upload/";
		String uploadPath = "C:/gb_0900/git/workspace/knowhow/workspace/knowhow/WebContent/static/upload/";
		String element = "";
		int fileSize = 1024 * 1024 * 5; //5M
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		
		memberVO.setMemberIdentification(multipartRequest.getParameter("memberIdentification"));
		memberVO.setMemberPassword(multipartRequest.getParameter("memberPassword"));
		memberVO.setMemberName(multipartRequest.getParameter("memberName"));
		memberVO.setMemberAge(Integer.valueOf(multipartRequest.getParameter("memberAge")));
		memberVO.setMemberEmail(multipartRequest.getParameter("memberEmail"));
		memberVO.setMemberNickname(multipartRequest.getParameter("memberNickname"));
		memberDAO.join(memberVO);
//		맴버 아이디 가져오기
		Long memberId = memberDAO.getMemberId((multipartRequest.getParameter("memberIdentification")));
		System.out.println(memberId);
		
		
		
		System.out.println("uploadPath는 "+ uploadPath + " 입니다");
//		파일 업로드 
			String fileOriginalName = multipartRequest.getOriginalFileName("memberResume");
			String fileSystemName = multipartRequest.getFilesystemName("memberResume");
			
			System.out.println("element 이름은 " + element);
			System.out.println("fileOriginalName은 " + fileOriginalName);
			System.out.println("fileSystemName은 " + fileSystemName);
			System.out.println("joinActionController에서 맴버아이디는 " + memberId);
			resumeVO.setResumeOriginalName(fileOriginalName);
			resumeVO.setResumeSystemName(fileSystemName);
			resumeVO.setMemberId(memberId);
			System.out.println("ResumeSystemName은 "+ resumeVO.getResumeSystemName());
		
		memberDAO.insertResume(resumeVO);
		System.out.println("Resume 넣음");
		
		
//		memberVO.setMemberIdentification(req.getParameter("memberIdentification"));
//		System.out.println(memberVO.getMemberIdentification());
//		memberVO.setMemberPassword(req.getParameter("memberPassword"));
//		memberVO.setMemberName(req.getParameter("memberName"));
//		memberVO.setMemberAge(Integer.valueOf(req.getParameter("memberAge")));
//		memberVO.setMemberEmail(req.getParameter("memberEmail"));
//		memberVO.setMemberNickname(req.getParameter("memberNickname"));
//		memberDAO.join(memberVO);
		result.setPath(req.getContextPath() + "templates/member/login.jsp");
		result.setRedirect(true);
//		파일 경로 어떻게 받는지? 파일 폴더가 하나가 더필요하네?
//		memberVO.setMemberProfileFilePath(req.getParameter(""));
//		memberVO.setMemberProfileOriginalName(req.getParameter(""));
//		memberVO.setMemberProfileSystemName(req.getParameter(""));
		
//		memberDAO.join(memberVO);
		
//		result.setPath(req.getContextPath() + "login.member");
//		result.setRedirect(true);
		
		return result;
	}

}
