package com.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ReservationInsert")
public class ReservationInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String phoneNo = request.getParameter("pno");
		String arrDate = request.getParameter("arrive");
		String depDate = request.getParameter("depature");
		String totRooms = request.getParameter("trooms");
		String children = request.getParameter("children");
		String luxRoom = request.getParameter("lroom");
		String cupRoom = request.getParameter("croom");
		String stanRoom = request.getParameter("sroom");
		String famRoom = request.getParameter("froom");
		String adults = request.getParameter("adults");
		String country = request.getParameter("country");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String comname = request.getParameter("cname");
		String address = request.getParameter("add");
		String city  = request.getParameter("city");
		String email = request.getParameter("email");
		String notes = request.getParameter("notes");
		
		boolean isTrue;
		
		isTrue = ReservationDBUtil.insertreservation(phoneNo, arrDate, depDate, totRooms, children, luxRoom, cupRoom, stanRoom, famRoom, adults, country, fname, lname, comname, address, city, email, notes);

		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}