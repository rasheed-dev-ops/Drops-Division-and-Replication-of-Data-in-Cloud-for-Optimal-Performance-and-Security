<%@ include file="connect.jsp"%>
<%@ page import="java.util.*"%>
<html>
<%
try
{

%>
<form method="post" action="Attack2.jsp">
<table width="755" border="1" align="center" >
<tr><td align="center">User Name</td><td><input type="text" placeholder="Enter Your Name" name="aname"/> </td></tr>
<tr><td align="center">File Name</td><td><input type="text" placeholder="Enter File Name to Attack" name="fname"/> </td></tr>
<tr><td align="center">Select Block</td><td><select name="block" ><option>--Select--</option>
<option>Block-1</option>
<option>Block-2</option>
<option>Block-3</option>
<option>Block-4</option>
</select> </td></tr>
<tr><td align="center">Owner Name</td><td><input type="text" placeholder="Enter Owner Name" name="owner"/> </td></tr>



<tr> <td colspan="2" align="center"><input type="submit" value="Attack"/></td></table>
<%
}
catch(Exception e)
{
e.printStackTrace();

}
%>
</html>