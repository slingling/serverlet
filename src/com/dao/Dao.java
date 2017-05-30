package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import com.servlet.User;
import com.util.GetConnection;
 
public class Dao {
    private Connection conn;
    private PreparedStatement pstat;
    String sql = "";
 
    /**
     *
     * 用户登录
     */
    public boolean logoin(User user) throws SQLException {
        conn = GetConnection.getConnection();
        boolean i = false;
        sql = "select * from user where cardnum=? and password=?";
 
        pstat = conn.prepareStatement(sql);
 
        pstat.setString(1, user.getCardnum());
        pstat.setString(2, user.getPassword());
 
        ResultSet rs1 = (ResultSet) pstat.executeQuery();
        if (rs1.next()) {
            i = true;
            rs1.close();
            pstat.close();
        } else {
            i = false;
            rs1.close();
            pstat.close();
        }
        conn.close();
        return i;
    }
 
    /**
     * 用户注册
     */
   /* public void addUser(User user) {
        conn = GetConnection.getConnection();
        sql = "insert into user values(?,?,?,?)";
        try {
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, user.getUser());
            pstat.setString(2, user.getPwd());
            pstat.setString(3, user.getName());
 
            pstat.setInt(5, user.getAge());
            pstat.executeUpdate();
            pstat.close();
            conn.close();
 
        } catch (SQLException e) {
            e.printStackTrace();
        }
 
    }*/
}