package com.nist.carrentalsystem.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nist.carrentalsystem.model.SignUp;
import com.nist.carrentalsystem.service.CarService;
import com.nist.carrentalsystem.service.CarServiceImpl;

@WebServlet("/CarController")
public class CarController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        long contactNumber = Long.parseLong(request.getParameter("contactNumber"));
        String id=request.getParameter("id");

       

        SignUp signUp = new SignUp();
        signUp.setName(name);
        signUp.setAddress(address);
        signUp.setGender(gender);
        signUp.setEmail(email);
        signUp.setPassword(password);
        signUp.setConfirmPassword(confirmPassword);
        signUp.setContactNumber(contactNumber);

        CarService carService = new CarServiceImpl();
        if (id == null || id.isEmpty()) {
            carService.saveCustomer(signUp);
        } else {
            signUp.setId(Integer.parseInt(id));
            carService.updateCustomer(signUp);
        }

        List<SignUp> carList=carService.carList();
        
        request.setAttribute("signupList", carList);
        
        
        
        RequestDispatcher rd=request.getRequestDispatcher("ViewDetails.jsp");
    	rd.forward(request, response);
        
      
        	
        }
        
        
        
    }

