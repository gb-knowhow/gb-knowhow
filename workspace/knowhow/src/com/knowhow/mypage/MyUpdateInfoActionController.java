package com.knowhow.mypage;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.member.domain.MemberVO;
import com.knowhow.member.domain.ResumeVO;
import com.knowhow.mypage.dao.MypageDAO;
import com.knowhow.resume.dao.ResumeDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MyUpdateInfoActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		MemberVO memberVO = new MemberVO();
		ResumeVO resumeVO = new ResumeVO();
		MypageDAO mypageDAO = new MypageDAO();
		ResumeDAO resumeDAO = new ResumeDAO();
		Result result = new Result();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/resume/";
		int fileSize = 1024 * 1024 * 5; //5M
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
//		Long memberId = Long.valueOf(multipartRequest.getParameter("memberId"));
		Long memberId = 1L;
		
		
		memberVO.setMemberId(memberId);
		memberVO.setMemberAge(Integer.valueOf(multipartRequest.getParameter("memberAge")));
		memberVO.setMemberEmail(multipartRequest.getParameter("memberEmail"));
		memberVO.setMemberName(multipartRequest.getParameter("memberName"));
		memberVO.setMemberNickname(multipartRequest.getParameter("memberNickname"));
		memberVO.setMemberPassword(multipartRequest.getParameter("newPassword"));
		
		resumeDAO.selectResume(memberId).stream().map(resume -> new File(uploadPath+resume.getResumeSystemName())).forEach(resume -> {
			if(resume.exists()) {
				resume.delete();
			}
		});;
	
		mypageDAO.updateMyInfo(memberVO);
		resumeDAO.deleteResume(memberId);
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			if(fileOriginalName == null) {continue;}
			
			resumeVO.setResumeOriginalName(fileOriginalName);
			resumeVO.setResumeSystemName(fileSystemName);
			resumeVO.setMemberId(memberId);
			
			resumeDAO.insertResume(resumeVO);
		}
		
		result.setPath("/myHomePage.mypage");
		result.setRedirect(true);
		
		return result;
	}

}
