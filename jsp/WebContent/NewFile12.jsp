<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>
<%@include file="dbconn.jsp" %>
<%
request.setCharacterEncoding("utf-8");
String facname1 =request.getParameter("sellist1"); 
String cartype1 =request.getParameter("sellist2"); 
String carnum1 =request.getParameter("sellist3"); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>중고차 장기 검색</title>


</head>
<body>
<script>
function goDate(){
	let form= document.userinput;
	form.submit();
	
}
</script>


<script>
function chtest1(){
	document.getElementById("sellist2").value=null;
	document.getElementById("sellist2").disabled=false;
	
}
</script>

<script>
function chtest2(){
	document.getElementById("sellist3").value=null;
	document.getElementById("sellist3").disabled=false;
	
}
</script>
 
 <script>
 function test1(){
	 
 let target1=document.getElementById("sellist1");

/*  alert('선택된 옵션 text 값=' + target1.options[target1.selectedIndex].text);     // 옵션 text 값 */
 alert('선택된 옵션 value 값=' + target1.options[target1.selectedIndex].value);     // 옵션 value 값

 let target2=document.getElementById("sellist2");

/*  alert('선택된 옵션 text 값=' + target2.options[target2.selectedIndex].text);     // 옵션 text 값 */
 alert('선택된 옵션 value 값=' + target2.options[target2.selectedIndex].value);     // 옵션 value 값

 let target3=document.getElementById("sellist3");

/*  alert('선택된 옵션 text 값=' + target3.options[target3.selectedIndex].text);     // 옵션 text 값 */
 alert('선택된 옵션 value 값=' + target3.options[target3.selectedIndex].value);     // 옵션 value 값

 
 }
 
 </script>
 
 
<script>
function fchk(){
	let chk_obj = document.getElementsByName("example1");
	let chk_leng = chk_obj.length;
	let checked = 0; 

	for(i=0;i<chk_leng;i++){
		if(chk_obj[i].checked==true){
			checked +=1;
			alert(chk_obj[i].value);
		}
}
if(checked==0){
	alert("선택한정보가 없습니다.");
	return;
}else{
	alert(checked+"개선택");
	return;

 }
}

</script>

<script>
function fchk1(){
	let chk_obj = document.getElementsByName("example2");
	let chk_leng = chk_obj.length;
	let checked = 0; 

	for(i=0;i<chk_leng;i++){
		if(chk_obj[i].checked==true){
		
			checked +=1;
			alert(chk_obj[i].value);
		}

}

if(checked==0){
	alert("선택한정보가 없습니다.");
	return;
}else{
	alert(checked+"개선택");
	return;

 }
}

</script>


	

<div class="jumbotron">
<h2>중고차 장기 렌트</h2>
  </div>
  
  
  
  <div class="container">
   
  <div class="container" style="border:solid 2px;">
  
 <form method="post" action="#" name="userinput">
    <div class="row" >
     <span class="col-sm-1">&nbsp;</span>
     <div class="col-sm-3">
     <sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.driver.OracleDriver"
			user="hr" password="hr"/>
			
			<sql:query var="resultSet" dataSource="${dataSource}">
			select distinct facname from member 
			</sql:query>
		
       <select  class="form-control" id="sellist1" name="sellist1" onchange="goDate()" >
        <option  >제조사 선택 </option>
        <c:forEach var="row" items="${resultSet.rows}">
        	<option value="<c:out value="${row.facname}"/>" <c:if test="${param.sellist1==row.facname}">selected</c:if>><c:out value="${row.facname}"/></option>
        </c:forEach>
      </select>
      </div>
      
      <sql:query var="resultSet" dataSource="${dataSource}">
			select distinct cartype from member where facname=?
			 <sql:param value="${param.sellist1}"/>
			</sql:query>
		
      <div class="col-sm-3">
      <select class="form-control" id="sellist2" name="sellist2" onchange="goDate()"  >
        <option disabled>차량 유형 선택</option>
       <c:forEach var="row" items="${resultSet.rows}">
				<option value="<c:out value="${row.cartype}"/>" <c:if test="${param.sellist2==row.cartype}">selected</c:if>><c:out value="${row.cartype}"/></option>
				</c:forEach>
      </select>
      </div>
      
      <div class="col-sm-3">
        	 <sql:query var="resultSet" dataSource="${dataSource}">
			select distinct carnum from member where facname=? and cartype=?
			 <sql:param value="${param.sellist1}"/>
			 <sql:param value="${param.sellist2}"/>
			</sql:query> 
			
      <select class="form-control" id="sellist3" name="sellist3" onchange="goDate()"  >
        <option disabled>차량 선택</option>
       <c:forEach var="row" items="${resultSet.rows}">
				<option value="<c:out value="${row.carnum}"/>" <c:if test="${param.sellist3==row.carnum}">selected</c:if>><c:out value="${row.carnum}"/></option>
				</c:forEach>
      </select>
      </div>
     
 <input id="tess" type="submit" class="btn btn-primary col-sm-1" value="검색">

    
    </div>
   </form>
  
  <br><br>
  
     <form method="post" action="NewFile7.jsp" onsubmit="fchk();">
     <div class="row">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <span class="col-sm-1"><strong>연료 :</strong></span>
    <div class="col-sm-8">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <div class="form-check-inline">
       <input type="checkbox" value="전체" name="example1"><strong>&nbsp;전체&nbsp;</strong>
     <!--  <label class="custom-control-label" for="customRadio1"><strong>&nbsp;전체&nbsp;</strong></label> -->
    </div>

    <div class="form-check-inline">
      <input type="checkbox" value="휘발유" id="example1" name="example1"><strong>&nbsp;휘발유&nbsp;</strong>
      <!-- <label class="custom-control-label" for="customRadio2"><strong>&nbsp;휘발유&nbsp;</strong></label> -->
    </div>
     <div class="form-check-inline">
      <input type="checkbox" value="경유" name="example1"><strong>&nbsp;경유&nbsp;</strong>
     <!--  <label class="custom-control-label" for="customRadio3"><strong>&nbsp;경유&nbsp;</strong></label> -->
    </div>
     <div class="form-check-inline">
      <input type="checkbox" value="LPG" name="example1"><strong>&nbsp;LPG&nbsp;</strong>
    <!--   <label class="custom-control-label" for="customRadio4"><strong>&nbsp;LPG&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="전기" name="example1"><strong>&nbsp;전기&nbsp;</strong>
    <!--   <label class="custom-control-label" for="customRadio5"><strong>&nbsp;전기&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="하이브리드" name="example1"><strong>&nbsp;하이브리드&nbsp;</strong>
   <!--    <label class="custom-control-label" for="customRadio6"><strong>&nbsp;하이브리드&nbsp;</strong></label> -->
    </div>
    </div>
  <!--    <input type="button" value="확인" onclick="Check(this.form);"> -->
    <input type="submit" value="검색" class= "col-sm-1">
  </div>
  </form>
  
  
  <br>
  
   <form method="post" onsubmit="fchk1();">
     <div class="row">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <span class="col-sm-1"><strong>지점 :</strong></span>
    <div class="col-sm-8">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <div class="form-check-inline">
       <input type="checkbox" value="전체" name="example2"><strong>&nbsp;전체&nbsp;</strong>
     <!--  <label class="custom-control-label" for="customRadio7"><strong>&nbsp;전체&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="서울" name="example2"><strong>&nbsp;서울&nbsp;</strong>
      <!-- <label class="custom-control-label" for="customRadio8"><strong>&nbsp;서울&nbsp;</strong></label> -->
    </div>
     <div class="form-check-inline">
      <input type="checkbox" value="경기" name="example2"><strong>&nbsp;경기&nbsp;</strong>
