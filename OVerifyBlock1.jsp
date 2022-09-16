<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Verify</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
.style4 {color: #0000FF}
.style5 {
	color: #0000FF;
	font-weight: bold;
	font-style: italic;
}
.style7 {color: #FF0000; font-weight: bold; font-size: 16px; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="DataUser.jsp"><span>Data User </span></a></li>
          <li><a href="CloudServer.jsp"><span>Cloud Server </span></a></li>
          <li><a href="EndUser.jsp"><span>End User </span></a></li>

        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1>&nbsp;</h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Data Integrity Checked </span>Results</h2>
          
          <div class="clr"></div>
          <p class="style7">
          <%@ page import="java.sql.*" %>
          <%@ include file="connect.jsp" %>

	      <%
	String owner=(String)application.getAttribute("oname");
	
  		String file = request.getParameter("file");
		String block = request.getParameter("block");
   		try {
	   	    String mac1,mac2; 
		   	String query1="";
			String query2="";
			if(block.equalsIgnoreCase("Block1"))
			{
			query1="select mac1 from ownerfiles where fname='"+file+"' and ownername='"+owner+"'"; 
			query2="select mac1 from cloudserver where fname='"+file+"' and ownername='"+owner+"'"; 
			}
			if(block.equalsIgnoreCase("Block2"))
			{
			query1="select mac2 from ownerfiles where fname='"+file+"' and ownername='"+owner+"'"; 
			query2="select mac2 from cloudserver where fname='"+file+"' and ownername='"+owner+"'";
			}
			if(block.equalsIgnoreCase("Block3"))
			{
			query1="select mac3 from ownerfiles where fname='"+file+"' and ownername='"+owner+"'"; 
			query2="select mac3 from cloudserver where fname='"+file+"' and ownername='"+owner+"'"; 
			}
			if(block.equalsIgnoreCase("Block4"))
			{
			query1="select mac4 from ownerfiles where fname='"+file+"' and ownername='"+owner+"'"; 
						query2="select mac4 from cloudserver where fname='"+file+"' and ownername='"+owner+"'"; 
			}
			
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query1);
	   if ( rs1.next() )
	      {
		    mac1=rs1.getString(1);
		   
		   
		    Statement st2=connection.createStatement();
		 
            ResultSet rs2=st2.executeQuery(query2);
	   if ( rs2.next() )
	      {
		   mac2=rs2.getString(1);
		   
		   if(mac1.equalsIgnoreCase(mac2))
		   {
		  // String ss="File Is Safe";
		  // application.setAttribute("fname",file);
		  //application.setAttribute("attacker",ss);
		  %>
 File Named---- <%=file%>  ---- Fragment Named  --- <%=block %> ---  is Safe <br />
 <br />
 <a href="OVerifyBlock.jsp">Back<br />
 <br />
 </a></br>

		  <%
		   }
		   else
		   {%>
		   File Named---<%=file%>  ---- Fragment Named  --- <%=block %> ---is Not Safe <a href="OVerifyBlock.jsp"><br />
		   <br />
		   Back<br />
		   <br />
		   </a>Do you Want to recover<br />
		   <br /> 
		   <a href="recover.jsp?owner=<%=owner%>&block=<%=block%>&file=<%=file%>">Recover</a>
		   <%
		 //  String ss="attacker";
		  // application.setAttribute("fname",file);
		  //application.setAttribute("attacker",ss);
		   }
		    
		   
		   }}
		   else
		   {%> 
		   </br>
		    File doesnot exist
		    </h1>
          </p>
          <p class="style7">            <a href="OVerifyBlock.jsp">Back</a>
            <%
		   }
		  	  
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		//response.sendRedirect("O_VerifyBlock1.jsp");  
	%>
            
          </p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Owner Main  </span> Menu</h2>
          <div class="clr"></div>
          <ul class="ex_menu style3"><li class="style4">
            <li><a href="OMainPage.jsp">Home</a></li>
            <li><a href="index.html"><em>Logout</em></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
<div class="fbg"></div>
  <div class="footer">
    
</html>
