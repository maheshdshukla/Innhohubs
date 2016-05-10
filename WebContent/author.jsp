<%@page import="com.util.DbConnection"%>

<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<script type="text/javascript">
function validate()
{
	
	
	if(document.getElementById("username").value=="")
   	{
   		alert("username should not be blank");
   		document.getElementById("username").focus();
   		return false;
   	}
	
	if(document.getElementById("password").value=="")
   	{
   		alert("password should not be blank");
   		document.getElementById("password").focus();
   		return false;
   	}
}

</script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
     <div class="menu_nav">
        <ul>
          <li class="active"><a href="home.jsp"><span>Home Page</span></a></li>
<!--           <li class="active"><a href="interest.jsp"><span>Area Of Interest</span></a></li> -->
          
          <li class="active"><a href="about.jsp"><span>About Us</span></a></li>
        
          <li class="active"><a href="contact.jsp"><span>Contact Us</span></a></li>
         <!--  <li class="active"><a href="Logout"><span>Logout</span></a></li> -->
           
        </ul>
      </div>
      <div class="logo">
<h1><strong style="color: white;">INNO<span>HUBS</span></strong></h1>
      </div>
      <div class="searchform">
  
 <%HttpSession session2 =request.getSession(); %>
          <h2>Welcome <%=session.getAttribute("username") %></h2> <a href="Logout" style="color: white; font-size: 25px;">Logout</a>


      </div>
      <div class="clr"></div>
      <div class="slider">
       <div id="coin-slider"> <a href="#"><img src="images/s1.jpg" width="50" height="52" alt="" /></a> <a href="#"><img src="images/s2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/s3.jpg" width="960" height="360" alt="" /></a><img src="images/s4.png" width="960" height="360" alt="" /><img src="images/s5.jpg" width="1000" height="360" alt="" /> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <!-- <div class="menu_nav">
        <ul>
          <li class="active"><a href="home.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="interest.jsp"><span>Area Of Interest</span></a></li>
          
          <li><a href="about.jsp"><span>About Us</span></a></li>
        
          <li><a href="contact.jsp"><span>Contact Us</span></a></li>
          <li><a href="Logout"><span>Logout</span></a></li>
           <li><a href="Logout">Logout</a></li>
        </ul>
      </div> -->
      <div class="clr"></div>
    </div>
  </div>
  
  
  <div class="content">
  
  
  
    <div class="content_resize">
    
      <div class="mainbar">
        <div class="article">
         <%--  <%HttpSession session2 =request.getSession(); %>
          <h2>Welcome <%=session.getAttribute("username") %></h2> --%>
          <div class="clr"></div>
         
          <div class="post_content">
          
         
       
     
          
          
          
                     </div>
          <div class="clr"></div>
        </div>
        <div class="article">
                   <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">

 <table border="0" cellpadding="10" cellspacing="1" style="width:100%; border:1px solid #ccc; margin-top:40px; border-color: red; " >
                    
                    <tr class="tableheader">
                        <td style="color: black; font-weight: bolder;">Sr. No</td>
                       
                        <td style="color: black; font-weight: bold;">Name</td>
                       <!--  <td style="color: black; font-weight: bold;">Middle Name</td> -->
                        <td style="color: black; font-weight: bold;">Last Name</td>
                         <td style="color: black; font-weight: bold;">Age</td>
                        <td style="color: black; font-weight: bold;">Gender</td>
                        <td style="color: black; font-weight: bold;">Email</td>
                         <td style="color: black; font-weight: bold;">Mobile</td>
                        <td style="color: black; font-weight: bold;">Designation</td>
                         <td style="color: black; font-weight: bold;">Experience</td>
                      <td style="color: black; font-weight: bold;">Interest Like</td>
                         
                    </tr>
                             <tr><td></td><td></td><td></td><td></td></tr>
                    <%
                   // boolean Authorised=false;
                       
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/innohubs","root","root");  
                     //   int Userid = Integer.parseInt((String)session.getAttribute("userId"));
                        int srno = 1;
                        Statement st= con.createStatement();
                       // ResultSet rs = st.executeQuery("select * from insterrors group by errorname");
                        //ResultSet rs = st.executeQuery("select * from mem_info where intlike like '%sports%' and role='mentor'");
                        ResultSet rs = st.executeQuery("select * from mentor_info where intlike='author'");
                        
                        while(rs.next()){
                       // int Fileid = rs.getInt("id");
                        
                        
                        
                        String name = rs.getString("name");
                       //String middlename = rs.getString("middlename");
                        String lastname = rs.getString("lastname");
                        String age = rs.getString("age");
                        String gender = rs.getString("gender");
                        String email = rs.getString("email");
                   		String mobile = rs.getString("mobno");
                   		String designation = rs.getString("designation");
                   		String experience = rs.getString("experience");
                        //String role = rs.getString("role");
                        String intlike = rs.getString("intlike");
                        //String user = GF.getFullName(Integer.parseInt(rs.getString("uploadedBy")));
                       
                       
                        
                            %>
                        
         
                    <tr class="tablerow">
                        <td><%= srno++ %></td>
                        <td><%= name %></td>
                     <%--    <td><%= middlename %></td> --%>
                        <td><%= lastname %></td>
                        <td><%= age %></td>
                        <td><%= gender %></td>
                        <td><%= email %></td>
                   <td><%= mobile %></td> 
                        <td><%= designation %></td>
                         <td><%= experience %>&nbsp;Year</td>
                        <td><%= intlike %></td>
                      
                        
                       
                         
                    </tr>
                    <%
                        
                        }
                    
                    %>
                    
                </table>



                     </div>
          <div class="clr"></div>
        </div>
            </div>
      <div class="sidebar">
        <div class="gadget">
 		<h2 class="star"><span>Sidebar</span> Menu</h2>
            <!--  <div class="slider"> -->
                       <!--  <marquee direction="down" height="450"> <div id="coin-slider"><img src="images/slide1.jpg" width="300" height="100%" alt="" /><br><br><img src="images/slide2.jpg" width="300" height="100%" alt="" /><br><br><img src="images/slide3.jpg" width="300" height="100%" alt="" /><br><img src="images/slide4.jpg" width="300" height="100%" alt="" /><br><br><img src="images/slide5.jpg" width="300" height="100%" alt="" /></marquee>  </div></div> -->
                     
                        <ul>
          <li><a href="sports.jsp"><span style="font-size: 21px;">Recommended by sports</span></a></li><br>
            <li><a href="author.jsp"><span style="font-size: 21px;">Recommended by Author</span></a></li><br>
          
          <li><a href="engineering.jsp"><span style="font-size: 21px;">Recommended by Engineering</span></a></li><br>
        
          <li><a href="computer.jsp"><span style="font-size: 21px;">Recommended by Computer</span></a></li><br>
          <li><a href="art.jsp"><span style="font-size: 21px;">Recommended by Art</span></a></li>
          
        </ul>
      
        
        <div class="clr"></div>
      </div>
          <div class="clr"></div>
 <!--          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">TemplateInfo</a></li>
            <li><a href="#">Style Demo</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Archives</a></li>
            <li><a href="#">Web Templates</a></li>
          </ul> -->
        </div>
        <div class="gadget">
          <!-- <h2 class="star"><span>Sponsors</span></h2> -->
          <div class="clr"></div>
          <!-- <ul class="ex_menu">
            <li><a href="http://www.dreamtemplate.com/">DreamTemplate</a><br />
              Over 6,000+ Premium Web Templates</li>
            <li><a href="http://www.templatesold.com/">TemplateSOLD</a><br />
              Premium WordPress &amp; Joomla Themes</li>
            <li><a href="http://www.imhosted.com/">ImHosted.com</a><br />
              Affordable Web Hosting Provider</li>
            <li><a href="http://www.megastockphotos.com/">MegaStockPhotos</a><br />
              Unlimited Amazing Stock Photos</li>
            <li><a href="http://www.evrsoft.com/">Evrsoft</a><br />
              Website Builder Software &amp; Tools</li>
            <li><a href="http://www.csshub.com/">CSS Hub</a><br />
              Premium CSS Templates</li>
          </ul> -->
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
      <!--   <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
  -->     <div class="col c2">
       <!--  <h2><span>Services</span> Overview</h2>
        <p>Curabitur sed urna id nunc pulvinar semper. Nunc sit amet tortor sit amet lacus sagittis posuere cursus vitae nunc.Etiam venenatis, turpis at eleifend porta, nisl nulla bibendum justo.</p>
        <ul class="fbg_ul">
          <li><a href="#">Lorem ipsum dolor labore et dolore.</a></li>
          <li><a href="#">Excepteur officia deserunt.</a></li>
          <li><a href="#">Integer tellus ipsum tempor sed.</a></li>
        </ul>
 -->      </div>
      <div class="col c3">
     <!--    <h2><span>Contact</span> Us</h2>
        <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui.</p>
        <p class="contact_info"> <span>Address:</span> 1458 TemplateAccess, USA<br />
          <span>Telephone:</span> +123-1234-5678<br />
          <span>FAX:</span> +458-4578<br />
          <span>Others:</span> +301 - 0125 - 01258<br />
          <span>E-mail:</span> <a href="#">mail@yoursitename.com</a> </p>
 -->      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
      <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/">Web Templates</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
</body>
</html>