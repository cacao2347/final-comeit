package com.sys.comeit.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sys.comeit.dto.StudyCalendarDTO;
import com.sys.comeit.idao.IStudyCalendarDAO;

@Controller
public class StudyCalendarController
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/studycalendarresponse.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String studyCalendarResponse(Model model, HttpServletRequest request)
	{
		String view = null;
		
		IStudyCalendarDAO studyCalDao = sqlSession.getMapper(IStudyCalendarDAO.class);
		
		String stu_cd = request.getParameter("stu_cd");
		System.out.println("캘린더에서 받은 스터디코드 : " + stu_cd);
		
		ArrayList<StudyCalendarDTO> studyCalList = studyCalDao.studyCalList(stu_cd);
		
		model.addAttribute("studyCalList", studyCalList);
		
		view = "WEB-INF/views/study/StudyCalendarResponse.jsp";
		
		return view;
		
	}
}
