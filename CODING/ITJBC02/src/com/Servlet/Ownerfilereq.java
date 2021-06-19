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
 
@WebServlet("/Ownerfilereq")
public class Ownerfilereq extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Ownerfilereq() {
        super();
         
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String omail=request.getParameter("omail");
		 System.out.println("omail:"+omail);
		 
		 String file=request.getParameter("file");
		 System.out.println("file:"+file);
		 
		 String fileid=request.getParameter("id");
		 System.out.println("fileid:"+fileid);
		 
		 String message=request.getParameter("mess");
		 System.out.println("message:"+message);
		 
		 OwnerRequest owr=new OwnerRequest();
		 owr.setFile(file);
		 owr.setOmail(omail);
		 owr.setFileid(fileid);
		 owr.setMessage(message);
		 owr.setAccept("Accept");
		 Inter inter=new Implementation();
		 int req=inter.oreq(owr);
		 
		 if(req==1){
			 response.sendRedirect("Requestsentsuccess.jsp");
		 }
		 else{
			 response.sendRedirect("Error.jsp");
		 }
	}

}
