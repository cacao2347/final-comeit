<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudySpaceList.jsp</title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/lecture/lectureSpaceList.css" >

<%-- <script type="text/javascript">

	function searchList() 
	{
		f = document.searchForm;
		f.action = "<%=cp%>/image/list.action";
		f.submit();
	}
</script> --%>

<script type="text/javascript">

	$(function()
	{
		// ajax처리
		ajaxLectureSpaceList();	
	});
	
	// 이 스터디방에 대한 공지사항 리스트 뿌려주는 ajax
	function ajaxLectureSpaceList()
	{
		var params = "lec_cd=" + $("#lectureCode").val();
		
		$.ajax(
		{
			type : "POST"
			, url : "lecturespacelist.action"
			, data : params
			, dataType : "text"
			, async: false
			, success : function(data)
			{
				//alert("성공" + data);
				// 여기부터 하기
				$(".spaceList").html(data);
				
				
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


	<br>
	<br>

	<div align="center">

		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 text-center">
					<h1>모임 장소 정하기</h1>
				</div>
				<div class="col-md-2"></div>
			</div>
	</div>
		
		<div class="row spaceList">
		</div>
		
		<hr>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="row paging">
					<div class="col-md-12">
						<nav>
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
						</nav>
					</div>
				</div>
				<!-- 페이징 영역 끝 -->
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>
































