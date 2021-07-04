package Dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.porder;

public class porderDao implements implDao{

	public static void main(String[] args) {
		//System.out.println(new porderDao().queryId(1));
		//System.out.println(new porderDao().querySum(1000, 2000));
		//porder p=(porder) new porderDao().queryId(1);
		
		//p.setA(4);
		//p.getSum();
		//new porderDao().update(p);
		
		new porderDao().deleteId(27);

	}

	@Override
	public void add(Object o) {
		porder p=(porder) o;
		String sql="insert into porder(Desk,A,B,C,Sum) values(?,?,?,?,?)";
		Connection conn=implDao.getDB();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getDesk());
			ps.setInt(2, p.getA());
			ps.setInt(3, p.getB());
			ps.setInt(4, p.getC());
			ps.setInt(5, p.getSum());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public String queryAll() {
		Connection conn=implDao.getDB();
		String Sql="select * from porder";
		String sum="";
		try {
			PreparedStatement ps=conn.prepareStatement(Sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				sum=sum+
						"<tr><td>"+rs.getInt("id")+
						"<td>"+rs.getString("desk")+
						"<td>"+rs.getInt("A")+
						"<td>"+rs.getInt("B")+
						"<td>"+rs.getInt("C")+
						"<td>"+rs.getInt("sum")+"\n";
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return sum;
	}

	@Override
	public String querySum(int start, int end) {
		Connection conn=implDao.getDB();
		String Sql="select * from porder where sum>=? and sum<=?";
		String sum="";
		try {
			PreparedStatement ps=conn.prepareStatement(Sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				sum=sum+
						"<tr><td>"+rs.getInt("id")+
						"<td>"+rs.getString("desk")+
						"<td>"+rs.getInt("A")+
						"<td>"+rs.getInt("B")+
						"<td>"+rs.getInt("C")+
						"<td>"+rs.getInt("sum")+"\n";
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return sum;
	}

	@Override
	public Object queryId(int id)  {
		Connection conn=implDao.getDB();
		String Sql="select * from porder where id=?";
		porder p=null;
		try {
			PreparedStatement ps=conn.prepareStatement(Sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				p=new porder();
				p.setId(rs.getInt("id"));
				p.setDesk(rs.getString("desk"));
				p.setA(rs.getInt("A"));
				p.setB(rs.getInt("B"));
				p.setC(rs.getInt("C"));
				p.setSum(rs.getInt("Sum"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return p;
	}

	@Override
	public void update(Object o) {
		//連線
		Connection conn=implDao.getDB();
		//更新資料庫資料
		String Sql="update porder set desk=?,A=?,B=?,C=?,sum=? where id=?";
		//從update(Object o)需要轉型porder o
		porder p=(porder)o;
		try {
			PreparedStatement ps=conn.prepareStatement(Sql);
			ps.setString(1, p.getDesk());
			ps.setInt(2, p.getA());
			ps.setInt(3, p.getB());
			ps.setInt(4, p.getC());
			ps.setInt(5, p.getSum());
			ps.setInt(6, p.getId());
			
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	@Override
	public void deleteId(int id) {
		//連線
		Connection conn=implDao.getDB();
		//刪除資料庫資料
		String SQl="delete from porder where id=?";
		
		try {
			
			PreparedStatement ps=conn.prepareStatement(SQl);
			//接收 ? and id
			ps.setInt(1, id);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	

}
