/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.SistemaIteligente.WEkA;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author mayco
 */
public class ConnectionFactory {
    private static java.sql.Connection con = null;
    public static java.sql.Connection getConnection(){
        try {
            con = DriverManager.getConnection("jdbc:sqlite:C:/xampp/htdocs/SistemaInteligente/sogefi.db");
            return con;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Erro: "+e);
            return null;
        }
    }
    public static void closeConnection(java.sql.Connection con){
        try{
            if(con != null){
                con.close();
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Erro: "+e);
        }
    }
    public static void closeConnection(java.sql.Connection con,PreparedStatement stmt){
        try{
            if(stmt != null){
                stmt.close();
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Erro: "+e);
        }
        closeConnection(con);
    }
    public static void closeConnection(java.sql.Connection con,PreparedStatement stmt,ResultSet rs){
        try{
            if(rs != null){
                rs.close();
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Erro: "+e);
        }
        closeConnection(con,stmt);
    }
}
