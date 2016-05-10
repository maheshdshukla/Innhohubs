package com.slider;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.util.DbConnection;


public class registerServlet extends HttpServlet
{
	Connection con = null;
	PreparedStatement ps;
	
	ResultSet rs;
	String name;
	String middlename;
	String lastname;
	String age;
	String gender;
	String email;
	String mobno;
	String dsignation;
	String experience;
	String username;
	String password;
	private static final long serialVersionUID = 1L;
       
    
    public registerServlet() {
        super();
       
    }

    
    private List<FileItem> fileItem = null;
	  
	 protected List<FileItem> initRequest(HttpServletRequest req) 
	 {
		 boolean isMultipart = ServletFileUpload.isMultipartContent(req);
	     if(!isMultipart) throw new UnsupportedOperationException();
	     DiskFileItemFactory factory = new DiskFileItemFactory();
	     //factory.setSizeThreshold(THRESHOLD_SIZE);
	     factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	     ServletFileUpload upload = new ServletFileUpload(factory);
	     //upload.setFileSizeMax(MAX_FILE_SIZE);
	    // upload.setSizeMax(REQUEST_SIZE);
	     List<FileItem> formItems = null;
	     try 
	     	{
	    	 formItems = upload.parseRequest(req);
	     	} 
	     catch (Exception e) 
	     	{
	    	 e.printStackTrace();
	     	}
	 return formItems;
	}
	 
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
		
	    
	    protected String getFieldValue(List<FileItem> formItems, String fieldName) 
		   {
		    String value = null;
		    try {
		     for(FileItem fi : formItems )
		     {
		      if (fi.isFormField()) 
		      {
		       if(fi.getFieldName().equals(fieldName))
		       {
		        value = fi.getString();
		       }
		      }
		     }
		    }
		    catch (Exception ex) {
		     ex.printStackTrace();
		    }
		    return value;
		   }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		fileItem = initRequest(request);	
		
		name=getFieldValue(fileItem, "name");
		//middlename=getFieldValue(fileItem, "middlename");
		lastname=getFieldValue(fileItem, "lastname");
		age=getFieldValue(fileItem, "age"); 
		gender=getFieldValue(fileItem, "gender");
		email=getFieldValue(fileItem, "email");
		mobno=getFieldValue(fileItem, "mobno");
		dsignation=getFieldValue(fileItem, "designation");
		experience=getFieldValue(fileItem, "experience");
		username=getFieldValue(fileItem, "username");
		password=getFieldValue(fileItem, "password");
	
	
		
		System.out.println(name);
		System.out.println(middlename);
		System.out.println(lastname);
		System.out.println(age);
		System.out.println(gender);
		System.out.println(email);
		System.out.println(dsignation);
		System.out.println(experience);
		System.out.println(username);
		System.out.println(password);
		
		try 
		{
			PrintWriter out=response.getWriter();
			
			ps=con.prepareStatement("insert into mem_info (name,lastname,age,gender,email,mobno,designation,experience,username,password) values(?,?,?,?,?,?,?,?,?,?)");
			
			
			ps.setString(1,name);
		
			ps.setString(2, lastname);
			ps.setString(3,age);
			ps.setString(4, gender);
			ps.setString(5, email);
			ps.setString(6, mobno);
			ps.setString(7, dsignation);
			ps.setString(8, experience);
			ps.setString(9, username);
			ps.setString(10, password);

		
			
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println("Ragistration successfull");
				out.println("<html>");
				out.println("<body>");
				out.println("<center>");
				out.println("<h1>Data Inserted Successfully</h1>");
				out.println("<a href=userlogin.jsp><h2>Login Here</h2></a>");
				out.println("</center>");
				out.println("</body>");
				out.println("</html>");
				
				
				
			}
			else
			{
				System.out.println("Ragistration failed");
			}
		}
		
		catch(Exception e1)
		{
			e1.printStackTrace();
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
