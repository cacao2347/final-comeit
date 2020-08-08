<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LectureSpaceList2.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="<%=cp %>/assets/images/pen_1.ico" type="image/x-icon">
<link rel="icon" href="<%=cp %>/assets/images/pen_1.ico" type="image/x-icon">

<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/lecture/lectureSpaceList.css" >
<style type="text/css">
body{font-family: 'Noto Sans KR', sans-serif;}
</style>

<script type="text/javascript">

	function searchList() 
	{
		f = document.searchForm;
		f.action = "<%=cp%>/image/list.action";
		f.submit();
	}

</script>


</head>
<body>

<br><br>

<div align="center">
<!-- 	<table style="width: 600px; border: 2px solid #D6D4D6; margin: 0px; padding: 0px; align-self: center;">
		<tr style="height: 40px;">
			<td style="padding-left: 25px;">
				<span style="font-weight: bold;">이미지 게시판</span>
			</td>
		</tr>
	</table>
	
	<br> -->
	
<%-- 	<table style="width: 600px; margin: 0px; padding: 0px; align-self: center;">
		<tr style="height: 30px;">
			<td align="left" style="width: 70%;">
				Total ${dataCount } articles, ${totalPage } pages / Now page is ${currentPage }
			</td>
			<td align="right">
				<input type="button" value="이미지 등록" class="btn2" onclick="javascript:location.href='<%=cp %>/image/created.action'">
			</td>
		</tr>		
	</table> --%>
	
	<table style="width: 600px; margin: 1px; padding: 3px; background-color: #FFFFFF; align-self: center;">
		<c:set var="n" value="0"></c:set>
	
		<c:forEach var="spaceList" items="${lists }">
		
			<c:if test="${n==0 }">
			<tr>
			</c:if>
		
			<c:if test="${n!=0 && n%3==0 }">
			</tr>
			<tr>
			</c:if>
			
				<td style="width: 200px;" align="center">
					<%-- <img src="${imagePath }/${dto.saveFileName}" style="width: 180px; height: 180px;">
					
					<br><br>
					<!-- 작성자 : 홍길동 2020-07-10 -->
					작성자 : ${dto.userName } &nbsp;&nbsp;&nbsp;&nbsp; ${dto.created }
					<br>
					
					
					${dto.subject }
					
					<c:if test="${sessionScope.member.userId == dto.userId }">
					<br>
	
					<a href="<%=cp%>/image/delete.action?num=${dto.num}&pageNum=${pageNum}">삭제</a>
					
					</c:if> --%>
					
					<div class="item">
		                    <ul class="thumbnails" style="list-style:none;" >
		                       
			                        <li >	
										<div class="demo">
									      <figure class="imghvr-scale-top-left">
									     <%--  <input type="image" class="imageBtn" value="${spaceList.area_name }" src="<%=cp %>/assets/images/199.jpg" alt="53" style="width: 300px; height: 250px;"> --%>
									      <%-- <button type="button" class="imageBtn"  value="${spaceList.area_name }"><img src="<%=cp %>/assets/images/199.jpg" alt="53" style="width: 300px; height: 250px;"></button> --%>
									       <%-- <input type="image" src="<%=cp %>/assets/images/199.jpg" alt="53" class="imageBtn" style="width: 300px; height: 250px;" value="${spaceList.spa_req_cd }"onclick="imageBtn(this)"> --%>
									       <img src="<%=cp %>/assets/images/199.jpg" alt="53" style="width: 300px; height: 250px;">
									        <figcaption>
									        <button type="button" class="imageBtn" value="${spaceList.spa_req_cd }" style="background-color:transparent;  border:0px transparent solid; text-align: left;outline:none;" >
									        <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
									        ${spaceList.area_name} ${spaceList.spc_area_name}</p>
									        <p><span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									               영업 시간 : ${spaceList.str_time}시 ~ ${spaceList.end_time}시</p>
									        <p><span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									               최대이용시간 : ${spaceList.use_hrs}시간</p>
									        <div class="form-inline">
									        <p><span class="glyphicon glyphicon-home" aria-hidden="true"></span> ${spaceList.type_name}</p>
									        <p><span class="glyphicon glyphicon-heart" aria-hidden="true"></span> ${spaceList.busi_name}</p>
									        </div>
									        </button>
									        </figcaption>
									      </figure>
									      <div class="caption">
									      	<div class="nameAndCount">
											<h4>${spaceList.spa_name}</h4>
											<p class="feed"><span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>피드백수: ${spaceList.feedCount }개</p>
											</div>
											<p class="intro">&quot;${spaceList.one_intro}&quot;</p>
											<p>
											<ul class="list-study-tags">
											<c:forEach var="spaceTagss" items="${spaceTags }">
											<c:if test="${spaceTagss.spa_req_cd eq spaceList.spa_req_cd}">
												<li class="stack-item">${spaceTagss.tag_name }</li>
											</c:if>
											</c:forEach>
											</ul>
											<p>
										  </div>
										  </div>
			                        </li>
								
		                    </ul>
			              </div>
					
				</td>
				

								
				<c:set var="n" value="${n+1}"></c:set>
		
		</c:forEach>
	
		<c:if test="${n>0 || n%3!=0}">
			<c:forEach var="i" begin="${n%3+1 }" end="3" step="1">
				<td>&nbsp;</td>
			</c:forEach>
		</c:if>
		
		<c:if test="${n!=0 }">
			</tr>
		</c:if>
		
		<!-- 페이징 처리에 따른 페이지 인덱스 적용 -->
		<c:if test="${dataCount != 0 }">
			<tr style="height: 30px; background-color: #FFFFFF">
				<td align="center" colspan="3">
					${pageIndexList }				
				</td>
			</tr>
		
			<tr align="center" style="height: 30px;">
				<td colspan="3">
				
					<!--  -->
					검색 폼 구성
					<form name="searchForm" method="post">
						<select name="SearchKey" class="selectField" style="height: 22px;">
							<option value="subject">제목</option>
							<option value="userName">작성자</option>
						</select>
						
						<input type="text" name="searchValue" class="boxTF">
						<input type="button" value="검 색" class="btn2" onclick="searchList()">					
					</form>
				</td>
			</tr>
		</c:if>
		
		<!-- IMAGEBOARD 테이블에 데이터가 존재하지 않을 경우 -->
		<c:if test="${dataCount == 0 }">
			<tr style="height: 30px; background-color: #FFFFFF;">
				<td align="center" colspan="3">
					등록된 자료가 존재하지 않습니다.
				</td>
			</tr>
		</c:if>
		
	</table>
	
<!-- 	<table style="width: 600px; margin: 0px; padding: 0px; align-self: center;">
		<tr style="height: 3px;">
			<td style="background-color: #DBDBDB;">
			</td>		
		</tr>
	</table> -->
</div>
</body>
</html>