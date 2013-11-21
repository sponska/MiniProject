 package mybeans;
 
 import java.sql.*;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


 
 public class MemberDao {
    
 	private static MemberDao instance = new MemberDao();
    
    public static MemberDao getInstance() {
        return instance;
    }
    
    private MemberDao() {
    }
    
    private Connection getConnection() throws Exception {
      Context initCtx = new InitialContext();
      Context envCtx = (Context) initCtx.lookup("java:comp/env");
      DataSource ds = (DataSource)envCtx.lookup("mysql");
      return ds.getConnection();
    }
 
    public void insertMember(MemberVo member) 
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"insert into MEMBER values (?,?,?,?,?,?,?,?,?)");
            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPasswd());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getJumin1());
            pstmt.setString(5, member.getJumin2());
            pstmt.setString(6, member.getPhoneNumber());
            pstmt.setString(7, member.getEmail());
            pstmt.setString(8, member.getAddress());
			pstmt.setTimestamp(9, member.getReg_date());
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
 
    public int userCheck(String id, String passwd) 
    		throws Exception {
    			Connection conn = null;
    	        PreparedStatement pstmt = null;
    			ResultSet rs= null;
    	        String dbpasswd="";
    			int x=-1;
    	        
    			try {
    	            conn = getConnection();
    	            
    	            pstmt = conn.prepareStatement(
    	            	"select passwd from MEMBER where id = ?");
    	            pstmt.setString(1, id);
    	            rs= pstmt.executeQuery();

    				if(rs.next()){
    					dbpasswd= rs.getString("passwd"); 
    					if(dbpasswd.equals(passwd))
    						x= 1; //인증 성공
    					else
    						x= 0; //비밀번호 틀림
    				}else
    					x= -1;//해당 아이디 없음
    				
    	        } catch(Exception ex) {
    	            ex.printStackTrace();
    	        } finally {
    				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
    	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
    	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    	        }
    			return x;
    		}
	
	public int confirmId(String id) 
	throws Exception {
		Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs= null;
      	int x=-1;
        
		try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"select id from MEMBER where id = ?");
            pstmt.setString(1, id);
            rs= pstmt.executeQuery();

			if(rs.next())
				x= 1; //해당 아이디 있음
			else
				x= -1;//해당 아이디 없음		
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
	}


    public MemberVo getMember(String id)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemberVo member=null;
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"select * from MEMBER where id = ?");
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new MemberVo();
                member.setId(rs.getString("id"));
                member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
                member.setJumin1(rs.getString("jumin1"));
                member.setJumin2(rs.getString("jumin2"));
                member.setPhoneNumber(rs.getString("phoneNumber"));
				member.setEmail(rs.getString("email"));
				member.setAddress(rs.getString("address"));
                member.setReg_date(rs.getTimestamp("reg_date"));     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return member;
    }
    
    public void updateMember(MemberVo member)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
              "update MEMBER set passwd=?,name=?,phoneNumber=?,email=?,address=? "+
              "where id=?");
            pstmt.setString(1, member.getPasswd());
            pstmt.setString(2, member.getName());
            pstmt.setString(3, member.getPhoneNumber());
            pstmt.setString(4, member.getEmail());
            pstmt.setString(5, member.getAddress());
            pstmt.setString(6, member.getId());
            
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    public int deleteMember(String id, String passwd)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        String dbpasswd="";
        int x=-1;
        try {
			conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select passwd from MEMBER where id = ?");
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            
			if(rs.next()){
				dbpasswd= rs.getString("passwd"); 
				if(dbpasswd.equals(passwd)){
					pstmt = conn.prepareStatement("delete from MEMBER where id=?");
                    pstmt.setString(1, id);
                    pstmt.executeUpdate();
					x= 1; //회원탈퇴 성공
				}else
					x= 0; //비밀번호 틀림
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }
    public Vector<MemberVo> select() throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		Vector<MemberVo> vector=new Vector<MemberVo>();
		
		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select * from member");
			 ResultSet rs=pstmt.executeQuery();
			 while(rs.next()) {
				 MemberVo member =  new MemberVo();
				 member.setId(rs.getString(1));
				 member.setPasswd(rs.getString(2));
				 member.setName(rs.getString(3));
				 member.setJumin1(rs.getString(4));
				 member.setJumin2(rs.getString(5));
				 member.setPhoneNumber(rs.getString(6));
				 member.setEmail(rs.getString(7));
				 member.setAddress(rs.getString(8));
				 vector.add(member);
			 }
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		 return vector;
	}//select
 }