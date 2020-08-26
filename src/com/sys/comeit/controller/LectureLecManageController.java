package com.sys.comeit.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sys.comeit.dto.MemberDTO;
import com.sys.comeit.idao.ILectureLecStudentDAO;

@Controller
public class LectureLecManageController
{
	@Autowired
	private SqlSession sqlSession;

	// 강의 공지사항 리스트 화면 노출하기
	@RequestMapping(value = "/lecturelecstudent.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String lectureLecStudent(Model model, HttpServletRequest request) throws UnsupportedEncodingException
	{
		String view = null;

		ILectureLecStudentDAO lectureLecStudentDao = sqlSession.getMapper(ILectureLecStudentDAO.class);
		
		String lec_cd = request.getParameter("lec_cd");
		
		ArrayList<MemberDTO> studentList = lectureLecStudentDao.getStudentInfo(lec_cd); 
		
		model.addAttribute("studentList", studentList);

		view = "WEB-INF/views/lecture/AjaxLectureLecStudent.jsp";

		return view;
	}
	
}
