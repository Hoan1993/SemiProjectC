package com.sist.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.model.MemberDAO;
import com.sist.model.MemberVO;


public class BoardJoinOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String url = "board_joinForm.do";
		
		String mem_name = request.getParameter("Username");
		String mem_email = request.getParameter("email");
		String mem_pwd = request.getParameter("password");

		
		MemberVO vo = new MemberVO();
		
		vo.setMem_name(mem_name);
		vo.setMem_email(mem_email);
		vo.setMem_pwd(mem_pwd);
		

		MemberDAO dao = MemberDAO.getInstance();
		int result = dao.insertMember(vo);
		
		ActionForward forward = new ActionForward();
		
		if(result == 1) {
			url = "board_loginForm.do";
			forward.setRedirect(true);
			forward.setPath(url);
		} else {
			url = "board_joinForm.do";
			forward.setRedirect(true);
			forward.setPath(url);
		}
		

		return forward;
	}

}
