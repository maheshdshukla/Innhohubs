package com.slider;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.ResultSet;
import com.util.DbConnection;

public class StoreRatting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String stars = request.getParameter("stars");
		String postid = request.getParameter("poistid");
		try {
			Connection con = DbConnection.getConnection();
			Statement stmt = con.createStatement();
			java.sql.ResultSet rs = null;
			String checksql = "SELECT * FROM `postrating` WHERE `userid` = '"+session.getAttribute("userId")+"' AND `postid` = '"+postid+"' AND `usertype` = '"+session.getAttribute("userType")+"' ";
			rs = stmt.executeQuery(checksql);
			if(rs.next()){
				String sql = "UPDATE `postrating` SET `rating` = '"+stars+"' WHERE `userid` = '"+session.getAttribute("userId")+"' AND `postid` = '"+postid+"' AND `usertype` = '"+session.getAttribute("userType")+"'";
				stmt.executeUpdate(sql);
			}else{
				String sql = "INSERT INTO `postrating`(`userid`, `postid`, `rating`, `usertype`) " +
					"VALUES ('"+session.getAttribute("userId")+"','"+postid+"','"+stars+"','"+session.getAttribute("userType")+"')";
				stmt.execute(sql);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
