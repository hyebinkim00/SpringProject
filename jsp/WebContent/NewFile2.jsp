<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <!-- 폼에서 넘어온 값 캐릭터셋 설정 -->
<%request.setCharacterEncoding("utf-8"); %> --%>



<%  // 데이터베이스 입력 로직
	PreparedStatement ppst = null;
	ResultSet rs= null;
    Connection con=null;
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    
    Class.forName(driver);
    con=DriverManager.getConnection(url,"hr","hr");
    
	try{
		String sql="select * from member";
	
		ppst = con.prepareStatement(sql); 
		
		rs=ppst.executeQuery();
	
		while(rs.next()){
			String id=rs.getString("id");
			String passwd=rs.getString("passwd");
			String email=rs.getString("email");
%>
			
			
			<%=id %>
			<%=passwd %>
			<%=email %>


<%			
		}
	}catch(Exception e){
		e.getStackTrace();
	}finally{
		
			if(ppst != null)
				ppst.close();
			if(con != null)
				con.close();
		
	}
%>