package product;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utill.DatabaseUtill;

// database와 연결해서 가져올 쿼리문 작성 : 메소드
public class productDAO {
	// addBook을 통해서 insert 쿼리문 작성
	public int join(String TestName, int TestNum) {
		// SQL구문을 작성후
		String SQL = "insert into product values (?,?)";
		// try-catch를 통해서 DB와 연결을 한다
		// > UserDAO 참고하여 작성
		
		try { // DB에 연결해서 SQL구문을 사용
			Connection conn = DatabaseUtill.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, TestName);
			pstmt.setInt(2, TestNum);
			return pstmt.executeUpdate(); // 성공시 1반환
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // 오류가 났을때 -1반환
	}
}