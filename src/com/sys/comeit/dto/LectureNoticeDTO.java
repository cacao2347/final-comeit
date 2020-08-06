package com.sys.comeit.dto;

public class LectureNoticeDTO
{
	// 게시글번호, 게시글제목, 작성자명, 작성일, 공지사항 번호
	String row_num, title, name, crt_date, lec_ntc_cd;
	// 조회수
	String hits;
	
	public String getLec_ntc_cd()
	{
		return lec_ntc_cd;
	}
	public void setLec_ntc_cd(String lec_ntc_cd)
	{
		this.lec_ntc_cd = lec_ntc_cd;
	}
	public String getRow_num()
	{
		return row_num;
	}
	public void setRow_num(String row_num)
	{
		this.row_num = row_num;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getCrt_date()
	{
		return crt_date;
	}
	public void setCrt_date(String crt_date)
	{
		this.crt_date = crt_date;
	}
	public String getHits()
	{
		return hits;
	}
	public void setHits(String hits)
	{
		this.hits = hits;
	}
	
}
