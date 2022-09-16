
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

<html>
<style type="text/css">
<!--
.style1 {color: #FFFF00}
-->
</style>
         <% try 
	{
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="";
      		

	String query="select * from cloudserver "; 
    Statement st5=connection.createStatement();
    ResultSet rs=st5.executeQuery(query);

	%><h1><span style="color:#FF00FF"> </span>
	<table width="855" align="center" border="1" cellpadding="3">
	<tr><td bgcolor="#FF0000"><span class="style1">File Name</span></td>
	<td bgcolor="#FF0000"><span class="style1">Owner Name</span></td>
	<td bgcolor="#FF0000"><span class="style1">MAC-1</span></td>
	<td bgcolor="#FF0000"><span class="style1">MAC-2</span></td>
	<td bgcolor="#FF0000"><span class="style1">MAC-3</span></td>
	<td bgcolor="#FF0000"><span class="style1">MAC-4</span></td>
	<td bgcolor="#FF0000"><span class="style1">SK</span></td>
	</tr>
	<%	
	
	
	while ( rs.next() )
{
s1=rs.getString(1);
s2=rs.getString(2);
s3=rs.getString(5);
s4=rs.getString(7);
s5=rs.getString(9);
s6=rs.getString(11);
s7=rs.getString(12);

			%>
		<tr><td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td></tr>	

 <%

}
	   
%>
</table>
<%
         connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
            e.printStackTrace();
          }
%>
</html>