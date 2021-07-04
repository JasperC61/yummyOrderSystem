package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public interface implDao {
	//連線方法
	static Connection getDB()
	{
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/gjun?useUnicode=true&characterEncoding=utf-8";
		String user="root";
		String password="1234";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return conn;
	}
	
	
    //新增物件
	
	  void add(Object o);
	
	//查詢物件
	
	  String queryAll();
	  //查詢金額從start到end
	  String querySum(int start,int end);
	  Object queryId(int id);
	//修改物件
	  void update(Object o);
	
	
	//刪除物件
     void deleteId(int id);
}
