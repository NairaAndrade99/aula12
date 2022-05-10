/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Blay
 */
public class Funcionario {
    
    private int id;
    private String FirstName;
    
    public static ArrayList<Funcionario> getList() throws Exception{
        ArrayList<Funcionario> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        String query = "SELECT * FROM employees ORDER BY FirstName";
        ResultSet rs = stmt.executeQuery(query);
        while(rs.next()){
            int id = rs.getInt("EmployeeId");
            String name = rs.getString("FirstName");
            Funcionario f = new Funcionario(id, name);
            list.add(f);
        }
        rs.close();  
        stmt.close();
        con.close();
        return list;
    }
    
    public static int getCount() throws Exception{
        int count = 0;
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        String query = "SELECT count(*) as count FROM employees";
        ResultSet rs = stmt.executeQuery(query);
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();  
        stmt.close();
        con.close();
        return count;
    }

    public Funcionario(int id, String FirstName) {
        this.id = id;
        this.FirstName = FirstName;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
}
