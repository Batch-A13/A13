package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementation.Implementation;

import com.Bean.UserRegister;
import com.Interface.Inter;

/**
 * Servlet implementation class Userreg
 */
@WebServlet("/Userreg")
public class Userreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userreg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String unmae=request.getParameter("Username");
		System.out.println("unmae:"+unmae);
		
		String email=request.getParameter("email");
		System.out.println("email:"+email);
		
		String Password=request.getParameter("Password");
		System.out.println("Password:"+Password);
		
		String cPassword=request.getParameter("cPassword");
		System.out.println("cPassword:"+cPassword);
		
		String phno=request.getParameter("phno");
		System.out.println("phno:"+phno);
		
		PrintWriter out=response.getWriter();
	
		UserRegister ur=new UserRegister();
		ur.setName(unmae);
		ur.setEmail(email);
		ur.setPassword(Password);
		ur.setConpassword(cPassword);
		ur.setPhno(phno);
		
		Inter in=new Implementation();
		int reg=in.ulogin(ur);
		
		if(reg==1){
			out.println("<body style='background-color:#9900ff;'>");
			out.println("<html><body><script>alert('Register Successfully!' );</script></body></html>");
		 
			RequestDispatcher rd=request.getRequestDispatcher("UserRegister.jsp?email="+email);  
	        rd.include(request, response);
			 
		}
		else{
			out.println("<body style='background-color:#9900ff;'>");
			out.println ("<html><body><script>alert('Please Give Correct Details!');</script></body></html>"); 
			RequestDispatcher rd=request.getRequestDispatcher("Error.jsp?email="+email);  
	        rd.include(request, response);
			 
		}
	}

}
