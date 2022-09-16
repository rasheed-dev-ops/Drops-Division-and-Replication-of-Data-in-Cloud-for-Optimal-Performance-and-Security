
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
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>File Response</title>
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
          <h2><span>File Response Details </span></h2>
          <table width="800" border="1" align="center">
  <tr>
   <td ><div align="center"><span class="style3"><strong>User Name</strong></span></div></td>
      <td ><div align="center"><span class="style3"><strong>FileName Requested</strong> </span></div></td>
    <td ><div align="center"><span class="style3"><strong>Request Date</strong></span></div></td>
    <td ><div align="center"><span class="style3"><strong>ResponseDate</strong></span></div></td>
    <td ><div align="center"><span class="style3"><strong>Status</strong></span></div></td>
  </tr>
        <%


	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	String username=(String)application.getAttribute("uname");
      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from userrequest where username='"+username+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		
		s2=rs.getString(1);
		s3=rs.getString(2);
		s4=rs.getString(3);
		s5=rs.getString(4);
		s6=rs.getString(5);
	
		%>

  <tr>
    <td height="29"><div align="center" class="style6"><%=s2%></div></td>
    <td><div align="center" class="style6"><%=s3%></div></td>
    <td><div align="center" class="style6"><%=s4%></div></td>
	  <td><div align="center" class="style6"><%=s5%></div></td>
    	  <td><div align="center" class="style6"><%=s6%></div></td>
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>


            <p class="spec"><a href="#" class="rm">..</a></p>
            <p class="spec"><a href="EndUserMain.jsp">Back</a></p>
        </div>
          <div class="clr"></div>
      </div>
        <div class="article">
          <h2>&nbsp;</h2>
         
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p class="spec"><a href="#" class="rm">...</a></p>
          </div>
          <div class="clr"></div>
        </div>
        
    </div>
      
       
  </div>
      <div class="clr"></div>
</div>
  </div>
<div class="fbg"></div>
  <div class="footer">
    
</html>
