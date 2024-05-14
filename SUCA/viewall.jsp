<%@ page language="java" import="java.util.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE>Leave Management System</TITLE>
  
  <script language="javascript">
function editRecord(id){
   
    window.location.href="processleave/"+id; 
  }


  function deleteRecord(id){
   
    window.location.href="cancelleaveservlet/"+id; 
  }
</script>
  <style type="text/css">
<!--
.style4 {color: #FFFFFF; font-family: Calibri; }
.style5 {
	font-family: Arial;
	font-weight: bold;
	color: #FFFFFF;
}
-->
  </style>
</HEAD>

 <BODY>
 <p><br>
 </p>
 <table align="center">
  
</table>
 <div align="right"><a href="index.html" target="_self">Sign out </a><br>
 </div>
 <table width="458" height="150"  align="center" style="border:1px solid #000000;">
 <tr><td colspan=11 align="center" height="10px"></td></tr>

    <tr bgcolor="#626D1D">
      <td colspan=11 align="center"><span class="style5">All Messages </span></td>
    </tr>
<tr><td colspan=11 align="center" height="10px"></td></tr>
  <tr align="center" valign="middle" bgcolor="#89723A" style="font-weight:bold;">
     <td width="170"><span class="style4">From </span></td>
     <td width="131"><span class="style4">Message ID </span></td>
     <td colspan="9">&nbsp;</td>
   </tr>
	<%
	String bgcolor="";
	int count=0;
	List viewList = new ArrayList();
	Iterator  viewItr;
	
	if(request.getAttribute("userList")!=null && request.getAttribute("userList")!="")
	{
		List userList =  (ArrayList)request.getAttribute("userList");
		Iterator itr = userList.iterator();
		
		while(itr.hasNext())
		{
			
			if(count%2==0)
			{
			// bgcolor = "#C8E2D1";
			}
			else
			{
				
				//bgcolor = "#EAF8EF";
			}
			
			viewList = (ArrayList)itr.next();
			String eid = viewList.get(1).toString();
			viewItr = viewList.iterator();
			%>
			<tr style="background-color:<%=bgcolor%>;">
			<%	
			while(viewItr.hasNext())
			{
			
				%>
				<td><%=viewItr.next()%></td>
				
				<%
					
			}
			count++;
			%>
			<td><input type="button" name="edit" value="Read" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onClick="editRecord('<%=eid%>');" ></td>
				<td width="141"><input type="button" name="delete" style="background-color:#ff0000;font-weight:bold;;color:#ffffff;" value="Delete" onClick="deleteRecord('<%=eid%>');"></td>
			</tr>
			<%
		}
	}
	if(count==0)
	{
		%>
		<tr><td colspan="11" align="center">&nbsp;</td></tr>
            <tr>
              <td colspan="11" align="center">Invalid User/No Record Avaliable</td>
            </tr>
		<%
	}
	%>
     <tr><td colspan=11 align="center" height="2px"></td></tr>
 </table>	
 </BODY>
</HTML>
