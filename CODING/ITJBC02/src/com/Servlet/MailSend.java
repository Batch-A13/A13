package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.MailBean;



/**
 * Servlet implementation class MailSend
 */
@WebServlet("/MailSend")
public class MailSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailSend() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 
		String to=request.getParameter("umail");
		System.out.println("Usermail: "+to);
		
		String filename=request.getParameter("filename");
		System.out.println("filename: "+filename);
		
		String filekey=request.getParameter("filekey");
		System.out.println("filekey: "+filekey);
		
		String cspkey=request.getParameter("cspkey");
		System.out.println("cspkey: "+cspkey);
	 
		
		String prehash=request.getParameter("prehash");
		System.out.println("prehash: "+prehash);
		
		String afterhash=request.getParameter("afterhash");
		System.out.println("afterhash: "+afterhash);


				String subject="Welcome";
				String from ="cibettech@gmail.com";
				String[] mail_list={to};
				String body ="Filename: "+filename+"\n"+"Filekey: "+filekey+"\n"+"Cspkey: "+cspkey+"prehash: "+prehash+"afterhash: "+afterhash; 
				String pass="cibettech12345";
				System.out.println("pass"+pass);

				MailBean.sendFromGMail(from, pass, mail_list, subject, body);

		response.sendRedirect("ServiceView.jsp");

		   
	}

}
