package com.nist.carrentalsystem.model;
//booking model
public class Booking {
   private int carId;
	private String pickUpLocation,pickUpDate,dropOffLocation,dropDate;

	
	
	public int getCarId() {
		return carId;
	}

	public void setCarId(int carId) {
		this.carId = carId;
	}

	public String getPickUpLocation() {
		return pickUpLocation;
	}

	public void setPickUpLocation(String pickUpLocation) {
		this.pickUpLocation = pickUpLocation;
	}

	public String getPickUpDate() {
		return pickUpDate;
	}

	public void setPickUpDate(String pickUpDate) {
		this.pickUpDate = pickUpDate;
	}

	public String getDropOffLocation() {
		return dropOffLocation;
	}

	public void setDropOffLocation(String dropOffLocation) {
		this.dropOffLocation = dropOffLocation;
	}

	public String getDropDate() {
		return dropDate;
	}

	public void setDropDate(String dropDate) {
		this.dropDate = dropDate;
	}

	
	

}
