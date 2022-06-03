package com.reservation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReservationDBUtil {
	
	// insert
		public static boolean insertreservation(String phoneNo, String arrDate, String depDate, String totRooms, String children, String luxRoom, String cupRoom, String stanRoom, String famRoom, String adults, String country, String fname, String lname, String comname, String address, String city, String email, String notes) {

			boolean isSuccess = false;

			// create database connection
			String url = "jdbc:mysql://localhost:3306/nsbm";
			String user = "root";
			String pass = "chathum";

			try {
				Class.forName("com.mysql.jdbc.Driver");

				Connection con = DriverManager.getConnection(url, user, pass);
				Statement stmt = con.createStatement();
				String sql = "insert into reservation values ('"+phoneNo+"','"+arrDate+"','"+depDate+"','"+totRooms+"','"+children+"','"+luxRoom+"','"+cupRoom+"','"+stanRoom+"','"+famRoom+"','"+adults+"','"+country+"','"+fname+"','"+lname+"','"+comname+"','"+address+"','"+city+"','"+email+"','"+notes+"')";
				int rs = stmt.executeUpdate(sql);
				
				if (rs > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

			return isSuccess;
		}
		
		
		
		
		//validate
	    public static List<Reservation> validate(String phoneNo){
			
			ArrayList<Reservation> us = new ArrayList<>();
			
			//create database connection
			String url = "jdbc:mysql://localhost:3306/nsbm";
			String user = "root";
			String pass = "chathum";
			
			
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url, user, pass);
				Statement stmt = con.createStatement();
				String sql = "select * from reservation where phoneNo = '"+phoneNo+"' ";
				ResultSet rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					
					String phoneN = rs.getString(1);
					String arrDate = rs.getString(2);
					String depDate = rs.getString(3);
					String totRooms = rs.getString(4);
					String children = rs.getString(5);
					String luxRoom = rs.getString(6);
					String cupRoom= rs.getString(7);
					String stanRoom = rs.getString(8);
					String famRoom = rs.getString(9);
					String adults = rs.getString(10);
					String country = rs.getString(11);
					String fname = rs.getString(12);
					String lname = rs.getString(13);
					String comname = rs.getString(14);
					String address = rs.getString(15);
					String city = rs.getString(16);
					String email = rs.getString(17);
					String notes = rs.getString(18);
					
					Reservation u = new Reservation(phoneN,arrDate,depDate,totRooms,children,luxRoom,cupRoom, stanRoom, famRoom, adults, country, fname, lname, comname, address, city, email, notes);
					us.add(u);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return us;
		}
	    
	    
	    
	    
	    //delete
	    
	    public static boolean deletereservation(String phoneNo){
	   		
	   	    boolean isSuccess = false;
	   		
	   		//create database connection
	   	    String url = "jdbc:mysql://localhost:3306/nsbm";
			String user = "root";
			String pass = "chathum";
			
	   		
	   		try {
	   			Class.forName("com.mysql.jdbc.Driver");
	   			
	   			Connection con = DriverManager.getConnection(url, user, pass);
	   			Statement stmt = con.createStatement();
	   			String sql = "Delete from reservation where phoneNo = '"+phoneNo+"' ";
	   					 
	   		    int rs = stmt.executeUpdate(sql);
	   		    
	   		    if(rs > 0) {
	   		    	isSuccess= true;
	   		    }
	   		    else {
	   		    	isSuccess= false;
	   		    }
	   		}
	   		catch(Exception e) {
	   			e.printStackTrace();
	   		}
	   		
	   	
	   		return isSuccess;
	   	}

	   	
}

