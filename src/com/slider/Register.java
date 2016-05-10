package com.slider;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			Connection con = DbConnection.getConnection();
			Statement stmt = con.createStatement();
		
		
		String usertype = request.getParameter("usertype");
		String name = request.getParameter("name");
		String address = request.getParameter("add");
		String phno = request.getParameter("phno");
		String email = request.getParameter("email");
		String linkedin = request.getParameter("linkedin");
		String dob = request.getParameter("ob");
		String qualification = request.getParameter("qualification");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(usertype.equals("user")){
			String workingwith = request.getParameter("workingwith");
			String aoi = request.getParameter("aoi");
			String art = request.getParameter("art");
			String technology = request.getParameter("technology");
			String science = request.getParameter("science");
			String computer = request.getParameter("computer");
			String other = request.getParameter("other");
			
			String sql = "INSERT INTO `userdetails`( `name`, `address`, `phno`, `email`, `linkedin`, `dob`, `qualificatoin`, `workinwith`, `aoi`, `art`, `technology`, `science`, `computer`, `other`, `username`, `password`, `usertype`) " +
				"VALUES ('"+name+"','"+address+"','"+phno+"','"+email+"','"+linkedin+"','"+dob+"','"+qualification+"','"+workingwith+"','"+aoi+"','"+art+"','"+technology+"','"+science+"','"+computer+"','"+other+"','"+username+"','"+password+"','user')";
				stmt.execute(sql);
			
		}else if(usertype.equals("mentor")){
			String workingwith = request.getParameter("workingwith");
			String aoi = request.getParameter("aoi");
			String pubpaper = request.getParameter("pubpaper");
			String yoe = request.getParameter("yoe");
			String sql = "INSERT INTO `mentor`( `name`, `address`, `phno`, `email`, `linkedin`, `dob`, `qualification`, `workingwith`, `aoi`, `pubpep`, `yoe`, `username`, `password`, `usertype`) " +
				"VALUES ('"+name+"','"+address+"','"+phno+"','"+email+"','"+linkedin+"','"+dob+"','"+qualification+"','"+workingwith+"','"+aoi+"','"+pubpaper+"','"+yoe+"','"+username+"','"+password+"','mantor')";
			stmt.execute(sql);	
		}else if(usertype.equals("industry")){
			String rname = request.getParameter("name");
			String aoi = request.getParameter("aoi");
			String regid = request.getParameter("regid");
			String sql = "INSERT INTO `industry`( `name`, `address`, `phno`, `email`, `linkedin`, `dob`, `qualification`, `iname`, `aoi`, `rid`, `username`, `password`, `usertype`) " +
				"VALUES ('"+name+"','"+address+"','"+phno+"','"+email+"','"+linkedin+"','"+dob+"','"+qualification+"','"+rname+"','"+aoi+"','"+regid+"','"+username+"','"+password+"','industry')";
				stmt.execute(sql);
		}else if(usertype.equals("ro")){
			String rname = request.getParameter("name");
			String aoi = request.getParameter("aoi");
			String regid = request.getParameter("regid");
			String sql = "INSERT INTO `rodetails`( `name`, `address`, `phno`, `email`, `linkedin`, `dob`, `qualificaton`, `iname`, `aoi`, `rid`, `username`, `password`, `usertype`) " +
				"VALUES ('"+name+"','"+address+"','"+phno+"','"+email+"','"+linkedin+"','"+dob+"','"+qualification+"','"+rname+"','"+aoi+"','"+regid+"','"+username+"','"+password+"','ro')";
				stmt.execute(sql);
		}
		response.sendRedirect("index.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
