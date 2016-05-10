<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>InnoHubs</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<script type="text/javascript">

function callAll()
{
	validate();
	/* passcheck(); */
}

function checkit(value){
	if(value=="user"){
		var insert = document.getElementById("extrainfo");
		insert.innerHTML = "Working With :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='workingwith'><br><br>"+
		"Area of Interest&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='aoi'><br>"+
		"<option value='art'>Art</option>"+
		"<optoin value='technology'>Technology</option>"+
		"<option value='science'>Science</option>"+
		"<option value='computer'>Computer</option>"+
		"<option value='other'>Other</option>"+
		"</select>";
		
	}else if(value=="mentor"){
		var insert = document.getElementById("extrainfo");
		insert.innerHTML = "Working With :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='workingwith'><br><br>"+
		"Area of Interest&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='aoi'><br>"+
		"<option value='art'>Art</option>"+
		"<optoin value='technology'>Technology</option>"+
		"<option value='science'>Science</option>"+
		"<option value='computer'>Computer</option>"+
		"<option value='other'>Other</option>"+
		"</select><br>"+
		"<br>Published paper (If Any) :&nbsp;&nbsp;&nbsp;<input type='text' required name='pubpaper'>"+
		"<br><br>Year of Experiance :&nbsp;&nbsp;&nbsp;<input type='text' required name='yoe'>";
	}else if(value=="industry"){
		var insert = document.getElementById("extrainfo");
		insert.innerHTML = "Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='name'><br><br>"+
		"Area of Interest&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='aoi'><br>"+
		"<option value='art'>Art</option>"+
		"<optoin value='technology'>Technology</option>"+
		"<option value='science'>Science</option>"+
		"<option value='computer'>Computer</option>"+
		"<option value='other'>Other</option>"+
		"</select><br>"+
		"<br>Registration ID :&nbsp;&nbsp;&nbsp;<input type='text' required name='regid'>";
		
	}else if(value=="ro"){
		var insert = document.getElementById("extrainfo");
		insert.innerHTML = "Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='name'><br><br>"+
		"Area of Interest&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='aoi'><br>"+
		"<option value='art'>Art</option>"+
		"<optoin value='technology'>Technology</option>"+
		"<option value='science'>Science</option>"+
		"<option value='computer'>Computer</option>"+
		"<option value='other'>Other</option>"+
		"</select><br>"+
		"<br>Registration ID :&nbsp;&nbsp;&nbsp;<input type='text' required name='regid'>";
	}
}

