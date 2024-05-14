<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Security using Colors and Armstrong</title>
<style type="text/css">
<!--
.style3 {font-family: Calibri; color: #FFFFFF; }
.style4 {
	color: #000000;
	font-weight: bold;
}
.style10 {font-family: Calibri; color: #000000; font-weight: bold; }
.style11 {
	font-size: 36px;
	font-weight: bold;
	font-family: Arial;
}
-->
</style>
</head>

<body>
<div align="center" class="style11">Receiver</div>
<table width="975" border="0" align="center">
  <tr>
    <td bgcolor="#999999">&nbsp;</td>
  </tr>
</table>
<table width="974" height="413" border="0" align="center">
  <tr>
    <td height="21" colspan="2">&nbsp;</td>
  </tr>
  <tr align="center" valign="middle">
    <td width="319" height="386">&nbsp;</td>
    <td align="left"><form id="form1" name="form1" method="post" action="<%=request.getContextPath()%>/viewrequest">
      <div align="left"></div>
      <table width="257" height="309" border="2">
        <tr align="center" valign="middle">
          <td width="288" height="172"><table width="241" height="317" align="center" b8order="1">
            <tr>
              <td width="80" height="39">&nbsp;</td>
                <td colspan="2" valign="middle"><div align="center"><span class="style3"><span class="style4">Sign in to your account...</span></span></div></td>
                </tr>
            <tr>
              <td height="21">&nbsp;</td>
                <td colspan="2"><hr /></td>
                </tr>
            <tr>
              <td height="35">&nbsp;</td>
                <td width="86"><span class="style10">Username: </span></td>
                <td width="179"><input name="eid" type="text" id="eid" /></td>
              </tr>
            <tr>
              <td height="61">&nbsp;</td>
                <td><span class="style10">Password:</span></td>
                <td><input name="password" type="password" id="password" /></td>
              </tr>
            <tr>
              <td>&nbsp;</td>
                <td colspan="2"><hr /></td>
              </tr>
            
            <tr>
              <td height="77">&nbsp;</td>
                <td colspan="2"><p align="center"><input type="submit" name="Submit" value="  Sign in  " />
                  </p>
                <hr /></td>
                </tr>
            <tr>
              <td height="47">&nbsp;</td>
              <td colspan="2"><div align="center"><a href="index.html" target="_self">Home</a></div></td>
            </tr>
            
            
            </table></td>
          </tr>
        </table>
    </form></td>
  </tr>
</table>
<table width="974" border="0" align="center">
  <tr bgcolor="#CCFF00">
    <td height="21" bgcolor="#999999"><div align="center"></div></td>
  </tr>
</table>
</body>
</html>
