package drink;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DrinkDAO {

	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	
	public Connection dbcon() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,user,password);
			if( con!=null) System.out.println("ok");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	public void close(AutoCloseable ...a) {
		for(AutoCloseable item: a) {
			try {
				item.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public ArrayList<String> selectAll(){
		
		//연결
		Connection con = dbcon();
		
		//sql
		String sql = "select * from goodstbl";
		
		//sql 실행
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		ArrayList<String> list = new ArrayList<>();
		try {
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 해제
		close(rs,pst,con);
		return list;
	}
	public Drink selectone(String name) {
		// db연결
		Connection con = dbcon();
		// sql
		String sql = "select * from goodstbl where name = ?";
		PreparedStatement pst = null;
		ResultSet rs = null;
		Drink d = null;
		try {
			pst= con.prepareStatement(sql);
			pst.setString(1, name);
			rs=pst.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString(1);
				String name_ = rs.getString(2);
				int price =Integer.parseInt(rs.getString(3));
				
				d = new Drink(id,name_,price);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close(rs,pst,con);
		return d;
	}
 
}
