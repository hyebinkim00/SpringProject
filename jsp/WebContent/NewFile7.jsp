<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>

<%request.setCharacterEncoding("utf-8");

String facname1 =request.getParameter("sellist1"); 
String cartype1 =request.getParameter("sellist2"); 
String carnum1 =request.getParameter("sellist3"); 

String checkBoxes[] =request.getParameterValues("example1"); 
/* for(String checkbox:checkBoxes)
{out.print(checkbox+"<br/>");} */
%>

		
 <sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.driver.OracleDriver"
			user="hr" password="hr"/>
	<div>	
	
	<c:out value="${param.sellist1 }"></c:out>
	<c:out value="${param.sellist2 }"></c:out>
	<c:out value="${param.sellist3 }"></c:out>
	
	<c:choose>
	<c:when test="${empty paramValues.example1 and not empty param.sellist3}">
	<sql:query var="resultSet" dataSource="${dataSource}">
	select * from member where facname=? and cartype=? and carnum=? 
	<sql:param value="${param.sellist1}"></sql:param>
			<sql:param value="${param.sellist2}"></sql:param>
			<sql:param value="${param.sellist3}"></sql:param>
			
	</sql:query>
	<c:forEach var="row" items="${resultSet.rows}"> 
	<p><c:out value="${row.carname }"></c:out>
	</c:forEach>
	</c:when>
	
	
	
	
	<c:when test="${not empty paramValues.example1 and empty param.sellist3}">
  <c:forEach items="${paramValues.example1}" var="adj">

		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where fuel=?
			 
	
			 <sql:param value="${adj}"/>

			</sql:query> 
			
			<c:forEach var="row" items="${resultSet.rows}">
       <p>	<c:out value="${adj}"/><c:out value="${row.carname}"/>
        </c:forEach>
    
    
    
  </c:forEach>
</c:when>
<c:otherwise>선택 항목 없음</c:otherwise>

</c:choose>

	
	
	
		 
		</div>
		
		