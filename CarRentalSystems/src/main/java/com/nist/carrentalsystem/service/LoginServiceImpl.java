package com.nist.carrentalsystem.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.nist.carrentalsystem.databaseconnection.DatabaseConnection;

public class LoginServiceImpl implements LoginService{
PreparedStatement ps=null;
	@Override
	public String verifyUser(String email, String password) {
    String sql="select * from signup where email=? and password=?";
    String name=null;
    try {
    ps=DatabaseConnection.getConnection().prepareStatement(sql);
    ps.setString(1,email);
    ps.setString(2, password);
    ResultSet rs=ps.executeQuery();
    while(rs.next()) {
    	name=rs.getString("name");
    }
    }catch(Exception e) {
    	System.out.println(e);
    }
		
		return name;
	}

}
