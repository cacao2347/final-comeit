<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
	<thead class="thead-dark">
		<tr>
			<th style="text-align: center;">번호</th>
			<th style="text-align: center;">제목</th>
			<th style="text-align: center;">작성자</th>
			<th style="text-align: center;">작성일</th>
			<th style="text-align: center;">조회수</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach var="lectureNoticeLists" items="${lectureNoticeList }">
		<tr>
			<td>${lectureNoticeLists.row_num }</td>
			<td>
			<button class="btn btn-link listTitle" name="lec_ntc_cd" value="${lectureNoticeLists.lec_ntc_cd}">${lectureNoticeLists.title }</button>
			</td>
			<td>${lectureNoticeLists.name }</td>
			<td>${lectureNoticeLists.crt_date }</td>
			<td>${lectureNoticeLists.hits }</td>
		</tr>
	</c:forEach>
		</tbody>
</table>