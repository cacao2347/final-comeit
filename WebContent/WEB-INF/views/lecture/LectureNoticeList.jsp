<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String lec_cd = request.getParameter("lec_cd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LectureNoticeList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/lecture/lectureNoticeList.css">

<script type="text/javascript">

	$(function()
	{
		// ajax처리
		ajaxLectureNoticeList();	
	});
	
	// 이 스터디방에 대한 공지사항 리스트 뿌려주는 ajax
	function ajaxLectureNoticeList()
	{
		var params = "lec_cd=" + $("#lectureCode").val();
		
		$.ajax(
		{
			type : "POST"
			, url : "lecturenoticelist.action"
			, data : params
			, dataType : "text"
			, async: false
			, success : function(data)
			{
				//alert("성공" + data);
				// 여기부터 하기
				$(".noticeList").html(data);
				
				
				$(".listTitle").click(function()
				{
					alert("클릭");
					$("#tableForm").submit();
				
				});
				
			}
			, error : function(e)
			{
				alert(e.responseText + "에러");
			}
		});
	}
	

</script>

</head>
<body>

<div class="container-fluid" id="bodyDiv">	
	
	<div class="row searchRow">
	<div class="col-md-12 form-inline">
		<input type="text" style="width: 10%;" class="form-control" value="제목" readonly="readonly"/>
		<input type="text" style="width: 80%;"class="searchBox form-control" placeholder="검색어를 입력하세요."/>
		
		<button type="button" class="search btn btn-primary">검색</button>
	</div>
		
	</div><!-- end .row .searchRow -->
	
	<div class="row">
		
		<form id="tableForm" class="form-horizontal" role="form" method="post" action="lecturenoticedetail.action">
		<input type="hidden" id="lectureCode" name="lec_cd" value="<%=lec_cd%>">
			<!-- 실제 테이블 -->
			<div class="col-md-12 noticeList">
			</div>
		</form>
		
	</div><!-- end .row -->
	<div class="row">
		
		<div class="col-md-12">
			<div class="paging"> 
				<ul class="pagination">
				<li class="page-item"><a href="#" class="page-link">Previous</a></li>
				<li class="page-item"><a href="#" class="page-link">1</a></li>
				<li class="page-item"><a href="#" class="page-link">2</a></li>
				<li class="page-item"><a href="#" class="page-link">3</a></li>
				<li class="page-item"><a href="#" class="page-link">4</a></li>
				<li class="page-item"><a href="#" class="page-link">5</a></li>
				<li class="page-item"><a href="#" class="page-link">6</a></li>
				<li class="page-item"><a href="#" class="page-link">7</a></li>
				<li class="page-item"><a href="#" class="page-link">8</a></li>
				<li class="page-item"><a href="#" class="page-link">9</a></li>
				<li class="page-item"><a href="#" class="page-link">10</a></li>
				<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
			
			<c:if test="${sessionScope.mem_cd == studyNoticeLists.mem_cd }">
				<button type="button" class="add btn btn-primary pull-right">등록</button>
			</c:if>
			
		</div>
			
</div><!-- end .row -->
</div><!-- end .container-fluid -->

</body>
</html>