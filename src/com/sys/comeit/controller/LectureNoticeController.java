package com.sys.comeit.controller;

import java.io.UnsupportedEncodingException;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sys.comeit.util.MyUtil;
import com.sys.comeit.dto.*;
import com.sys.comeit.idao.*;

@Controller
public class LectureNoticeController
{
	@Autowired
	private SqlSession sqlSession;

	// 강의 공지사항 리스트 화면 노출하기
	@RequestMapping(value = "/lecturenoticelist.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String lectureNoticeList(Model model, HttpServletRequest request) throws UnsupportedEncodingException
	{
		String view = null;

		ILectureNoticeDAO lectureNoticeDao = sqlSession.getMapper(ILectureNoticeDAO.class);
		
		String lec_cd = request.getParameter("lec_cd");
		
		System.out.println("받은 강의코드" + lec_cd);
		
		//model.addAttribute("studyNoticeList", studyNoticeDao.studyNoticeList(stu_cd));
		
		ArrayList<LectureNoticeDTO> lectureNoticeList = lectureNoticeDao.lectureNoticeList(lec_cd);
		
		model.addAttribute("lectureNoticeList", lectureNoticeList);
		
		view = "WEB-INF/views/lecture/AjaxLectureNoticeList.jsp";

		return view;
	}
	
	/*
	 * // 스터디 공지사항 상세 화면 노출하기
	 * 
	 * @RequestMapping(value = "/studynoticedetail.action", method = {
	 * RequestMethod.GET, RequestMethod.POST }) public String
	 * studyNoticeDetail(Model model, HttpServletRequest request) throws
	 * UnsupportedEncodingException { String view = null;
	 * 
	 * IStudyNoticeDAO studyNoticeDao = sqlSession.getMapper(IStudyNoticeDAO.class);
	 * 
	 * String stu_cd = request.getParameter("stu_cd"); String stu_ntc_pnt_cd =
	 * request.getParameter("stu_ntc_pnt_cd"); System.out.println("상세" + stu_cd);
	 * System.out.println(stu_ntc_pnt_cd);
	 * 
	 * StudyNoticeDTO dto = new StudyNoticeDTO();
	 * 
	 * dto.setStu_cd(stu_cd); dto.setStu_ntc_pnt_cd(stu_ntc_pnt_cd);
	 * 
	 * StudyNoticeDTO noticeDetail = studyNoticeDao.studyNoticeDetail(dto);
	 * 
	 * model.addAttribute("noticeDetail", noticeDetail);
	 * 
	 * view = "WEB-INF/views/study/StudyNoticeDetail.jsp";
	 * 
	 * return view; }
	 * 
	 * // 스터디 공지사항 상세 화면 노출하기
	 * 
	 * @RequestMapping(value = "/studynoticedetailshow.action", method = {
	 * RequestMethod.GET, RequestMethod.POST }) public String
	 * studyNoticeDetailShow(Model model, HttpServletRequest request) throws
	 * UnsupportedEncodingException { String view = null;
	 * 
	 * IStudyNoticeDAO studyNoticeDao = sqlSession.getMapper(IStudyNoticeDAO.class);
	 * 
	 * String stu_cd = request.getParameter("stu_cd"); String stu_ntc_pnt_cd =
	 * request.getParameter("stu_ntc_pnt_cd"); System.out.println("상세22" + stu_cd);
	 * System.out.println(stu_ntc_pnt_cd);
	 * 
	 * StudyNoticeDTO dto = new StudyNoticeDTO();
	 * 
	 * dto.setStu_cd(stu_cd); dto.setStu_ntc_pnt_cd(stu_ntc_pnt_cd);
	 * 
	 * StudyNoticeDTO noticeDetail = studyNoticeDao.studyNoticeDetail(dto);
	 * 
	 * model.addAttribute("noticeDetail", noticeDetail);
	 * 
	 * view = "WEB-INF/views/study/StudyNoticeDetail.jsp";
	 * 
	 * return view; }
	 */
	
	
	
	

}
