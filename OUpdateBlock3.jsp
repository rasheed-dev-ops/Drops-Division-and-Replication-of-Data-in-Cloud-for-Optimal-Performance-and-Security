
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream,java.math.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Update</title>
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
.style3 {
	color: #FF0000;
	font-weight: bold;
}
.style4 {color: #0000FF}
.style6 {color: #FF0000}
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
          <h2 class="style6">Data Updated Result </h2>
          
          <div class="clr style6"></div>
      
					   
					   
					   
						<span class="style6">
						<% 
						
						try
						 
	{
      		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13;
	
		String file = request.getParameter("file");
		String cont = request.getParameter("cont");
			String block = request.getParameter("block");
		String query1="",query2="";
		String mac = request.getParameter("mac");
			String owner = (String)application.getAttribute("oname");
				
								
		String cloud = "cloud";
			
      		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;

		

		String user = "Data Owner";
		String task = "Upload";
					Statement st211 = connection.createStatement();
		Statement st21 = connection.createStatement();
		if(block.equalsIgnoreCase("Block1"))
		{
		query1="update cloudserver set mac1='"+mac+"',ct1='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query2="update ownerfiles  set mac1='"+mac+"',ct1='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		}
		if(block.equalsIgnoreCase("Block2"))
		{
		query1="update cloudserver set mac2='"+mac+"',ct2='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query2="update ownerfiles  set mac2='"+mac+"',ct2='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		}
		if(block.equalsIgnoreCase("Block3"))
		{
		query1="update cloudserver set mac3='"+mac+"',ct3='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query2="update ownerfiles  set mac3='"+mac+"',ct3='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		}
		if(block.equalsIgnoreCase("Block4"))
		{
		query1="update cloudserver set mac4='"+mac+"',ct4='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query2="update ownerfiles  set mac4='"+mac+"',ct4='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		}
	int x =	st21.executeUpdate(query1);
		int y = st211.executeUpdate(query2);
	
	if(x>0 )
	{
	%>
	                    </span>
		  <h2 class="style6">Data  Successfully !!!</h2>
	                    <span class="style6">
	                    <%
	}

        
          }
         
          catch(Exception e)
          {
          e.printStackTrace();
          }
%>
		  </span>
	                    <p class="style6">
<h2 class="style6">Data Updated Successfully !!!</h2>
					   
					   
					   
          <div class="clr style6"></div>
        </div>
        <div class="article">
          <h2 class="style6">Dynamic Proof of Data Verification </h2>
          <p class="infopost">&nbsp;</p>
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
