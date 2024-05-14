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
	font-family: "Bookman Old Style";
	font-weight: bold;
	font-size: 36px;
}
.style13 {
	font-family: DigifaceWide;
	font-size: 24px;
}
.style14 {font-family: "Times New Roman", Times, serif}
-->
</style>
</head>

<body>
<div align="center" class="style11">
  <p class="style13">Security Using Colors and Armstrong Numbers </p>
</div>
<table width="975" border="0" align="center">
  <tr>
    <td bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
</table>
<table width="974" height="413" border="0" align="center">
  <tr>
    <td height="21" colspan="3"><strong>Welcome Administrator...</strong></td>
  </tr>
  <tr align="center" valign="middle">
    <td width="424" height="386"><div align="justify" class="style14"> In real world, data security plays an important role 
      where confidentiality, authentication, integrity, non repudiation 
      are given importance. The universal technique for providing 
      confidentiality of transmitted data is cryptography. This paper 
      provides a technique to encrypt the data using a key involving 
      Armstrong numbers and colors as the password. Three set of 
      keys are used to provide secure data transmission with the 
      colors acting as vital security element thereby providing 
    authentication.</div></td>
    <td width="218">&nbsp;</td>
    <td width="318"><form id="form1" name="form1" method="post" action="<%=request.getContextPath()%>/emplogin">
      <table width="257" height="314" border="2">
        <tr align="center" valign="middle">
          <td width="288" height="172"><table width="241" height="278" align="center" b8order="1">
            <tr>
              <td width="80" height="39">&nbsp;</td>
              <td colspan="2" valign="middle"><span class="style3"><span class="style4">Sign in to your account...</span></span></td>
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
              <td height="78">&nbsp;</td>
              <td colspan="2"><hr />
                <div align="center">
                  <input type="submit" name="Submit" value="  Sign in  " />
                </div>                </td>
            </tr>
            
            <tr>
              <td height="28">&nbsp;</td>
              <td colspan="2"><hr /></td>
              </tr>
            
            
          </table></td>
        </tr>
      </table>
      <a href="createaccount.jsp"></a> 
    </form>    </td>
  </tr>
</table>
<table width="974" border="0" align="center">
  <tr bgcolor="#CCFF00">
    <td height="21" bgcolor="#CCCCCC"><div align="center"></div></td>
  </tr>
</table>
</body>
</html>
