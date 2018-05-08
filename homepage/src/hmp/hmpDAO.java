package hmp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.DBClose;
import db.DBOpen;

public class hmpDAO {
	
	public boolean create(hmpDTO dto) {
		boolean flag = false;
		
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into hmp (id, passwd, name, tel, email, zipcode, ");
		sql.append(" address1, address2, hdate, filename, grade) ");
		sql.append(" values(?, ?, ?, ?, ?, ?, ");
		sql.append(" ?, ?, sysdate, ?, 'H') ");
		
		try {
			pstmt= con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getTel());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getZipcode());
			pstmt.setString(7, dto.getAddress1());
			pstmt.setString(8, dto.getAddress2());
			pstmt.setString(9, dto.getFilename());
			
			int cnt = pstmt.executeUpdate();
			
			if(cnt>0) {
				flag = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBClose.close(con, pstmt);
		}
		
				
		
		return flag;
	}
	
	public hmpDTO read (String id) {
		hmpDTO dto = null;
		
		return dto;
	}
	
	public boolean update(hmpDTO dto) {
		boolean flag = false;
		
		return flag;
	}
	
	public boolean delete(String id) {
		boolean flag = false;
		
		return flag;
	}
	
	public List<hmpDTO> list () {
		List list = new ArrayList<>();
		
		return list;
	}
	
	
	//ID 중복확인
	public boolean duplicateId(String id) {
		boolean flag = false;
		
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select count(id) ");
		sql.append(" from hmp ");
		sql.append(" where id = ? ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int cnt = rs.getInt(1);
					if(cnt > 0) {
						flag = true;
					}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBClose.close(con, pstmt, rs);
			
		}
		
		return flag;
	}
	
	//email 중복확인
	public boolean duplicateEmail(String email) {
		boolean flag = false;
		
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select count(email)  ");
		sql.append(" from hmp ");
		sql.append(" where email = ? ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int cnt = rs.getInt(1);
					if(cnt>0) {
						flag = true;
					}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBClose.close(con, pstmt, rs);
		}
		
		return flag;
	}
	

}
