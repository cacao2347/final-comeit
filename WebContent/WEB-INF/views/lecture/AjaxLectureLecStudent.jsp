<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<c:forEach var="studentList" items="${studentList }">

	<div class="mem">

		<div class="memImg">
			<img alt="Bootstrap Image Preview" 
				src="${studentList.img_url eq null ? '<%=cp %>/assets/images/basic.png' : '<%=cp %>/assets/images/basic.png' }"
				class="rounded-circle profileImg" />
		</div>

		<div class="memName">
			<span class="name">${studentList.name }</span>
		</div>

		<div class="memAtten">

			<div class="answer1">
				<a href="" style="text-decoration: underline;">>회원 상세 프로필 보기</a>
			</div>

		</div>

	</div>
	<!-- end .mem -->

</c:forEach>
