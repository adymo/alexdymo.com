<?php

global $lang;

$lang = $HTTP_COOKIE_VARS["lang"];
if (!isset($lang)) {
    $lang = "en";
}

$lang_set = $HTTP_GET_VARS["lang"];
if (isset($lang_set)) {
    setcookie("lang", $lang_set);
    $lang = $lang_set;
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Alexander Dymo: Personal Site</title>

<!--  <link rel="stylesheet" type="text/css" href="inc/layout.css">
  <script language="JavaScript1.2" type="text/javascript" src="inc/main_dom.js"></script> -->

  <meta name="author" content="Alexander Dymo">
  <meta name="keywords" content="Alexander,Dymo,software,engineering,programming,eclipse,KDE,automake,autotools,IDE,plugin,open,source,unix,development,
   kde,Qt,qt,epl">

</head>
<body bgcolor="#FFFFF0" >

<table border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
    <td bgcolor="#58579C" colspan="3" height="7px"></td></tr>
    <tr>
    <tr>
    <td width="200px" valign="top" align="center" bgcolor="#58579C"><img src="photo1.png"/></td>
    <td bgcolor="#58579C">&nbsp;&nbsp;</td>
    <td width="100%">
	<?php
	include("header.html");
	?>
    </td>
    </tr>
    <tr>
    <td bgcolor="#58579C" colspan="3" height="7px"></td></tr>
    <tr>
    <td valign="top" width="200px">  
      <?php
      include("menu.html");
      ?>
    </td>
    <td bgcolor="#58579C">&nbsp;&nbsp;</td>
    <td align="left" valign="top" width="100%">
    <?php
    $file = $HTTP_GET_VARS["filename"];
    //$lang = $HTTP_COOKIE_VARS["lang"];
    if ($lang=="en")
        $lang = "";
    if (!isset($file)) {
        $file = "main.html";
    }
    if (isset($file)) {
        $tr_file = "lang/$lang/$file";
        if (isset($lang) && file_exists($tr_file) ) {
            include($tr_file);
        } else {
            if (!file_exists($file)) {
                if (isset($lang) && file_exists("lang/$lang/nofile.html") ) {
                    include("lang/$lang/nofile.html");
                } else {
                    include("nofile.html");
                }
            } else {
                include($file);
            }
        }
    }
    ?>
    </td>
    </tr>
    <tr>
<!--    <td height="20" bgcolor="#58579C">
    <?php
//	include("setlang.html");
    ?>
    </td>
-->
    <td colspan="3" align="right" height="20" bgcolor="#58579C">
    <div style="color : #ffffff;">Copyright (C) 2006 <a href="mailto:odymo@acm.org" style="color : #ffffff;">Alexander Dymo</a></div>
    </td>
    </tr>
  </tbody>
</table>

</body>
</html>
