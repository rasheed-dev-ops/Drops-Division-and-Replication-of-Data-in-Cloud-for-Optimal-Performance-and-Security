
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
<title>Request File</title>
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
          <h2 class="style6">Request File </h2>
          <span class="style6">
          <% try 
	{
      		String file=request.getParameter("fr");
      		SimpleDateFormat sdfDate = new SimpleDateFormat(
			"dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat(
			"HH:mm:ss");

	Date now = new Date();

	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String reqdt = strDate + "   " + strTime;
	
	
	
	String query="select * from cloudserver where fname='"+file+"' "; 
    Statement st5=connection.createStatement();
    ResultSet rs=st5.executeQuery(query);
		String respdate="Waiting for Response";
	String status="Waiting";
	
	
	String username=(String)application.getAttribute("uname");
	if ( rs.next() )
{

	Statement stss=connection.createStatement();
			stss.executeUpdate("insert into  userrequest(username,fnamereq,reqdate,resdate,resstatus) values ('"+username+"','"+file+"','"+reqdt+"','"+respdate+"','"+status+"')"); 
			
			
			
			%>
          </span>
          <h2 class="style6">Hi Mr.<%=username %> ur request sent to Cloud Server </h2>
<h3 class="style6"><a href="ERequestFile.jsp">Back</a></h3>
 <span class="style6">
 <%
}else{
	
	%>
	</span>
 <h2 class="style6">Hi Mr.<%=username %> ur requesting is not available in Cloud Server </h2>
	<h3 class="style6">Please check the file name!!!</h3>
	<h3><a href="ERequestFile.jsp">Back</a></h3>
	 <%
	
}
	   

         connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
            e.printStackTrace();
          }
%>


            <p class="spec"><a href="#" class="rm">..</a></p>
        </div>
          <div class="clr"></div>
      </div>
        <div class="article">
          
          <div class="img"></div>
          <div class="post_content">
            <p class="spec"><a href="#" class="rm">...</a></p>
          </div>
          <div class="clr"></div>
        </div>
        
    </div>
      <div class="sidebar">
        
      <div class="clr"></div>
    </div>
  </div>
<div class="fbg"></div>
  <div class="footer">
    
</html>