<!--       <label class="custom-control-label" for="customRadio9"><strong>&nbsp;경기&nbsp;</strong></label> -->
    </div>
     <div class="form-check-inline">
      <input type="checkbox" value="충청" name="example2"><strong>&nbsp;충청&nbsp;</strong>
     <!--  <label class="custom-control-label" for="customRadio10"><strong>&nbsp;충청&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="강원" name="example2"><strong>&nbsp;강원&nbsp;</strong>
 <!--      <label class="custom-control-label" for="customRadio11"><strong>&nbsp;강원&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="경상" name="example2"><strong>&nbsp;경상&nbsp;</strong>
   <!--    <label class="custom-control-label" for="customRadio12"><strong>&nbsp;경상&nbsp;</strong></label> -->
    </div>
    </div>
    <input type="submit" value="검색" class="col-sm-1">
  </div>
  </form>
  
  
  </div>
</div>
 
  
  
<div class="container">
<br>
<h3>검색결과</h3>
<hr style="border: solid 1px black " /> 

<div class="row" >

<c:if test="${param.sellist1==null && param.sellist2==null && param.sellist3==null}">
<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member
			</sql:query>
			
</c:if>


<c:choose>
<c:when test="${param.sellist1!=null && param.sellist2 == null}">
<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where facname=? 
			<sql:param value="${param.sellist1}"></sql:param>
			</sql:query>
</c:when>

<c:when test="${param.sellist1!=null && param.sellist2 != null}">
<c:if test="${param.sellist3==null}">
<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where facname=? and cartype=? 
			<sql:param value="${param.sellist1}"></sql:param>
			<sql:param value="${param.sellist2}"></sql:param>
			</sql:query>
</c:if>

<c:if test="${param.sellist3!=null}">
<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where facname=? and cartype=? and carnum=?
			<sql:param value="${param.sellist1}"></sql:param>
			<sql:param value="${param.sellist2}"></sql:param>
			<sql:param value="${param.sellist3}"></sql:param>
			</sql:query>
</c:if>
</c:when>

</c:choose>

		<c:forEach var="row" items="${resultSet.rows}">
		<c:url value="lent_long_old.jsp" var="url"> <c:param name="carname" value="${row.carname}" /></c:url>		
  <div onclick="location.href='${url}'" class="card col-sm-6 " style="width:500px; height:300px; ">
    <div >
   <img class="card-img-top col-sm-8" src="./resources/images/car.jpg" alt="Card image" style="width:250px">
    <span class="col-sm-3"><strong><c:out value="${row.carname}"/> </strong></span>
    </div>
    <div class="card-body">
      <a class="card-title" style="border:1px solid">소비자가 </a>
      <a >14,860,000원</a>
      <a class="card-title" style="border:1px solid red"><span style="color:red"><strong>월 렌탈료</strong></span></a>
      <a >&nbsp;&nbsp; <span style="color:red"><strong>346,000원~</strong></span></a>
     
      <hr style="border:1px solid"></hr>
      <div class="row">
      <ul class="col-sm-6">
      
      
      </ul>
      <ul class="col-sm-6">
      <li>계약기간 <span>최대21개월</span></li>
      <li>지역  <span>부산</span></li>
      </ul>
     </div>
     
    </div>
  </div>
</c:forEach>
 
 
  

  </div>

    

  
  </div>
  
  
</body>
</html>