function validate()
{
	
	
	if(document.getElementById("name").value=="")
   	{
   		alert("name should not be blank");
   		document.getElementById("name").focus();
   		return false;
   	}
	if(document.getElementById("middlename").value=="")
   	{
   		alert("middlename should not be blank");
   		document.getElementById("middlename").focus();
   		return false;
   	}
	if(document.getElementById("lastname").value=="")
   	{
   		alert("lastname should not be blank");
   		document.getElementById("lastname").focus();
   		return false;
   	}
	if(document.getElementById("age").value=="")
   	{
   		alert("age should not be blank");
   		document.getElementById("age").focus();
   		return false;
   	}
	if(document.getElementById("gender").value=="")
   	{
   		alert("gender should not be blank");
   		document.getElementById("gender").focus();
   		return false;
   	}
	if(document.getElementById("email").value=="")
   	{
   		alert("email should not be blank");
   		document.getElementById("email").focus();
   		return false;
   	}
	if(document.getElementById("mobno").value=="")
   	{
   		alert("Mobile Number should not be blank");
   		document.getElementById("mobno").focus();
   		return false;
   	}

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
	if(document.getElementById("cpassword").value=="")
   	{
   		alert("Confirm password should not be blank");
   		document.getElementById("cpassword").focus();
   		return false;
   	}
	
	if(document.getElementById("password").value!=document.getElementById("cpassword").value)
	{
		alert("Password and confirm password should be same");
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
          <li class="active"><a href="index.jsp"><span>Home Page</span></a></li>
          
          <li class="active"><a href="about.jsp"><span>About Us</span></a></li>
        
          <li class="active"><a href="contact.jsp"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><strong style="color: white;">INNO<span>HUBS</span></strong></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="Register">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="slider">
      <div id="coin-slider"> <a href="#"><img src="images/s1.jpg" width="50" height="52" alt="" /></a> <a href="#"><img src="images/s2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/s3.jpg" width="960" height="360" alt="" /></a><img src="images/s4.png" width="960" height="360" alt="" /><img src="images/s5.jpg" width="1000" height="360" alt="" /> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
     <!--  <div class="menu_nav">
        <ul>
          <li class="active"><a href="home.jsp"><span>Home Page</span></a></li>
          
          <li><a href="about.jsp"><span>About Us</span></a></li>
        
          <li><a href="contact.jsp"><span>Contact Us</span></a></li>
        </ul>
      </div> -->
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          
          <h2>New User ? Sign Up</h2>
          <div class="clr"></div>
         
          <div class="post_content">
                     </div>
          <div class="clr"></div>
        </div>
        <div class="article">
                   <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">


<form action="Register" method="post" onsubmit="return validate()">
 			
 			
 			Register As: <select required name="usertype" id="usertype" onChange=checkit(this.value)>
 			<option value="" selected >Select User</option><option value="user" >User</option><option value="mentor" >Mentor</option><option value="industry" >Indusrty</option><option value="ro">RO</option>
 			</select><br>
 			<hr>
 			Personal Information
 			
 			<br>
 			Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" id="name" required></input><br>
 				<!-- <tr><td style="color: black; font-size: 15px;">Middle Name</td><td><input type="text" name="middlename" id="middlename" required></input></td></tr> -->
<!--  			<tr><td style="color: black; font-size: 15px;">Last Name</td><td><input type="text" name="lastname" id="lastname" required></input></td> </tr> -->
<br>
			Address: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="add" id="age" required></input><br>
<!--  				<tr><tr><td style="color: black; font-size: 15px;">Gender</td><td style="color: black; font-size: 15px;">&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></td> -->
			<br>
			Ph no. :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="phno" id="email" required></input><br>
 			
			<br>
			Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" id="email" required></input><br>
<br>
			Linked In :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="linkedin" id="mobno" required></input><br>
<br>
			DOB :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="ob" id="mobno" required><br>
 			<br>
 			Qualification :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="qualification" id="designation" required><br>
 			
<!--  		<tr> -->
<!--  		<td style="color: black; font-size: 15px;">Experience</td><td><select name="experience"  id="experience" required> -->
<!--  		<option value="">---Select---</option> -->
<!--  		<option value="1">1</option> -->
<!--  		<option value="2">2</option> -->
<!--  		<option value="3">3</option> -->
<!--  		<option value="4">4</option> -->
<!--  		<option value="5">5</option> -->
<!--  																	</select>&nbsp; (in Year)</td> -->
<!--  		</tr> -->
 			<hr>
 			<br>Login Details<br><br>
 			Username :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username" id="username" required></input><br>
 			<br>
 			Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" id="password" required></input><br>
 			
 			<br>
 			<hr>
 			<div id="extrainfo">
 			
 			</div>
 		<br>
 		<br><input   type="submit" value="Register" style="height: 30px;width: 80px;"></input><!-- <td><a href="register.jsp"><img src="images/reset.png" width="50" height="50" alt=""></img></a></td> -->
 		<a href="index.jsp"><img src="images/back.png" width="40" height="40" title="Back" alt="" /></a>
 		<br>
 			
 		
 		</form> 
                     </div>
          <div class="clr"></div>
        </div>
            </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><!-- <span>Sidebar</span> Menu--></h2>
             <div class="slider">
                       <!--  <marquee direction="down" height="450"> <div id="coin-slider"><img src="images/slide1.jpg" width="300" height="100%" alt="" /><br><br><img src="images/slide2.jpg" width="300" height="100%" alt="" /><br><br><img src="images/slide3.jpg" width="300" height="100%" alt="" /><br><img src="images/slide4.jpg" width="300" height="100%" alt="" /><br><br><img src="images/slide5.jpg" width="300" height="100%" alt="" /></marquee>  </div></div> -->
                        <marquee direction="up" height="450">
       <strong>AUTHOR</strong><br><p>An author is broadly defined as "the person who originated or gave existence to anything" and whose authorship determines responsibility for what was created. Narrowly defined, an author is the originator of any written work and can also be described as a writer.</p>
       <strong>SPORTS</strong><p>Sport (UK) or sports (US) are all forms of usually competitive physical activity or games which,[1] through casual or organised participation, aim to use, maintain or improve physical ability and skills while providing entertainment to participants, and in some cases, spectators.[2] Usually the contest or game is between two sides, each attempting to exceed the other.</p>
       <strong>ENGINEERING</strong><p>Engineering is the application of mathematics, empirical evidence and scientific, economic, social, and practical knowledge in order to invent, innovate, design, build, maintain, research, and improve structures, machines, tools, systems, components, materials, and processes.</p>
       </marquee>
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
<!--       <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p> -->
<!--       <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/">Web Templates</a></p> -->
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<!-- <div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div> -->
</body>
</html>