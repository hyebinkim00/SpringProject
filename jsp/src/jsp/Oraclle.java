package jsp;

import java.sql.DriverManager;
import java.sql.SQLException;

public class Oraclle {
public static void main(String[] args){
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="hr";
	String password="hr";		
	
	try {
		Class.forName(driver);
		System.out.println("로딩 성공");
		 DriverManager.getConnection(url,user,password);
		 System.out.println("오라클 연결 성공");
	}catch(ClassNotFoundException e) {
		System.out.println("로딩 실패");
	}catch(SQLException e) {
		System.out.println("오라클 연결 실패");
	}
}
}
