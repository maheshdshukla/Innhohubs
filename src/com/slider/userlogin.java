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


public class userlogin extends HttpServlet 
{
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
    public userlogin() {
        super();   
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try 
		{
			response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();
	        String usertype = request.getParameter("usertype");
	        username=request.getParameter("username");
			password=request.getParameter("password");
	        if(usertype.equals("user")){
	        	ps=con.prepareStatement("select * from userdetails where username=? and password=?");
				ps.setString(1, username);
				ps.setString(2, password);
				rs = ps.executeQuery();
				HttpSession session=request.getSession();
				if (rs.next()) 
					{
						String name=rs.getString("name");
						String uname=rs.getString("username");
						System.out.println("Do post of loginservlet called");
						
						session.setAttribute("name",name);
				        session.setAttribute("username",uname);
				        session.setAttribute("userType", rs.getString("usertype"));
				        session.setAttribute("userId", rs.getString("id"));
				        
						response.sendRedirect("home.jsp");
				      } 
				else 
					{
					 	out.print("<h1>Sorry, username or password error!</h1>"); 
					 	request.getRequestDispatcher("index.jsp").forward(request, response);	
					}
	        }else if(usertype.equals("mentor")){
	        	ps=con.prepareStatement("select * from mentor where username=? and password=?");
				ps.setString(1, username);
				ps.setString(2, password);
				rs = ps.executeQuery();
				HttpSession session=request.getSession();
				if (rs.next()) 
					{
						String name=rs.getString("name");
						String uname=rs.getString("username");
						System.out.println("Do post of loginservlet called");
						session.setAttribute("name",name);
				        session.setAttribute("username",uname);
				        session.setAttribute("userType", rs.getString("usertype"));
				        session.setAttribute("userId", rs.getString("id"));
						response.sendRedirect("home.jsp");
				    } 
				else 
					{
					 	out.print("<h1>Sorry, username or password error!</h1>"); 
					 	request.getRequestDispatcher("index.jsp").forward(request, response);	
					}
	        }else if(usertype.equals("industry")){
	        	ps=con.prepareStatement("select * from industry where username=? and password=?");
				ps.setString(1, username);
				ps.setString(2, password);
				rs = ps.executeQuery();
				HttpSession session=request.getSession();
				if (rs.next()) 
					{
						String name=rs.getString("name");
						String uname=rs.getString("username");
						System.out.println("Do post of loginservlet called");
						session.setAttribute("name",name);
				        session.setAttribute("username",uname);
				        session.setAttribute("userType", rs.getString("usertype"));
				        session.setAttribute("userId", rs.getString("id"));
						response.sendRedirect("home.jsp");
				    } 
				else 
					{
					 	out.print("<h1>Sorry, username or password error!</h1>"); 
					 	request.getRequestDispatcher("index.jsp").forward(request, response);	
					}
	        }else if(usertype.equals("ro")){
	        	ps=con.prepareStatement("select * from rodetails where username=? and password=?");
				ps.setString(1, username);
				ps.setString(2, password);
				rs = ps.executeQuery();
				HttpSession session=request.getSession();
				if (rs.next()) 
					{
						String name=rs.getString("name");
						String uname=rs.getString("username");
						System.out.println("Do post of loginservlet called");
						session.setAttribute("name",name);
						session.setAttribute("username",uname);
				        session.setAttribute("userType", rs.getString("usertype"));
				        session.setAttribute("userId", rs.getString("id"));
						response.sendRedirect("home.jsp");
				    } 
				else 
					{
					 	out.print("<h1>Sorry, username or password error!</h1>"); 
					 	request.getRequestDispatcher("index.jsp").forward(request, response);	
					}
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
