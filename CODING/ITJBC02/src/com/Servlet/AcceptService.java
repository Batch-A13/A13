package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementation.Implementation;

import com.Bean.OwnerRequest;
import com.Interface.Inter;

/**
 * Servlet implementation class AcceptService
 */
@WebServlet("/AcceptService")
public class AcceptService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptService() {
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
		
		String filename=request.getParameter("filename");
		System.out.println("filename:"+filename);
		
		
		String fileid=request.getParameter("fileid");
		System.out.println("fileid:"+fileid);
		
		
		String umail=request.getParameter("umail");
		System.out.println("umail:"+umail);
		
		String id=request.getParameter("id");
		System.out.println("id:"+id);
		 
		String accept="Accpet";
		 
		OwnerRequest or=new OwnerRequest();
			or.setAccept(accept);
			or.setId(id);
			
			Inter in=new Implementation();
			int acc=in.accept(or);
			
			
			
	}

}
