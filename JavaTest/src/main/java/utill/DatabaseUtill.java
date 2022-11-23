package utill;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtill {
	public static Connection getConnection() {
		try { // try쪽에서 오류가 났을때
			// MySQL의 데이터베이스와 연결
			// jdbc:mysql://localhost:3306/(데이터베이스)
			String dbURL = "jdbc:mysql://localhost:3306/JAVA";
			String dbID = "root";
			String dbPassword = "iym1511"; //사용할때만 작성-git에올릴때 빈칸으로
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL,dbID,dbPassword);
			
		}catch (Exception e) { // catch쪽에서 오류를 받아서 실행
			// try catch를 사용하면 시스템이강제로 종료되지않는다
			e.printStackTrace();
		}
		return null;
	}
}
