package com.slider;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mysql.jdbc.Connection;
import com.util.DbConnection;


public class creategroup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Connection con=null;
    
    String groupname;
    
    public creategroup() {
        super();
       
    }
 /*   private List<FileItem> fileItem = null;
	  
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
	 */
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
		
	    
	/*    protected String getFieldValue(List<FileItem> formItems, String fieldName) 
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
*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//fileItem = initRequest(request);
		
		try 
		{
			PrintWriter out=response.getWriter();
		//	groupname=getFieldValue(fileItem, "group");
			groupname=request.getParameter("group");
			
			String sql="CREATE TABLE IF NOT EXISTS "+groupname+" (name varchar(50) DEFAULT NULL,lastname varchar(50) DEFAULT NULL,age varchar(50) DEFAULT NULL,gender varchar(50) DEFAULT NULL,email varchar(50) DEFAULT NULL,mobno varchar(50) DEFAULT NULL,username varchar(50) DEFAULT NULL) ENGINE=InnoDB DEFAULT CHARSET=latin1";
			PreparedStatement ps=con.prepareStatement(sql);
			int result=ps.executeUpdate();
			
		
			PreparedStatement ps1=con.prepareStatement("insert into groups (name) values(?)");
			ps1.setString(1, groupname);
			ps1.executeUpdate();
			
			
			
			out.println("<html>");
			out.println("<body>");
			out.println("<center>");
			out.println("<h1>Group Created Successfully</h1>");
			out.println("<a href=creategroup.jsp><h2>Back</h2></a>");
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
