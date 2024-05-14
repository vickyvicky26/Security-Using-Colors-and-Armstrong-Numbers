<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Security using colors and armstrong numbers</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
}
.style2 {
	font-family: Arial;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="200" border="1" align="center">
  <tr>
    <td><form id="form1" name="form1" method="post" action="viewhistory">
      <table width="427" border="0" align="center">
        <tr bgcolor="#003300">
          <td bgcolor="#CCCCCC"><div align="center" class="style1">Message Decryption </div></td>
        </tr>
      </table>
      <p>
        <input name="username" type="hidden" id="username" value="<%=session.getAttribute("eid")%>" />
        <input name="password" type="hidden" id="password" value="<%=session.getAttribute("password")%>" />
      </p>
      <table width="256" height="161" border="0" align="center">
        <tr>
          <td width="350" height="46">&nbsp;</td>
          <td colspan="3">&nbsp;</td>
          <td colspan="3"><span class="style2"> Key</span></td>
        </tr>
        <tr>
          <td height="62" colspan="4">&nbsp;</td>
          <td width="41"><input name="kyr" type="text" id="kyr" value="<%=session.getAttribute("enr")%>" size="5" maxlength="3" /></td>
          <td width="30"><input name="kyg" type="text" id="kyg" value="<%=session.getAttribute("eng")%>" size="5" maxlength="3" /></td>
          <td width="149"><input name="kyb" type="text" id="kyb" value="<%=session.getAttribute("enb")%>" size="5" maxlength="3" /></td>
        </tr>
        <tr>
          <td height="62" colspan="4">&nbsp;</td>
          <td><input name="ky1" type="text" id="ky1" size="5" maxlength="3" /></td>
          <td><input name="ky2" type="text" id="ky2" size="5" maxlength="3" /></td>
          <td><input name="ky3" type="text" id="ky3" size="5" maxlength="3" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3">&nbsp;</td>
          <td colspan="3"><input name="Decrypt message" type="submit" id="Decrypt message" value="  Next&gt;&gt;  " /></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
</body>
</html>
