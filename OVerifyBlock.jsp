<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Verify</title>
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
.style6 {font-size: 24}
.style7 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style8 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
.style10 {clear: both}
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
        <div class="article style8">
          <h2>Verify Your Data Fragments(Data Integrity Check) </h2>
          
          <div class="style10"></div>
          <form action="OVerifyBlock1.jsp" method="post" name="form1" id="form1">
          <table width="598" border="1" align="center">
            <tr>
              <td width="286">Enter File Name</td>
              <td width="356"><input required="required" type="text" name="file" id="file" size="50" /></td>
            </tr>
            <tr>
              <td>Select The Block </td>
              <td><select name="block"  >
			  <option>--Select--</option>
			  <option>Block1</option>
			   <option>Block2</option>
			    <option>Block3</option>
				 <option>Block4</option>
			  </select></td>
            </tr>
            
            <tr>
              <td><div align="right"></div></td>
              <td><input type="submit" name="Submit" value="Verify" /></td>
            </tr>
          </table>
  </form>
          <div class="style10"></div>
        </div>
      </div>
      <div class="sidebar style6">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="style7"></div>
        <div class="gadget">
          <h2 class="star">Owner Main Menu</h2>
          <div class="style7"></div>
          <ul class="ex_menu style3"><li class="style4">
            <li><a href="OMainPage.jsp">Home</a></li>
            <li><a href="index.html"><em>Logout</em></a></li>
          </ul>
        </div>
      </div>
      <div class="clr style6"></div>
    </div>
  </div>
<div class="fbg style6"></div>
  <div class="footer">
</html>
