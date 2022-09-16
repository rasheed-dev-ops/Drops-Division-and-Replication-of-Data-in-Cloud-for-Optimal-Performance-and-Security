


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

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
<title>Upload</title>
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
.style12 {color: #FFFF00; font-weight: bold; }
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
          <h2 class="style3">Upload Your Data Fragments !!! </h2>
          
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            
            <form id="form1" name="form1" method="post" action="OUploadBlocks1.jsp">
          <table width="598" border="1" align="center">
            <tr>
              <td width="286" bgcolor="#FF0000"><span class="style12">Select File :- </span></td>
              <td width="356"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000" class="style12">File Name :- </td>
              <td><input required="required" name="tt" type="text" id="t42" size="50"/></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000">&nbsp;</td>
              <td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style12">MAC1 :- </span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
			<tr>
              <td bgcolor="#FF0000"><span class="style12">MAC2 :- </span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
			<tr>
              <td bgcolor="#FF0000"><span class="style12">MAC3 :- </span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
			<tr>
              <td bgcolor="#FF0000"><span class="style12">MAC4 :- </span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
			
			
            <tr>
              <td><div align="right"></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
            </tr>
          </table>
  </form>
          </div>
          <div class="clr">sadfdasfdasfdasfa</div>
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
            <li><a href="index.html">Logout</a><a href="EndUser.jsp"></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
<div class="fbg"></div>
  <div class="footer">
    
</html>
