package com.nist.carrentalsystem.service;

import java.util.*;

import com.nist.carrentalsystem.model.Booking;
import com.nist.carrentalsystem.model.CarModel;
import com.nist.carrentalsystem.model.SignUp;

public interface CarService {
	
	public void saveCustomer(SignUp signup);
	public List<SignUp>carList();
	public void deleteCustomer(int id);
	public void updateCustomer(SignUp signup);
	public SignUp carById(int id);
	public void saveCarDetails(CarModel carModel);
	public List<CarModel>car();
	public void deleteCar(int id);
	public void updateCar(CarModel carModel );
	public CarModel carById1(int id);
	public boolean login(String username,String password);
	public List<SignUp> searchCustomerByName(String name);
	public void saveBooking(Booking booking);
	


}
