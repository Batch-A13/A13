package com.Servlet;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementation.Implementation;

import com.Bean.Fileupl;
import com.Interface.Inter;

/**
 * Servlet implementation class AcceptOwner
 */
@WebServlet("/AcceptOwner")
public class AcceptOwner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptOwner() {
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
		 
		
		String filename=request.getParameter("filename");
		System.out.println("filename:"+filename);
		String path="D:\\Workspace\\ITJBC02\\WebContent\\Decrypton\\"+filename;
		
		System.out.println("path:" +path);
		 File file = new File(path);
		 System.out.println(file);
	        /*if(file.delete()){
	            System.out.println("File deleted successfully");
	        }else 
	        	{
	        	System.out.println("File :" +filename+" doesn't exist");
	        	}*/
	 
	        Fileupl fp=new Fileupl();
		  
		fp.setFilename(filename);
		
		Inter in=new Implementation();
		int acc=in.accept(fp);
		
		if(acc==1 && file.delete()){
			System.out.println("file deleted successfully:"+file.getName());
			
			response.sendRedirect("ServiceView.jsp");
			
		}
		else{
			
			System.out.println("file not deleted");
			response.sendRedirect("Error.jsp");
			
		}
	}

}
