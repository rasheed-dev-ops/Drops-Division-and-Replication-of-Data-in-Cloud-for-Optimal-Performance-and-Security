
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
<title>Final Upload</title>
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
.style5 {
	color: #0000FF;
	font-weight: bold;
	font-style: italic;
}
.style11 {
	color: #FFFFFF;
	font-weight: bold;
	font-style: italic;
	font-family: Georgia, "Times New Roman", Times, serif;
}
.style13 {color: #FF0000}
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
          <h2 class="style11"><span><span class="style4">Confirm Data Replication!!!</span> </h2>
          
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            
           <%
	String owner = (String) application.getAttribute("oname");
	
%>
					    
						
						<% try 
	{
      		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13;
		int i = 0, j = 0, k;
		String file = request.getParameter("t42");
		String cont1 = request.getParameter("text1");
		String cont2 = request.getParameter("text2");
		String cont3 = request.getParameter("text3");
		String cont4 = request.getParameter("text4");
		
		String mac1 = request.getParameter("t1");
		String mac2 = request.getParameter("t2");
		String mac3 = request.getParameter("t3");
		String mac4 = request.getParameter("t4");
								
		String cloud = "cloud";
			
      		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;

		KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
		Cipher encoder = Cipher.getInstance("RSA");
		KeyPair kp = kg.generateKeyPair();

		Key pubKey = kp.getPublic();

		byte[] pub = pubKey.getEncoded();
		//				System.out.println("PUBLIC KEY" + pub);

		String pk = String.valueOf(pub);
		String rank = "0";
		Statement st = connection.createStatement();
	
		ResultSet rs=st.executeQuery("select * from ownerfiles where mac1='"+mac1+"' or  mac2='"+mac2+"' or mac3='"+mac3+"' or mac4='"+mac4+"' ");
		
		if(rs.next()==true)
		{
		%>

	<h2>	<% out.println("Client Side Cross Deduplication Found !!! Pls try some other File");  %> </h2>
		<% }
		
		else if (rs.next()!=true)
		{
 
	%>
																		
<h2 class="style5 style13">No Data Replication Found !!! </h2>

<%
} %>

</p>
<br />
<p><a href="OMainPage.jsp">BACK</a></p>
 <div class="clr"></div>
		
  <%
         connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </div>
          
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
            <li><a href="index.html">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
<div class="fbg"></div>
  <div class="footer">
    
</html>
