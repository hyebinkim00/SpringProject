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
		System.out.println("�ε� ����");
		 DriverManager.getConnection(url,user,password);
		 System.out.println("����Ŭ ���� ����");
	}catch(ClassNotFoundException e) {
		System.out.println("�ε� ����");
	}catch(SQLException e) {
		System.out.println("����Ŭ ���� ����");
	}
}
}
