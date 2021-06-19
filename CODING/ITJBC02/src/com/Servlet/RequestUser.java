package com.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementation.Implementation;

import com.Bean.Block;
import com.Bean.URequest;
import com.Database.Database;
import com.Interface.Inter;

/**
 * Servlet implementation class RequestUser
 */
@WebServlet("/RequestUser")
public class RequestUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RequestUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String omail=request.getParameter("omail");
		System.out.println("owner mail:"+omail);
		
		String filename=request.getParameter("filename");
		System.out.println(" filename:"+filename);
		
		String filekey=request.getParameter("filekey");
		System.out.println(" filekey:"+filekey);
		
		String umail=request.getParameter("umail");
		System.out.println(" umail:"+umail);
		
		String csp=request.getParameter("csp");
		System.out.println(" csp:"+csp);
		
		String prehash="";
		String afterhash="";
		
		
		
		Connection con;
		con=Database.create();
		try {
			PreparedStatement pa=con.prepareStatement("SELECT prehash,afterhash FROM `itjbco2`.`userrequest` where umail='"+umail+"'");
			ResultSet rs=pa.executeQuery();
			while(rs.next()){
				prehash=rs.getString(1);
				afterhash=rs.getString(2);
				
			}
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(afterhash);
		prehash=afterhash;

		 
		 
		 
		Block genesisBlock = new Block("Hi im the first block", "0");

		String phas=genesisBlock.hash;
		
		Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
		System.out.println("Hash for block 2 : " + secondBlock.hash);
		String aphas=secondBlock.hash;
		
		URequest uq=new URequest();
		uq.setFilname(filename);
		uq.setFilekey(filekey);
		uq.setCspkey(csp);
		uq.setOmail(omail);
		uq.setUmail(umail);
		uq.setPrehash(prehash);
		uq.setAfterhash(aphas);
		
		Inter in=new Implementation();
		int req=in.urequest(uq);
		
		if(req==1){
			response.sendRedirect("Requestsentsuccess.jsp");
		}
		else{
			response.sendRedirect("Error.jsp");
		}
	}

}
