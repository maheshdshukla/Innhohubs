package com.slider;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.util.DbConnection;


public class joingroup extends HttpServlet {
	private static final long serialVersionUID = 1L;
      Connection con=null;
      
      String username;
      String name;
  	String middlename;
  	String lastname;
  	String age;
  	String gender;
  	String email;
  	String mobno;
  	String dsignation;
  	String experience;
  
  	String password;
  	
  	String group;
    
    public joingroup() {
        super();
        
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
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			HttpSession session =request.getSession();
			
			username=(String)session.getAttribute("username");
			group=request.getParameter("group");
			
			PreparedStatement ps=con.prepareStatement("select * from mem_info where username=?");
			ps.setString(1,username);
			ResultSet rs= ps.executeQuery();
			
			while(rs.next())
			{
				  	 name=rs.getString("name");
				  	 lastname=rs.getString("lastname");
				  	 age=rs.getString("age");
				  	 gender=rs.getString("gender");
				  	 email=rs.getString("email");
				  	 mobno=rs.getString("mobno");

				  	 
			}
			
			String sql="insert into "+group+" (name,lastname,age,gender,email,mobno,username) values(?,?,?,?,?,?,?)";
			PreparedStatement ps1=con.prepareStatement(sql);
			ps1.setString(1,name);			
			ps1.setString(2,lastname);	
			ps1.setString(3,age);
			ps1.setString(4, gender);
			ps1.setString(5, email);
			ps1.setString(6, mobno);
			ps1.setString(7, username);
			
			ps1.executeUpdate();
			
			PrintWriter out=response.getWriter();
			out.println("<html>");
			out.println("<body>");
			out.println("<center>");
			out.println("<h1>Group Join Successfully</h1>");
			out.println("<a href=joingroup.jsp><h2>Back</h2></a>");
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
