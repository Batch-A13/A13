package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Implementation.Implementation;

import com.Bean.OwnerReg;
import com.Interface.Inter;

/**
 * Servlet implementation class OwnerLogin
 */
@WebServlet("/OwnerLogin")
public class OwnerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerLogin() {
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
		// TODO Auto-generated method stub
		
		String email=request.getParameter("username");
		System.out.println("email:"+email);
		
		String password=request.getParameter("password");
		System.out.println("password:"+password);
		
		HttpSession sess=request.getSession();
		sess.setAttribute( "email",email);
		System.out.println("email: "+email);
		
		OwnerReg or =new OwnerReg();
		or.setEmail(email);
		or.setPassword(password);
		
		Inter ir=new Implementation();
		boolean login=ir.ol(or);
		
		if(login==true){
			response.sendRedirect("OwnerView.jsp");
		}
		else{
			response.sendRedirect("Error.jsp");
		}
	}

}
