package com.sys.comeit.controller;


import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudyCalendarController
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/studycalendarresponse.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String studyCalendarResponse(Model model, HttpServletRequest request)
	{
		String view = null;
		
		view = "WEB-INF/views/study/StudyCalendarResponse.jsp";
		
		return view;
		
	}
}
