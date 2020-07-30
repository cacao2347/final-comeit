package com.sys.comeit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sys.comeit.dto.SpcAreaDTO;
import com.sys.comeit.idao.ISpcAreaDAO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class CommonController
{

	@Autowired
	private SqlSession sqlSession;
	
	// 지역에 맞는 세부지역 뿌려주는 AJAX 처리
	@RequestMapping(value = "/areaajax.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectAjax(HttpServletRequest request, Model model)
	{

		String view = null;

		ISpcAreaDAO spcAreaDao = sqlSession.getMapper(ISpcAreaDAO.class);

		ArrayList<SpcAreaDTO> list = spcAreaDao.spcAreaList(request.getParameter("area_cd"));

		model.addAttribute("spcAreaList", list);

		view = "WEB-INF/views/member/AjaxJoinSpcArea.jsp";

		return view;

	}

	// 휴대폰 인증 버튼 눌렀을때 문자발송하기
	@ResponseBody
	@RequestMapping(value = "/sendsms.action", method = RequestMethod.POST)
	public String sendSms(@RequestParam(value = "receiver") String receiver) throws CoolsmsException
	{
		String api_key = "NCSKB3F0JFPNVSIF";
		String api_secret = "K2T9Z6CWXWQST5QAL1KJND9LGEUARTXJ";
		String authNum = "";

		System.out.println(receiver);

		Message coolsms = new Message(api_key, api_secret);

		System.out.println("Hello");
		authNum = sendString();

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", receiver);
		params.put("from", "010668064811"); // 무조건 자기번호 (인증)
		params.put("type", "SMS");
		params.put("text", "[COME-IT] 인증번호 : " + authNum);
		params.put("app_version", "test app 1.2"); // application name and version

		try
		{
			// send() 는 메시지를 보내는 함수
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.get("error_count"));

		} catch (CoolsmsException e)
		{
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}

		return authNum;

	}

	public String sendString()
	{
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();

		for (int i = 0; i < 6; i++)
		{
			int rIndex = rnd.nextInt(2);
			switch (rIndex)
			{
			case 0:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65)); // +97이면 소문자 +65면 대문자
				break;
			case 1:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		return temp.toString();
	}
	
	// 회원 마이페이지 (추후 회원으로 옮기기)
	//----------------------------
	@RequestMapping(value = "/membermy.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberMy(HttpServletRequest request, Model model)
	{

		String view = null;

		

		view = "WEB-INF/views/member/MemberMy.jsp";

		return view;

	}
	
	
}
