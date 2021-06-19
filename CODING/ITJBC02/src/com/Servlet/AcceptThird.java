package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementation.Implementation;

import com.Bean.Accthird;
import com.Interface.Inter;

/**
 * Servlet implementation class AcceptThird
 */
@WebServlet("/AcceptThird")
public class AcceptThird extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptThird() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		String fname=request.getParameter("filename");
		System.out.println("fname:"+fname);
	
		
		String filekey=request.getParameter("filekey");
		System.out.println("filekey:"+filekey);
		
		
		String cspkey=request.getParameter("cspkey");
		System.out.println("cspkey:"+cspkey);
		
		
		String umail=request.getParameter("umail");
		System.out.println("umail:"+umail);
		
		
		String omail=request.getParameter("omail");
		System.out.println("omail:"+omail);
		
		
		String prehash=request.getParameter("prehash");
		System.out.println("prehash:"+prehash);
	

		String afterhash=request.getParameter("afterhash");
		System.out.println("afterhash:"+afterhash);
		
		Accthird ac=new Accthird();
			ac.setFilename(fname);
			ac.setFilekey(filekey);
			ac.setCspkey(cspkey);
			ac.setOmail(omail);		
			ac.setUmail(umail);
			ac.setPrehash(prehash);
			ac.setAfterhah(afterhash);
			
			Inter in=new Implementation();
			int acc=in.taccept(ac);
			
			if(acc==1){
				response.sendRedirect("Success.jsp");
			}
			else{
				response.sendRedirect("Error.jsp");
			}
	}
	
}
