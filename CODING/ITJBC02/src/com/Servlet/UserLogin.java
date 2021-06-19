package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Implementation.Implementation;

import com.Bean.UserRegister;
import com.Interface.Inter;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Email=request.getParameter("Email");
		System.out.println("Email:"+Email);
		
		String Password=request.getParameter("Password");
		System.out.println("Password:"+Password);
		
		HttpSession sess=request.getSession();
		sess.setAttribute( "email",Email);
		System.out.println("email: "+Email);
		
		UserRegister ur=new UserRegister();
		ur.setEmail(Email);
		ur.setPassword(Password);
		
		PrintWriter out=response.getWriter();
		
		Inter in=new Implementation();
		boolean log=in.ulog(ur);
		
		if(log==true){
			out.println("<body style='background-color:#9900ff;'>");
			out.println("<html><body><script>alert('Login Successfully!' );</script></body></html>");
		 
			RequestDispatcher rd=request.getRequestDispatcher("UserView.jsp?email="+Email);  
	        rd.include(request, response);
		}
		else{
			out.println("<body style='background-color:#9900ff;'>");
			out.println("<html><body><script>alert('Register Successfully!' );</script></body></html>");
		 
			RequestDispatcher rd=request.getRequestDispatcher("Error.jsp?email="+Email);  
	        rd.include(request, response);
		}
	}

}
