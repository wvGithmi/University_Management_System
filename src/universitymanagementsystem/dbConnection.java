/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package universitymanagementsystem;
import java.sql.*;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
/**
 *
 * @author Pasindu Chinthana
 */
public class dbConnection {
    
    Connection con;
    ResultSet rs;
    Statement stmt;
    
    public dbConnection(){
    }
    public ResultSet getResult(String query){
        rs=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","");
            stmt=con.createStatement();
            rs=stmt.executeQuery(query);  
        }catch(Exception e){
        JFrame f = new JFrame();
        JOptionPane.showMessageDialog(f,"Error\n"+e); 
        }
        return rs;
    }
    
    public void insertResult(String query){
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","");
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.execute();
        }catch(Exception e){
        JFrame f = new JFrame();
        JOptionPane.showMessageDialog(f,"Error\n"+e); 
        }
        
    }
}
