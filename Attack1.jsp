
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
<title>Attack</title>
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
.style2 {
	color: #FF0000;
	font-style: italic;
	font-weight: bold;
}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
.style6 {
	color: #FF0000;
	font-size: 18px;
}
.style7 {font-weight: bold}
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
      <div class="logo"></div>
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
          <h2><span>Attacker</span></h2>
          <p>&nbsp;</p>
         <%
String aname=request.getParameter("aname");
String file=request.getParameter("fname");
String block=request.getParameter("block");

String owner=request.getParameter("owner");

try
{
String keys = "ef50a0ef2c3e3a5f";
			String query2="";
			String cont="";
			if(block.equalsIgnoreCase("Block-1"))
			{
			
			query2="select ct1 from cloudserver where fname='"+file+"' and ownername='"+owner+"' "; 
			}
			if(block.equalsIgnoreCase("Block-2"))
			{
			
			query2="select ct2 from cloudserver where fname='"+file+"' and ownername='"+owner+"' "; 
			}
			if(block.equalsIgnoreCase("Block-3"))
			{
			
			query2="select ct3 from cloudserver where fname='"+file+"' and ownername='"+owner+"'"; 
			}
			if(block.equalsIgnoreCase("Block-4"))
			{
			
					query2="select ct4 from cloudserver where fname='"+file+"' and ownername='"+owner+"' "; 
			}
			Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query2);
				if(query2.equalsIgnoreCase("query2"))
				{
				%>
			<h1 class="style6">invalid Query</h1>
			<span class="style6">
			<%
				}
			ResultSet rs=connection.createStatement().executeQuery("select * from attacker where user='"+aname+"' and type='External' ");
			if(rs.next())
			{
			%>
			</span>
			<h1 class="style6">Sorry You are Blocked</h1>
			<%
			}
			else
			{
			if(rs1.next())
			{
			cont=rs1.getString(1);
			
			}
			else
			{
			%>
			<h2>File Not Exist<h2>
			<%
			}
			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.DECRYPT_MODE, key);
      			String decryptedValue = new String(Base64.decode(cont.getBytes()));

%>
<form method="post" action="Attack2.jsp">
<table width="755" border="1" align="center" >
<tr><td align="center" bgcolor="#FFFF00"><span class="style3">User Name</span></td><td><input type="text" value="<%=aname%>"  name="aname"/> </td></tr>
<tr><td align="center" bgcolor="#FFFF00"><span class="style3">File Name</span></td><td><input type="text"  value="<%=file%>" name="fname"/> </td></tr>
<tr><td align="center" bgcolor="#FFFF00"><span class="style3">Select Block</span></td><td> <input type="text"  value="<%=block%>" name="block"/></td></tr>
<tr><td align="center" bgcolor="#FFFF00"><span class="style3">Owner Name</span></td><td> <input type="text"  value="<%=owner%>" name="owner"/></td></tr>

<tr> <td align="center" bgcolor="#FFFF00"><span class="style3">File Contents</span></td><td><textarea name="cont" id="textarea" cols="82" rows="20"><%=decryptedValue%></textarea></td></tr>


<tr> <td colspan="2" align="center"><input type="submit" value="Attack"/></td></table>
<%
}
}
catch(Exception e)
{
e.printStackTrace();

}
%>
          <div class="clr"></div>
          <div class="post_content"><p align="justify" class="style2">&nbsp;</p>
            <p class="spec"><a href="#" class="rm">..</a></p>
          </div>
          <div class="sidebar">
        <div class="searchform">
    </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Home </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style7">
            <li><a href="index.html">Home</a></li>
            <li><a href="DataUser.jsp">Data User </a></li>
            <li><a href="CloudServer.jsp">Cloud Server </a></li>
            <li><a href="EndUser.jsp">End User </a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
    </div>
  </div>
      <div class="clr"><div class="footer">
</div>
</div>
  </html>
