<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	String lec_cd = request.getParameter("lec_cd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LectureLecStudent.jsp</title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/lecture/LectureLecStudent.css">

<script type="text/javascript">

	$(function()
	{
		ajaxLectureLecStudent();
	});
	
	function ajaxLectureLecStudent()
	{
		var params = "lec_cd=" + $("#lectureCode").val();
		
		// 수강생 리스트 뿌려주는 Ajax
		$.ajax(
		{
			type : "POST",
			url : "lecturelecstudent.action",
			data : params,
			dataType : "text",
			async : false,
			success : function(data)
			{
				$(".student").html(data);
			},
			error : function(e)
			{
				alert(e.responseText + "에러");
			}
			
		});
		// 수강생 리스트 뿌려주는 Ajax 끝
	}

</script>

</head>
<body>

<div class="container-fluid">

<!-- 제목 영역 -->
	<div class="row">
	
		<input type="hidden" id="lectureCode" name="lec_cd" value="<%=lec_cd%>">
	
		<div class="col-md-2">
		</div>
		<!-- end div.col-md-2 -->
		
		<div class="col-md-8">
		
			<div class="boardName" style="text-align : center;">
				<h1>강의 관리</h1>
				<hr />
			</div>
			<!-- end div.boardName -->
			
		</div><!-- end .col-md-8 -->
		
		<div class="col-md-2">
		</div>
		<!-- end div.col-md-2 -->
		
	</div>
	<!-- end div.row -->
	<!-- 제목 영역 끝 -->
	
<!-- 선택 박스 -->
	<div class="row">
		
		<div class="col-md-12 box1">
		
			<!-- 모달 영역 -->
            <div id="modal" class="searchModal">
               
               <!-- 모달창 -->
               <div class="search-modal-content">
               </div>
               <!-- end .search-modal-content -->
            	                     
            </div>
            <!-- end .searchModal -->
		
			<div class="box2">
			
				<div class="time">
					<h3><a href="LectureLecStudent.jsp">수강생 조회</a></h3>
				</div><!-- end .time -->
				
				<div class="location">
					<h3><a href="LectureLecProfit.jsp">수익 관리</a></h3>
				</div><!-- end .location -->
				
			</div><!-- end .box2 -->
			
			<div class="box3">
			
				<div class="student">
				
					<!-- <div class="memImg">
						<img alt="Bootstrap Image Preview" src="assets/images/hjkim.PNG" class="rounded-circle profileImg" />
					</div>
					
					<div class="memName">
						<span class="name">김길동</span>
					</div>
					
					<div class="memAtten">
					
						<div class="answer1">
							<a href="" style="text-decoration: underline;">>회원 상세 프로필 보기</a>
						</div>
						
					</div> -->
					
					
					
				</div><!-- end .mem -->
				
				<div class="blank">
				</div>
				
			</div><!-- end .box3 -->
			
		</div><!-- end .col-md-12 box1-->
		
	</div>
	
</div><!-- end .container-fluid -->

</body>
</html>