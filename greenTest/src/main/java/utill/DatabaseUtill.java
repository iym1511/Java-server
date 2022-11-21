package utill;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtill {
	public static Connection getConnection() {
		try { // try쪽에서 오류가 났을때
			// MySQL의 데이터베이스와 연결
			// jdbc:mysql: //
			String dbURL = "jdbc:mysql://localhost:3306/JAVA";
			String dbID = "root";
			String dbPassword = "0000"; // 사용할때만 작성 -git에 올릴때 빈칸
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) { // catch쪽에서 오류를 받아서 실행
			// try catch를 사용하면 시스템이 강제로 종료되지않는다
			e.printStackTrace();
		}
		return null;
	}
}
