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
.style4 {color: #0000FF}
.style5 {
	color: #0000FF;
	font-weight: bold;
	font-style: italic;
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
          <h2><span>Attacker</span></h2>
          <p>&nbsp;</p>
         <%
try
{

%>
<form method="post" action="Attack1.jsp">
<table width="755" border="1" align="center" >
<tr><td align="center" bgcolor="#FFFF00"><span class="style6">User Name</span></td>
<td><input type="text" placeholder="Enter Your Name" name="aname"/> </td></tr>
<tr><td align="center" bgcolor="#FFFF00"><span class="style6">File Name</span></td>
<td><input type="text" placeholder="Enter File Name to Attack" name="fname"/> </td></tr>
<tr><td align="center" bgcolor="#FFFF00"><span class="style6">Select Block</span></td>
<td><select name="block" ><option>--Select--</option>
<option>Block-1</option>
<option>Block-2</option>
<option>Block-3</option>
<option>Block-4</option>
</select> </td></tr>
<tr><td align="center" bgcolor="#FFFF00"><span class="style6">Owner Name</span></td>
<td><input type="text" placeholder="Enter Owner Name" name="owner"/> </td></tr>



<tr> <td colspan="2" align="center"><input type="submit" value="Attack"/></td></table>
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
        <div class="gadget">
          <h2 class="star"><span>Home </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
          </ul>
        </div>
  <div class="footer">
</html>
