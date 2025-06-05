package com.nist.carrentalsystem.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nist.carrentalsystem.model.CarModel;
import com.nist.carrentalsystem.model.SignUp;
import com.nist.carrentalsystem.service.CarService;
import com.nist.carrentalsystem.service.CarServiceImpl;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	 response.getWriter().append("Served at").append(request.getContextPath());
    	String action = request.getParameter("action");
		
        String navigateTo = "";
        CarService carService = new CarServiceImpl();

        
       
       
        if (action.equalsIgnoreCase("newCar")) {
              navigateTo = "Form.jsp";
              
              
           } else if (action.equalsIgnoreCase("viewDetails")) {
        	   navigateTo="ViewDetails.jsp";
           	List<SignUp> carList1=carService.carList();
           	request.setAttribute("carList1", carList1);    
           
              

            }else if(action.equalsIgnoreCase("carDetails")) {
            	navigateTo="CarDetails1.jsp";
            	List<CarModel> carList=carService.car();
            	
            	request.setAttribute("carList", carList);
           
            	

            	
            	
    }else if(action.equalsIgnoreCase("delete1")) {
        int id = Integer.parseInt(request.getParameter("id"));
        carService.deleteCar(id);
        navigateTo="CarDetails1.jsp";
    	List<CarModel> carList=carService.car();
    	request.setAttribute("carList", carList);
         
    	
    }else if(action.equalsIgnoreCase("edit1")) {
        int id = Integer.parseInt(request.getParameter("id"));
        CarModel carModel=carService.carById1(id);
        navigateTo="Form.jsp";
        request.setAttribute("form1", carModel);
    
    
    
    
    }else if (action.equalsIgnoreCase("delete")) {
                
                    int id = Integer.parseInt(request.getParameter("id"));
                   carService.deleteCustomer(id);
                   navigateTo="ViewDetails.jsp";
                  	List<SignUp> carList1=carService.carList();
                  	request.setAttribute("signupList", carList1);              
                     
                  

           } else if (action.equalsIgnoreCase("edit")) {
               
                   int id = Integer.parseInt(request.getParameter("id"));
                  SignUp signUp = carService.carById(id);
                  navigateTo = "signup.jsp";
                  request.setAttribute("sign", signUp);
                  

                           }else if (action.equalsIgnoreCase("bookNow")){ // Book Now condition
                               navigateTo = "BookNow.jsp";
                               int carId = Integer.parseInt(request.getParameter("carId")); // Get car ID if needed
                               request.setAttribute("carId", carId); // Set the car ID to be used in the booking page
                           }else if(action.equalsIgnoreCase("home")){
        	   navigateTo="homepage.jsp";
           	List<CarModel> carList=carService.car();
           	List<CarModel> availableCars = new ArrayList<>();
           	for (CarModel car : carList) {
           	    if (car.getStatus().equalsIgnoreCase("available")) {
           	        availableCars.add(car);
           	    }
           	}
        	
           	request.setAttribute("carList", availableCars);
        	   
           } else if(action.equalsIgnoreCase("logout")) {
        	   HttpSession session = request.getSession(); // Get the existing session without creating a new one
        	       session.invalidate();// destroy all the value of session
        	       navigateTo="Login.jsp";
        	       
        	       

           }
       
       
   
	RequestDispatcher rd = request.getRequestDispatcher(navigateTo);
   rd.forward(request, response);
  
    }
}

