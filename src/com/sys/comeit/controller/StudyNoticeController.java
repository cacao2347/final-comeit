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

import com.sys.comeit.util.MyUtil;
import com.sys.comeit.dto.*;
import com.sys.comeit.idao.*;

@Controller
public class StudyNoticeController
{
	@Autowired
	private SqlSession sqlSession;

	// 스터디 공지사항 리스트 화면 노출하기
	@RequestMapping(value = "/studynoticelist.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String studyNoticeList(Model model, HttpServletRequest request) throws UnsupportedEncodingException
	{
		String view = null;

		IStudyNoticeDAO studyNoticeDao = sqlSession.getMapper(IStudyNoticeDAO.class);
		
		String stu_cd = request.getParameter("stu_cd");
		
		System.out.println("받은 스터디코드" + stu_cd);
		
		
		// 페이징 처리 ----------------
		
		MyUtil util = new MyUtil();
		
		String pageNum = request.getParameter("pageNum");
		
		int currentPage = 1;
		if (pageNum != null && pageNum.length() != 0)
			currentPage = Integer.parseInt(pageNum);

		String searchKey = null;
		String searchValue = null;
		
		searchKey = request.getParameter("searchKey");
		searchValue = request.getParameter("searchValue");
		
		if (searchKey == null)
		{
			searchKey = "title";
			searchValue = "";
		}
		
		if (request.getMethod().equals("GET"))
		{
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		
		StudyNoticeDTO pagingDto = new StudyNoticeDTO();
		
		pagingDto.setStu_cd(stu_cd);
		pagingDto.setSearchKey(searchKey);
		pagingDto.setSearchValue(searchValue);
		
		// 전체 데이터 개수
		int dataCount = studyNoticeDao.searchNoticeCount(pagingDto);
		
		// 전체 페이지 수 구하기
		int numPerPage = 5;
		int totalPage = util.getPageCount(numPerPage, dataCount);
		
		// 전체 페이지 수 보다 현재 표시할 페이지가 큰 경우
		if (totalPage < currentPage)
			currentPage = totalPage;
		
		// 테이블에서 가져올 리스트들의 시작과 끝 위치
		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;
		
		pagingDto.setStart(start);
		pagingDto.setEnd(end);
		
		// 출력할 데이터
		ArrayList<StudyNoticeDTO> studyNoticeList = studyNoticeDao.getNoticeListData(pagingDto);
		
		String params = "";
		if (searchValue != null && searchValue.length() != 0)
		{
			searchValue = URLEncoder.encode(searchKey, "UTF-8");
			params = "searchKey=" + searchKey + "&searchValue=" + searchValue;
		}
		
		String cp = request.getContextPath();

		// 페이징 처리
		String listUrl = cp + "/studylist.action";
		if (params.length() != 0)
			listUrl += "?" + params;
		
		String pageIndexList = util.pageIndexList(currentPage, totalPage, listUrl);
		
		// 포워딩 할 데이터 넘겨주기
		request.setAttribute("studyNoticeList", studyNoticeList);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("dataCount", dataCount);
		
		// 테스트
		//System.out.println(stu_cd);
		System.out.println("start : " + start);
		System.out.println("end : " + end);
		
		view = "WEB-INF/views/study/AjaxStudyNoticeList.jsp";

		return view;
	}
	
	// 스터디 공지사항 상세 화면 노출하기
	@RequestMapping(value = "/studynoticedetail.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String studyNoticeDetail(Model model, HttpServletRequest request) throws UnsupportedEncodingException
	{
		String view = null;

		IStudyNoticeDAO studyNoticeDao = sqlSession.getMapper(IStudyNoticeDAO.class);
		
		String stu_cd = request.getParameter("stu_cd");
		String stu_ntc_pnt_cd = request.getParameter("stu_ntc_pnt_cd");
		System.out.println("상세" + stu_cd);
		System.out.println(stu_ntc_pnt_cd);
		
		StudyNoticeDTO dto = new StudyNoticeDTO();
		
		dto.setStu_cd(stu_cd);
		dto.setStu_ntc_pnt_cd(stu_ntc_pnt_cd);
		
		
		StudyNoticeDTO noticeDetail = studyNoticeDao.studyNoticeDetail(dto);
		
		model.addAttribute("noticeDetail", noticeDetail);
		
		view = "WEB-INF/views/study/AjaxStudyNoticeDetail.jsp";

		return view;
	}
	
	// 스터디 공지사항 등록
	@RequestMapping(value = "/studynoticeadd.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String studyNoticeAdd(Model model, HttpServletRequest request)
	{
		String view = null;
		
		
		view = "WEB-INF/views/study/StudyNoticeAdd.jsp";
		
		return view;
	}
	
	
	
	
	

}
