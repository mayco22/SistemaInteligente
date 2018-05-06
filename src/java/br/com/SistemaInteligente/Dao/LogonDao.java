/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.SistemaInteligente.Dao;

/**
 *
 * @author mayco
 */
import br.com.SistemaInteligente.Bean.LogonBean;
import br.com.SistemaIteligente.WEkA.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LogonDao {
    
    public boolean GetLogon(String usuario, String pass) throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Connection con = ConnectionFactory.getConnection();
        
        stmt = con.prepareStatement("Select * from Usuarios where name = ? and senha = ?");
        stmt.setString(1, usuario);
        stmt.setString(2, pass);
        rs = stmt.executeQuery();
        LogonBean l = new LogonBean();
        int sum = 0;
        while(rs.next()){
            l.setName(rs.getString("name"));
            l.setSenha(rs.getString("senha"));
            sum = sum + 1;
        }
        if(sum > 0){
            ConnectionFactory.closeConnection(con, stmt, rs);
            return true;
        }else{
            ConnectionFactory.closeConnection(con, stmt, rs);
            return false;
        }
    }
}
