<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="datepicker.css"/>
<script type="text/javascript" src="datepicker.js"></script>
<script type="text/javascript" src="jscolor/jscolor.js"></script>
<script type="text/javascript">
function check()
{
if (document.getElementById('eid').value=="")
{
alert("Please enter Employee ID...");
document.form1.eid.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}

else if (document.getElementById('empname').value=="")
{
alert("Please enter Your Name...");
document.form1.empname.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}
else if (document.getElementById('designation').value=="")
{
alert("Please enter your designatin...");
document.form1.designation.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}
else if (document.getElementById('modeofleave').value=="")
{
alert("Please choose leave type...");
document.form1.modeofleave.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}

else if (document.getElementById('cdate').value=="")
{
alert("Please select date...");
document.form1.date.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}
else if (document.getElementById('cdate1').value=="")
{
alert("Please select date...");
document.form1.date1.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}
else if (document.getElementById('noofdays').value=="")
{
alert("Please enter number of day(s)..");
document.form1.noofdays.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}
else if (document.getElementById('purpose').value=="")
{
alert("Please give the reason...");
document.form1.purpose.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}
else if (document.getElementById('contactno').value=="")
{
alert("Please give your contact number...");
document.form1.contactno.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}



return true
}
</script>
<style type="text/css">
<!--
.style1 {
	color: #611632;
	font-weight: bold;
}
.style2 {color: #663300}
-->
</style>
</head>

<body>
<%!
String eid="";
%>
<%
eid=request.getParameter("eid");
%>

<form id="form1" name="form1" method="post" action="<%=request.getContextPath()%>/createuseraccount"  onsubmit="return check();" >
  <table width="561" height="272" border="0" align="center">
    <tr>
      <td colspan="3"><hr /></td>
    </tr>
    <tr>
      <td colspan="3"><div align="left" class="style1">Create Account </div>        
        <div align="left"></div></td>
    </tr>
    <tr>
      <td colspan="3"><hr /></td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
      <td width="239">&nbsp;</td>
    </tr>
    <tr>
      <td width="161">&nbsp;</td>
      <td width="72" align="left">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="40">&nbsp;</td>
      <td align="left">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="40">&nbsp;</td>
      <td align="left"><strong>Username <span class="style2">*</span> </strong></td>
      <td><input name="username" type="text" id="username" size="30" /></td>
    </tr>
    <tr>
      <td height="34">&nbsp;</td>
      <td align="left"><strong>Password<span class="style2"> *</span></strong></td>
      <td><input name="password" type="password" id="password" size="30" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td align="left">&nbsp;</td>
      <td>R
        <input name="r" id="r" size="5" />
G
<input name="g" id="g" size="5" />
B
<input name="b" id="b" size="5" /></td>
    </tr>
	 
<p> Choose any color: <input class="color" id="myColor" onchange="
	document.getElementById('r').value =Math.floor(this.color.rgb[0]*100);
	document.getElementById('g').value = Math.floor(this.color.rgb[1]*100);
	document.getElementById('b').value = Math.floor(this.color.rgb[2]*100);
	document.getElementById('hue').value = this.color.hsv[0]* 60 + '&deg;';
	document.getElementById('sat').value = this.color.hsv[1]*100 + '%';
	document.getElementById('val').value = this.color.hsv[2]*100 + '%';">
    <tr>
      <td>&nbsp;</td>
      <td align="left">&nbsp;</td>
      <td><input type="submit" name="Submit" value="  Create  " /></td>
    </tr>
    <tr>
	<td>&nbsp;</td>

      <td colspan="3"><hr /></td>
    </tr>
	 <tr>
      <td colspan="3"><span class="style2">*</span><em>Important Fields</em></td>
    </tr>
      <td colspan="3"><hr /></td>
    </tr>  <tr>
        <td colspan="3"><div align="right"><a href="index.html" target="_self">Back</a></div></td>
      </tr>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>
