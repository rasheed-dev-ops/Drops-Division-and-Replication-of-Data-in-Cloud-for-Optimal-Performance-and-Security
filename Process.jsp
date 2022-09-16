<%@ page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page import="java.util.*"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%
try
{
String name=request.getParameter("uname");
String fname=request.getParameter("fname");


			SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;

String resp="Responsed";
				
				Statement stss=connection.createStatement();
stss.executeUpdate("Update userrequest set resdate='"+dt+"', resstatus='"+resp+"' where username='"+name+"' and fnamereq='"+fname+"'  ");

 response.sendRedirect("CViewFileRequest.jsp");
}
catch(Exception e)
{
e.printStackTrace();

}

%>