
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
.style1 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style2 {
	color: #FF0000;
	font-style: italic;
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
.style6 {font-size: 18px}
.style7 {font-size: 24px}
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
String cont=request.getParameter("cont");
String strQuery2="";

try
{
String keys = "ef50a0ef2c3e3a5f";
			String query2="";
			
	
			
	
			String h1 = "";
			String filename = "filename.txt";


			byte[] keyValue = keys.getBytes();
			Key key = new SecretKeySpec(keyValue, "AES");
			Cipher c = Cipher.getInstance("AES");
			c.init(Cipher.ENCRYPT_MODE, key);
			String encryptedValue = new String(Base64.encode(cont.getBytes()));
			PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(cont));

			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);

			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);

			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}

			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
			KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
			Cipher encoder = Cipher.getInstance("RSA");
			KeyPair kp = kg.generateKeyPair();

			Key pubKey = kp.getPublic();

			byte[] pub = pubKey.getEncoded();
			//				System.out.println("PUBLIC KEY" + pub);

			String pk = String.valueOf(pub);
			
			

			SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			
				if(block.equalsIgnoreCase("Block-1"))
			{
			
				 strQuery2 = "update cloudserver set ct1='"
						+ encryptedValue + "', mac1='" + h1 + "',sk='" + pk
						+ "' where fname='" + file + "'  and ownername='"+owner+"' ";
			}
				if(block.equalsIgnoreCase("Block-2"))
			{
			
				 strQuery2 = "update cloudserver set ct2='"
						+ encryptedValue + "', mac2='" + h1 + "',sk='" + pk
						+ "' where fname='" + file + "'  and ownername='"+owner+"' ";
			}
				if(block.equalsIgnoreCase("Block-3"))
			{
			
				 strQuery2 = "update cloudserver set ct3='"
						+ encryptedValue + "', mac3='" + h1 + "',sk='" + pk
						+ "' where fname='" + file + "'  and ownername='"+owner+"' ";
			}
				if(block.equalsIgnoreCase("Block-4"))
			{
			
				 strQuery2 = "update cloudserver set ct4='"
						+ encryptedValue + "', mac4='" + h1 + "',sk='" + pk
						+ "' where fname='" + file + "'  and ownername='"+owner+"' ";
			}
			
				connection.createStatement().executeUpdate(strQuery2);
				
			

			String type="External";
					String strQuery4 = "insert into attacker(user,fname,ownername,sk,type,dt) values('"
							+ aname
							+ "','"
							+ file
							+ "','"+owner+"','"
							+ pk
							+ "','"+type+"','"
							+ dt
							+ "')";
					connection.createStatement().executeUpdate(strQuery4);
%>






<p>
<h1 ><span class="style1">Attacked Success Fully!!!</span><br />
  <a href="Attack.jsp" class="style1">Back &gt;&gt;&gt;&gt; </a></h1>
</p>
<br />

<%
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
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Home </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
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
      <div class="clr"></div>
    </div>
  </div>
<div class="fbg"></div>
  <div class="footer">
    
</html>
