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
import com.nist.carrentalsystem.service.CarService;
import com.nist.carrentalsystem.service.CarServiceImpl;
import com.nist.carrentalsystem.service.LoginService;
import com.nist.carrentalsystem.service.LoginServiceImpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
	
		   String email=request.getParameter("email");
		   String password=request.getParameter("password");
		   LoginService loginService=new LoginServiceImpl();
		   
		String name=loginService.verifyUser(email, password);
	    String navigateTo="";
		if(name==null) {
			navigateTo="Login.jsp";
			request.setAttribute("Invalid", "Invalid Email or password");
			
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("name", name);
			   navigateTo="homepage.jsp";
			   CarService carService = new CarServiceImpl();
	           	List<CarModel> carList=carService.car();
	           	List<CarModel> availableCars = new ArrayList<>();
	           	for (CarModel car : carList) {
	           	    if (car.getStatus().equalsIgnoreCase("available")) {
	           	        availableCars.add(car);
	           	    }
	           	}
	        	
	           	request.setAttribute("carList", availableCars);
		}
		RequestDispatcher rd=request.getRequestDispatcher(navigateTo);
		rd.forward(request, response);
		doGet(request, response);
	}
	

}
