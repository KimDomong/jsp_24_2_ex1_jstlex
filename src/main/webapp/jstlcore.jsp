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
	
	<c:set var="score" value="100"></c:set>  <!-- ������ �� �����ϱ� -->
	<c:set var="name" value="honggilsun"></c:set>
	
	���� : <c:out value="${score}"></c:out><br>
	�̸� : <c:out value="${name}"></c:out>

	<hr>
	
	<c:remove var="name"></c:remove>      <!-- ���� �� �� �����ϱ� -->
	�̸� :  <c:out value="${name }"></c:out>
	
	<hr>
	
	<c:catch var="error">                 <!-- jstl ����ó������ -->
		<%= 1/0 %>
	</c:catch>
	<br>
	<c:out value="${error}"></c:out>
	
	<hr>
	<!-- if �� --> 
	
	<c:if test="${100>10 }">100�� 10���� Ů�ϴ�!</c:if>       <!-- ���������� �־��� �� --> 
	
	<c:if test="${100<10 }">100�� 10���� �۽��ϴ�!</c:if>       <!-- ������������ �־��� �� -->
	
	<hr>
	
	<c:forEach var="i" begin="0" end="10" step="2">     <!-- forEach �ݺ��� -->
		${i}
	</c:forEach>
	
	
	
</body>
</html>