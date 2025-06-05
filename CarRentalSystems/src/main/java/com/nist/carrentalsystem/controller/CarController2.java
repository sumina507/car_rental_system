package com.nist.carrentalsystem.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.nist.carrentalsystem.model.CarModel;
import com.nist.carrentalsystem.service.CarService;
import com.nist.carrentalsystem.service.CarServiceImpl;


@WebServlet("/CarController2")
@MultipartConfig(maxFileSize = 16777216)

public class CarController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   String carBrand=request.getParameter("brand");
   String carModel=request.getParameter("model");
   int year=Integer.parseInt(request.getParameter("year"));
   double pricePerDay=Double.parseDouble(request.getParameter("price"));
   String carFeatures=request.getParameter("feature");
   String id=request.getParameter("id");


   
   Part filePart=request.getPart("image");
   InputStream image=filePart.getInputStream();
   
   CarModel carModel1=new CarModel();
   carModel1.setCarBrand(carBrand);
   carModel1.setCarFeature(carFeatures);
   carModel1.setYear(year);
   carModel1.setPricePerDay(pricePerDay);
   carModel1.setCarModel(carModel);
   carModel1.setImage(image);
   carModel1.setStatus("available");
   
   
   
   CarService carService=new CarServiceImpl();
   if(id==null || id.isEmpty()) {
	   carService.saveCarDetails(carModel1);
	   
   }else {
	   carModel1.setId(Integer.parseInt(id));
	   carService.updateCar(carModel1);
   }
   	List<CarModel> carList=carService.car();
     request.setAttribute("carList", carList);


RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
rd.forward(request, response);
   
   
   
   
		
		
	}

}
