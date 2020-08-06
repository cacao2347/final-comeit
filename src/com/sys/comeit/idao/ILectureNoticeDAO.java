package com.sys.comeit.idao;

import java.util.ArrayList;

import com.sys.comeit.dto.LectureNoticeDTO;

public interface ILectureNoticeDAO
{
	public ArrayList<LectureNoticeDTO> lectureNoticeList(String lec_cd);	// 전체 리스트 확인
}
