package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
 
@WebServlet("/ThirdLogin")
public class ThirdLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ThirdLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("username");
		System.out.println("Admin username---:"+s1);
		
		String s2=request.getParameter("password");
		System.out.println("Admin Password---:"+s2);
		
		
		if (s1.equals("Admin") && s2.equals("Admin")) {
			response.sendRedirect("ThirdView.jsp");
		    //System.out.println("register Successfully");
			
		} else {
			JOptionPane jpane=new JOptionPane("Invalid Log In");
			JDialog jdialog=jpane.createDialog("Alert");
		
			jdialog.setAlwaysOnTop(true);
			
			jdialog.show();
			
			
			
			/*jpane.showMessageDialog(null,"Invalid Log In ");*/
			response.sendRedirect("Error.jsp");
	}
	}

}
