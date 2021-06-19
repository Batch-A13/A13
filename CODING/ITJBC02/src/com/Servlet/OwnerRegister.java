package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementation.Implementation;

import com.Bean.OwnerReg;
import com.Interface.Inter;

 
@WebServlet("/OwnerRegister")
public class OwnerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public OwnerRegister() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String name=request.getParameter("unmae");
		System.out.println("username:"+name);
		
		String email=request.getParameter("email");
		System.out.println("email:"+email);
		
		String phno=request.getParameter("phno");
		System.out.println("phno:"+phno);
		
		String pass=request.getParameter("pass");
		System.out.println("pass:"+pass);
		
		String cpass=request.getParameter("cpass");
		System.out.println("cpass:"+cpass);
		
		OwnerReg or=new OwnerReg();
			or.setName(name);
			or.setEmail(email);
			or.setPhno(phno);
			or.setPassword(pass);
			or.setCpassword(cpass);
			
			Inter in=new Implementation();
			int reg=in.owb(or);
			
			if(reg==1){
				response.sendRedirect("OwnerRegisuccess.jsp");
			}else{
				response.sendRedirect("Error.jsp");
			}
		
	}

}
