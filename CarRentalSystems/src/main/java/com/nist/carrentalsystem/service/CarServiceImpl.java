package com.nist.carrentalsystem.service;

import java.sql.*;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.nist.carrentalsystem.databaseconnection.DatabaseConnection;
import com.nist.carrentalsystem.model.Booking;
import com.nist.carrentalsystem.model.CarModel;
import com.nist.carrentalsystem.model.SignUp;

public class CarServiceImpl implements CarService{
	PreparedStatement ps=null;

	public void saveCustomer(SignUp signup) {
		String sql="insert into signup(name,address,gender,email,password,confirm_password,contact_number)values(?,?,?,?,?,?,?)";
		try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql);
			ps.setString(1, signup.getName());
			ps.setString(2, signup.getAddress());
			ps.setString(3, signup.getGender());
			ps.setString(4, signup.getEmail());
			ps.setString(5, signup.getPassword());
			ps.setString(6, signup.getConfirmPassword());
			ps.setLong(7, signup.getContactNumber());
			ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
    		
	}

	@Override
	public List<SignUp> carList() {
    List<SignUp>carList=new ArrayList<>();
    String sql="select * from signup";
    try {
    	ps=DatabaseConnection.getConnection().prepareStatement(sql);
    	ResultSet rs=ps.executeQuery();
    	while(rs.next()) {
    		
    		SignUp signup=new SignUp();
    		signup.setId(rs.getInt("id"));
    		signup.setName(rs.getString("name"));
            signup.setAddress(rs.getString("address"));
            signup.setGender(rs.getString("gender"));
            signup.setEmail(rs.getString("email"));
            signup.setPassword(rs.getString("password"));
            signup.setConfirmPassword(rs.getString("confirm_password"));
            signup.setContactNumber(rs.getLong("contact_number"));
            carList.add(signup);
    		
    	}
    }catch(Exception e) {
    	System.out.println(e);
    }
		
		
		return carList;
	}


	@Override
	public void deleteCustomer(int id) {
	    String sql = "delete from signup where id=?";
	    try {
	        ps = DatabaseConnection.getConnection().prepareStatement(sql);
	        ps.setInt(1, id);
	        ps.executeUpdate();
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	}


	
	

	@Override
	public SignUp carById(int id) {
		SignUp signup=new SignUp();
		String sql="select * from signup where id=?";
		try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				signup.setId(rs.getInt("id"));
                signup.setName(rs.getString("name"));
                signup.setAddress(rs.getString("address"));
                signup.setGender(rs.getString("gender"));
                signup.setEmail(rs.getString("email"));
                signup.setPassword(rs.getString("password"));
                signup.setConfirmPassword(rs.getString("confirm_password"));
                signup.setContactNumber(rs.getLong("contact_number"));
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return signup;
	}

	@Override
	public void updateCustomer(SignUp signup) {
		String sql = "UPDATE signup SET name=?, address=?, gender=?, email=?, password=?, confirm_password=?, contact_number=? WHERE id=?";
		try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql);
			ps.setString(1, signup.getName());
			ps.setString(2, signup.getAddress());
			ps.setString(3, signup.getGender());
			ps.setString(4, signup.getEmail());
			ps.setString(5, signup.getPassword());
			ps.setString(6, signup.getConfirmPassword());
			ps.setLong(7, signup.getContactNumber());
			ps.setInt(8, signup.getId());
			ps.executeUpdate();
		}catch(Exception e) {
			
		}
	}

	
	@Override
	public void saveCarDetails(CarModel carModel) {
   String sql="insert into car_details(car_brand,car_model,car_feature,year,price_per_day,image,status)values(?,?,?,?,?,?,?)";
   try {
	   ps=DatabaseConnection.getConnection().prepareStatement(sql);
	   ps.setString(1, carModel.getCarBrand());
	   ps.setString(2, carModel.getCarModel());
	   ps.setString(3, carModel.getCarFeature());
	   ps.setInt(4, carModel.getYear());
	   ps.setDouble(5, carModel.getPricePerDay());
	   ps.setBlob(6, carModel.getImage());
	   ps.setString(7, carModel.getStatus());
	   ps.executeUpdate();
	   
   }catch(Exception e) {
	   System.out.println(e);
   }
	}

	public List<CarModel> car() {
    List<CarModel> carlist=new ArrayList<>();
    String sql="select * from car_details";
    try {
    	ps=DatabaseConnection.getConnection().prepareStatement(sql);
    	ResultSet rs=ps.executeQuery();
    	while(rs.next()) {
		CarModel carModel=new CarModel();
		carModel.setId(rs.getInt("id"));
		carModel.setCarBrand(rs.getString("car_brand"));
		carModel.setCarModel(rs.getString("car_model"));
		carModel.setCarFeature(rs.getString("car_feature"));
		carModel.setYear(rs.getInt("year"));
		carModel.setPricePerDay(rs.getDouble("price_per_day"));
        Blob blob=rs.getBlob("image");
        byte [] imageByte=blob.getBytes(1,(int) blob.length());
        String imageUrl=Base64.getEncoder().encodeToString(imageByte);
        carModel.setStatus(rs.getString("status"));
        carModel.setImageUrl(imageUrl);
        carlist.add(carModel);
    	}
    }catch(Exception e) {
    	System.out.println(e);
    }
		return carlist;
	}

	@Override
	public void deleteCar(int id) {
    String sql="delete from car_details where id=?";
    try {
        ps = DatabaseConnection.getConnection().prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
    } catch (Exception e) {
        System.out.println(e);
    }
		
	}

	@Override
	public void updateCar(CarModel carModel) {
	    String sql = "UPDATE car_details SET car_model=?, car_brand=?, car_feature=?, year=?, price_per_day=?, image=?,status=? WHERE id=?";
		  try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql);
			ps.setString(1, carModel.getCarModel());
			ps.setString(2, carModel.getCarBrand());
			ps.setString(3, carModel.getCarFeature());
			ps.setInt(4, carModel.getYear());
			ps.setDouble(5, carModel.getPricePerDay());
			ps.setBinaryStream(6,carModel.getImage());
			ps.setString(7,carModel.getStatus());
			ps.setInt(8, carModel.getId());
			ps.executeUpdate();
		  }catch(Exception e) {
			  System.out.println(e);
		  }
	}

	@Override
	public CarModel carById1(int id) {
		CarModel carModel=new CarModel();
		  String sql="select * from car_details";
		    try {
		    	ps=DatabaseConnection.getConnection().prepareStatement(sql);
		    	ResultSet rs=ps.executeQuery();
		    	while(rs.next()) {
				carModel.setId(rs.getInt("id"));
				carModel.setCarBrand(rs.getString("car_brand"));
				carModel.setCarModel(rs.getString("car_model"));
				carModel.setCarFeature(rs.getString("car_feature"));
				carModel.setYear(rs.getInt("year"));
				carModel.setPricePerDay(rs.getDouble("price_per_day"));
				carModel.setImage(rs.getBinaryStream("image"));

		    	}
		    }catch(Exception e) {
		    	System.out.println(e);
		    }
				return carModel;
	}

	@Override
	public boolean login(String username, String password) {
		 String sql = "SELECT * FROM signup WHERE email=? and binary password=?";
		 boolean isValidUser=false;
		 try {
			 ps=DatabaseConnection.getConnection().prepareStatement(sql);
			 ps.setString(1,username);
			 ps.setString(2,password);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 isValidUser=true;
				 
			 }
		 }catch(Exception e) {
			 System.out.println(e);
		 }
		return isValidUser;
	}

	@Override
	public List<SignUp> searchCustomerByName(String name) {

	
		List<SignUp>customerList=new ArrayList<SignUp>();
		String sql="select * from signup where name like ?";
	try {
	   ps=DatabaseConnection.getConnection().prepareStatement(sql);
	   ps.setString(1, "%"+ name+ "%");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			SignUp signup=new SignUp();
			signup.setId(rs.getInt("id"));
            signup.setName(rs.getString("name"));
            signup.setAddress(rs.getString("address"));
            signup.setGender(rs.getString("gender"));
            signup.setEmail(rs.getString("email"));
            signup.setPassword(rs.getString("password"));
            signup.setConfirmPassword(rs.getString("confirm_password"));
            signup.setContactNumber(rs.getLong("contact_number"));
			customerList.add(signup);
			
		}
	}catch(Exception e) {
		System.out.println(e);
	}
	return customerList;	
	}

	@Override
	public void saveBooking(Booking booking) {
		String sql="insert into booking(pick_up_location,pick_up_date,drop_off_location,drop_date)values(?,?,?,?)";
		try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql);
			ps.setString(1,booking.getPickUpLocation());
			ps.setString(2, booking.getPickUpDate());
			ps.setString(3, booking.getDropOffLocation());
			ps.setString(4, booking.getDropDate());
			ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
	}

	
	
	}
