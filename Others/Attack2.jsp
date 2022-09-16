
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
<title>EPAS: A Sampling Based Similarity Identification Algorithm for the Cloud</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">EPas<span></span> <small>A Sampling Based Similarity Identification Algorith for the Cloud </small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
        
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="285" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="285" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="285" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p class="infopost">EPAS: A Sampling Based Similarity Identification Algorithm for the Cloud</p>
          <div class="clr"></div>
          <h2 style="text-align:center">Attack Block File Content </h2>
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
			
			query2="select ct1 from epas_cloudserver where fname='"+file+"' and ownername='"+owner+"' "; 
			}
			if(block.equalsIgnoreCase("Block-2"))
			{
			
			query2="select ct2 from epas_cloudserver where fname='"+file+"' and ownername='"+owner+"' "; 
			}
			if(block.equalsIgnoreCase("Block-3"))
			{
			
			query2="select ct3 from epas_cloudserver where fname='"+file+"' and ownername='"+owner+"'"; 
			}
			if(block.equalsIgnoreCase("Block-4"))
			{
			
					query2="select ct4 from epas_cloudserver where fname='"+file+"' and ownername='"+owner+"' "; 
			}
			Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query2);
				if(query2.equalsIgnoreCase("query2"))
				{
				%>
			<h1>invalid Query</h1>
			<%
				}
			ResultSet rs=connection.createStatement().executeQuery("select * from epas_attacker where user='"+aname+"' and type='External' ");
			if(rs.next())
			{
			%>
			<h1>Sorry You are Blocked</h1>
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
<form method="post" action="Attack3.jsp">
<table width="755" border="1" align="center" >
<tr><td align="center">User Name</td><td><input type="text" value="<%=aname%>"  name="aname"/> </td></tr>
<tr><td align="center">File Name</td><td><input type="text"  value="<%=file%>" name="fname"/> </td></tr>
<tr><td align="center">Select Block</td><td> <input type="text"  value="<%=block%>" name="block"/></td></tr>
<tr><td align="center">Owner Name</td><td> <input type="text"  value="<%=owner%>" name="owner"/></td></tr>

<tr> <td align="center">File Contents</td><td><textarea name="cont" id="textarea" cols="82" rows="20"><%=decryptedValue%></textarea></td></tr>


<tr> <td colspan="2" align="center"><input type="submit" value="Attack"/></td></table>
<%
}
}
catch(Exception e)
{
e.printStackTrace();

}
%>
			   <p>&nbsp;</p>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
        </div>
        </div>
      <div class="sidebar">
        
        <div class="clr"></div>
        <div class="gadget">
        
          <div class="clr"></div>
          <ul class="sb_menu">
                 
          </ul>
        </div>
        <div class="gadget">
          
          <div class="clr"></div>
          <ul class="ex_menu">
          
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>EPAS</span> Overview</h2>
        <p>Data deduplication calculates a unique fingerprint for<br />
          every data block by using hash algorithms such as MD5 and<br />
        SHA-1.</p>
        <ul class="fbg_ul">
          <li><a href="#">Reducing the time overhead of similarity query</a></li>
          <li><a href="#">Reducing the resource occupation of similarity<br />
          detection.</a></li>
          <li><a href="#">Achieving both the efficiency and accuracy.</a></li>
        </ul>
      </div>
      <div class="col c3">
        <h2><span></span><span> SBSI </span>Overview</h2>
        <p>In order to effectively detect file similarity with low overhead and high accuracy</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</html>
