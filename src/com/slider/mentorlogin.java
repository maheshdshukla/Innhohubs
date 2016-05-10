package com.slider;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


public class mentorlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String username;
	String password;
	
	
	public void init()
	{
		
		try
		{
			
			con = DbConnection.getConnection();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
   
       
  
    public mentorlogin() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();
	        
			username=request.getParameter("username");
			password=request.getParameter("password");
			ps=con.prepareStatement("select * from mentor_info where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			HttpSession session=request.getSession();
			
			if (rs.next()) 
				{
					String name=rs.getString("name");
					String lastname=rs.getString("lastname");
					
					
					String uname=rs.getString("username");
					//String loc = "ProfileImages/"+username+"/";
					
					
					
					
					
					System.out.println("Do post of loginservlet called");
				
					
					 
					session.setAttribute("name",name);
			        session.setAttribute("lastname", lastname);
			        session.setAttribute("username",uname);

					
			        
			       
					response.sendRedirect("mentorhome.jsp");
			        //req.getRequestDispatcher("home.jsp").forward(req, res);
				} 
			else 
				{
				 	out.print("<h1>Sorry, username or password error!</h1>"); 
				 	request.getRequestDispatcher("index.jsp").forward(request, response);
					
				}

		
		
			out.close();  
		}
		
		catch(Exception e1)
		{
			e1.printStackTrace();
		}

		
	}
	public void distroy()
	{
		System.out.println("test3");
		try
		{
			ps.close();
			con.close();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}

}
