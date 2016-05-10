package com.slider;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.util.DbConnection;


public class mentorideas extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 Connection con=null;
	    
	    String username;
	    String idea;  
   
    public mentorideas() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init()
	{
		
		try
		{
			
			con = (Connection) DbConnection.getConnection();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();
		
		try 
		{
			HttpSession session =request.getSession();
			
			username=(String)session.getAttribute("username");
			idea=request.getParameter("idea");
			System.out.println(username);
			System.out.println(idea);
			
			PreparedStatement ps=con.prepareStatement("insert into mentorideas (username,idea) values(?,?)");
			ps.setString(1, username);
			ps.setString(2, idea);
			ps.executeUpdate();
			
			
			out.println("<html>");
			out.println("<body>");
			out.println("<center>");
			out.println("<h1>Your Idea Post Successfully</h1>");
			out.println("<a href=mentoridea.jsp><h2>Back</h2></a>");
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
