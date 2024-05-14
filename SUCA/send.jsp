<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Security using colors and armstrong numbers</title>
<script type="text/javascript" src="jscolor/jscolor.js"></script>
<script type="text/javascript">


function check()
{
if (document.getElementById('messagekey').value=="select")
{
alert("Select Armstong Number...");
return false;
}
}

function calculate()
{
//red
document.form1.enr.value=parseInt(document.form1.rxr.value)+parseInt(document.form1.kyr.value);
//green
document.form1.eng.value=parseInt(document.form1.rxg.value)+parseInt(document.form1.kyg.value);
//blue
document.form1.enb.value=parseInt(document.form1.rxb.value)+parseInt(document.form1.kyb.value);


//alert("");
return true;
}

function encryptmessage()
{
alert(document.form1.message.value);

return true;
}

</script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="senddata"  onsubmit="return check();">
  <p align="right"><a href="index.html" target="_self">Sign out</a></p>
  <table width="873" border="0" align="center" bgcolor="#99CCCC">
    <tr>
      <td><div align="center" class="style1"> Encryption </div></td>
    </tr>
  </table>
  <p align="right"><a href="index.html" target="_self"></a> </p>
  <table width="739" border="2" align="center" bordercolor="#99CCCC">
    <tr>
      <td><table width="657" height="324" border="0" align="center">
        <tr>
          <td width="141" height="46">&nbsp;</td>
          <td colspan="3">To : </td>
          <td colspan="3">Key</td>
        </tr>
        <tr>
          <td height="62">&nbsp;</td>
          <td width="28"><input name="rxr" type="text" id="rxr" size="3" maxlength="3" /></td>
          <td width="28"><input name="rxg" type="text" id="rxg" size="3" maxlength="3" /></td>
          <td width="115"><input name="rxb" type="text" id="rxb" size="3" maxlength="3" /></td>
          <td width="30"><input name="kyr" type="text" id="kyr" size="5" maxlength="3" /></td>
          <td width="30"><input name="kyg" type="text" id="kyg" size="5" maxlength="3" /></td>
          <td width="139"><input name="kyb" type="text" id="kyb" size="5" maxlength="3" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3">&nbsp;</td>
          <td colspan="3"><input type="button" name="Submit2" value="Encrypt Colorr" onclick="return calculate();" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3">Encrypted Receiver Color </td>
          <td><input name="enr" type="text" id="enr" size="5" maxlength="3" /></td>
          <td><input name="eng" type="text" id="eng" size="5" maxlength="3" /></td>
          <td><input name="enb" type="text" id="enb" size="5" maxlength="3" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3">&nbsp;</td>
          <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3">Message</td>
          <td colspan="3">Select Armstrong Number </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3"><textarea name="message" cols="30" rows="5" id="message"></textarea></td>
          <td colspan="3"><label>
            <select name="messagekey" size="1" id="messagekey">
              <option value="select">&lt;Select&gt;</option>
              <option value="153">153</option>
              <option value="360" selected="selected">360</option>
              <option value="371">371</option>
              <option value="407">407</option>
              <option value="1634">1634</option>
              </select>
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3">&nbsp;</td>
          <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
          <td><input name="username" type="hidden" id="username" value="<%=session.getAttribute("eid")%>" />
            <input name="password" type="hidden" id="password" value="<%=session.getAttribute("password")%>" /></td>
          <td colspan="3"><div align="right">
            <input type="submit" name="Submit" value="    Send    "  />
          </div></td>
          <td colspan="3">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
