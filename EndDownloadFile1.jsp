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
<title>Final Download</title>
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
.style7 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style8 {color: #FF0000}
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
          <h2><span> DOWNLOAD FILE </span></h2>
          <p class="infopost">&nbsp; <a href="#" class="com"></a></p>
          <div class="clr"></div>
          
		  
	<%
		  
		    	try 
				{
		  		String file = request.getParameter("t1");

		  		
		        
		  
		  		String fn=(String)application.getAttribute("file");
		  		String un=(String)application.getAttribute("uname");
		  		String oname = request.getParameter("oname");
		  		
		  			String prcs = "Responsed";
		
		  			String query1 = "select * from userrequest  where username='"+un+"' and fnamereq='" + file+ "' and resstatus='" + prcs + "' ";
		  			Statement st1 = connection.createStatement();
		  			ResultSet rs1 = st1.executeQuery(query1);

		  			if (rs1.next()) {
		  		%>
		  		<%		  		
				String mac1="";
				String mac2="";
				String mac3="";
				String mac4="";
				String sk="";
				String strQuery = "select * from cloudserver where fname='"+file+"' and ownername='"+oname+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);
				{
					if(rs.next()==true)
					{
						mac1=rs.getString(5);
						mac2=rs.getString(7);
						mac3=rs.getString(9);
						mac4=rs.getString(11);
						sk=rs.getString(12);
						
					SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

					Date now = new Date();

					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;	
					String task="Download";
					String user=(String) application.getAttribute("uname");
					String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"+user+"','"+file+"','"+sk+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery2);
					
			%>
			
<form action="EndDownloadFile2.jsp" method="post" name="form1" id="form1">
<table width="478" border="0" align="center">
	<tr>
		<td width="223" bgcolor="#FFFF00"><span class="style7">Enter File Name :-</span></td>
		<td width="245"><label> <input required name="t1"
			type="text"  size="40" value="<%=file%>"/> </label></td>
	</tr>
	<tr>
		<td height="34" bgcolor="#FFFF00"><span class="style7">Enter Owner Name:-</span></td>
		<td><input name="oname" type="text" size="40" value="<%=oname%>" /></td>
	</tr>
	
	<tr>
		<td height="34" bgcolor="#FFFF00"><span class="style7">MAC 1:-</span></td>
		<td><input name="t12" type="text" size="40" value="<%=mac1%>" /></td>
	</tr>
	<tr>
		<td height="34" bgcolor="#FFFF00"><span class="style7">MAC 2:-</span></td>
		<td><input name="t122" type="text" size="40" value="<%=mac2%>" /></td>
	</tr>
	<tr>
		<td height="34" bgcolor="#FFFF00"><span class="style7">MAC 3:-</span></td>
		<td><input name="t123" type="text" size="40" value="<%=mac3%>" /></td>
	</tr>
	<tr>
		<td height="34" bgcolor="#FFFF00"><span class="style7">MAC 4:-</span></td>
		<td><input name="t124" type="text" size="40"value="<%=mac4%>" /></td>
	</tr>
	<tr>
		<td bgcolor="#FFFF00"><span class="style7">Secret Key :-</span></td>
		<td><input name="t13" type="text" size="40" value="<%=sk%>" /></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
		<div align="right"><input type="submit" name="Submit"
			value="Download" /></div>		</td>
	</tr>
</table>
</form>
<%	
					}
					else
					{
		
						out.println("File Doesn't Exist !!!");
			%>
						<p><a href="EDownloadFile.jsp">Back</a></p>
	<%
					}
				}
				
		  			} else {
		  		%>
		  		<p class="style8">
		  		<h2 class="style3">You Don't Have Permission To Download !!!</h2>
		  		</p>
		  		<br />
		  		<p><a href="E_MainPage.jsp">Back</a></p>


		  		<%
		  			}
		
		  		     
		  				
	 
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%> 		
		  
          <div class="clr"></div>
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
          <ul class="sb_menu style3">
            <li><a href="EndUserMain.jsp">Home</a></li>
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
