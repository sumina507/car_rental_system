package com.nist.carrentalsystem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nist.carrentalsystem.model.Booking;
import com.nist.carrentalsystem.service.CarService;
import com.nist.carrentalsystem.service.CarServiceImpl;


@WebServlet("/BookingController")
public class BookingController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pickUpLocation = request.getParameter("pickup");
        String pickUpDate = request.getParameter("pickupDate");
        String dropOffLocation = request.getParameter("dropoff");
        String dropDate = request.getParameter("dropDate");
        int carId=Integer.parseInt(request.getParameter("carId"));

        Booking booking = new Booking();
        booking.setCarId(carId);
        booking.setPickUpLocation(pickUpLocation);
        booking.setPickUpDate(pickUpDate);
        booking.setDropOffLocation(dropOffLocation);
        booking.setDropDate(dropDate);

        CarService bookingService = new CarServiceImpl();

        try {
            bookingService.saveBooking(booking); 
            response.sendRedirect("success.jsp"); 
        } catch (Exception e) {
            System.out.println(e);
            response.sendRedirect("error.jsp"); 
        }
    }
}
