<%@ page language="java" import="java.util.*;"%>
<html>
<head>
<style type="text/css">
<!--
.style3 {
	color: #000000;
	font-family: Calibri;
	font-size: 18px;
}
.style4 {
	color: #333333;
	font-weight: bold;
}
-->
</style>

  <script language="javascript">
function editRecord(inverse)
{
 window.location.href="Inverse/"+id; 
}

</script>
</head>
<body>
<%!
String eid="";
String empname="";
String designation="";
String modeofleave="";
String from="";
String to="";
String noofdays;
String purpose="";
String contactno="";
String status="";
String refno="";

String inverse="";
String inverse1="";

List  userList=null;
%>

<%

if(request.getAttribute("userList")!=null && request.getAttribute("userList")!="")
{
		userList = (ArrayList)request.getAttribute("userList");
		eid=userList.get(0).toString();
		empname=userList.get(1).toString();
		designation=userList.get(2).toString();
		modeofleave=userList.get(3).toString();
		from=userList.get(4).toString();
		to=userList.get(5).toString();
	    noofdays=userList.get(6).toString();
		purpose=userList.get(7).toString();
		contactno=userList.get(8).toString();
		status=userList.get(9).toString();
		refno=userList.get(15).toString();
	    
		inverse=userList.get(10).toString();;
		if(inverse.equals("153"))
		{
		inverse1="(-1/240)[-450 240 -30 -18 24 -6 100 -120 20]";
		}
		
		if(inverse.equals("153"))
		{
		inverse1="(-1/342)[380 -344 -15 36 -23 89 -143 -234 89]";
		}
		if(inverse.equals("256"))
		{
		inverse1="(-1/287)[-540 -345 -78 -29 -965 -56 633 -843 34]";
		}
		if(inverse.equals("878"))
		{
		inverse1="(-1/976)[-1787 765 -56 -553 345 -66 -344 -233 65]";
		}
		if(inverse.equals("3465"))
		{
		inverse1="(-1/2345)[-5453 -443 -343 -867 45 -455 -343 454 234]";
		}if(inverse.equals("8723"))
		{
		inverse1="(-1/5345)[-343 454 -764 -756 -454 -34 300 -343 343]";
		}
		
		
	}
%>

<form name="userform" method="post" action="../viewhistory">
  <div align="right"><br>
    <a href="index.html" target="_self">Sign out </a><br>
  <br>
  </div>
  <table width="373" align="center" style="border:1px solid #000000;">
<input type="hidden" name="id" value="<%=refno%>">
<input type="hidden" name="key" value="<%=inverse1%>">
<tr>
  <td colspan=2 style="font-weight:bold;" align="center"><hr></td>
</tr>
<tr>
  <td colspan=2 align="center" style="font-weight:bold;"><span class="style3">Decrypt </span></td>
</tr>
<tr><td colspan=2 align="center" height="10"><hr></td></tr>
	<tr>
		<td><div align="center">Red</div></td>
		<td><input name="kyr" type="text" id="kyr" value="<%=noofdays%>" readonly size="10"></td>
	</tr>
	<tr>
		<td><div align="center">Green</div></td>
		<td><input name="kyg" type="text" id="kyg" value="<%=purpose%>" readonly size="10"></td>
	</tr>
	<tr>
		<td><div align="center">Blue</div></td>
		<td><input name="kyb" type="text" id="kyb" value="<%=contactno%>" readonly size="10"></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	  <td>&nbsp;</td>
	</tr>
	
	<tr>
		<td rowspan="3"><div align="center" class="style4">KEY</div></td>
		<td><input  name="ky1" type="text" id="ky1" size="10"></td>
	</tr>
	<tr>
		<td><input name="ky2" type="text" id="ky2" size="10"></td>
	</tr>
	<tr>
		<td><input name="ky3" type="text" id="ky3" size="10"></td>
	</tr>
	
	<tr>
	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	</tr>
	<tr>
	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	</tr>
	<tr>
	  <td colspan="2"><hr></td>
    </tr>
	<tr>
		<td></td>
		<td><input type="submit" name="Submit" value="  Ok  " style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
	</tr>
	<tr><td colspan=2 align="center" height="10"><hr></td></tr>
</table>
</form>
</body>
</html>


