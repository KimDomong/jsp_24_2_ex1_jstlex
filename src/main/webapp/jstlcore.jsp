<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstlcore.jsp</title>
</head>
<body>
	
	<c:set var="score" value="100"></c:set>  <!-- 변수명 값 셋팅하기 -->
	<c:set var="name" value="honggilsun"></c:set>
	
	점수 : <c:out value="${score}"></c:out><br>
	이름 : <c:out value="${name}"></c:out>

	<hr>
	
	<c:remove var="name"></c:remove>      <!-- 셋팅 된 값 제거하기 -->
	이름 :  <c:out value="${name }"></c:out>
	
	<hr>
	
	<c:catch var="error">                 <!-- jstl 예외처리구문 -->
		<%= 1/0 %>
	</c:catch>
	<br>
	<c:out value="${error}"></c:out>
	
	<hr>
	<!-- if 문 --> 
	
	<c:if test="${100>10 }">100은 10보다 큽니다!</c:if>       <!-- 참인조건을 주었을 때 --> 
	
	<c:if test="${100<10 }">100은 10보다 작습니다!</c:if>       <!-- 거짓인조건을 주었을 때 -->
	
	<hr>
	
	<c:forEach var="i" begin="0" end="10" step="2">     <!-- forEach 반복문 -->
		${i}
	</c:forEach>
	
	
	
</body>
</html>