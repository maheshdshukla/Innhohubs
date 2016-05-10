package com.slider;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


public class intrestlike extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con;
	PreparedStatement ps;
	String username;
	String values="";
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
    public intrestlike() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		/*String intlike[]=req.getParameterValues("intlike");
		
		
		for(int l = 0;l<intlike.length;l++)
		{
			
			if(intlike[l]==null || intlike[l]==""){continue;}
			if(l==0)
			{
				values=values+"'"+intlike[l]+"'";
			}
			else
			{
				values=values+","+"'"+intlike[l]+"'";
			}
	System.out.println("0000000"+values);
		}
		*/
		try
		{
			HttpSession session=req.getSession(true);
			
			String intlike=req.getParameter("intlike");
			username=(String) session.getAttribute("username");
			System.out.println("Session catch username"+username);
			session.setAttribute("intlike", intlike);
			
			ps=con.prepareStatement("update mem_info set intlike=? where username=?");
			
			ps.setString(1, intlike);
			ps.setString(2, username);
			int result=ps.executeUpdate();
			if(result>0)
			{
				System.out.println("Data Updated Succesfully on intlike");
				
			}
			res.sendRedirect("home.jsp");
 		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}
	
	public void distroy()
	{
		
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
