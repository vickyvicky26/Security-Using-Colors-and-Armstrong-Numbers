<%@ page language="java" import="java.util.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE>Security using colors and armstrong numbers</TITLE>
  
  <script language="javascript">
function editRecord(id){
   
    window.location.href="processleave/"+id; 
  }


  function deleteRecord(id){
   
    window.location.href="deleteUser/"+id; 
  }
</script>
  <style type="text/css">
<!--
.style2 {
	font-family: Calibri;
	font-weight: bold;
}
.style3 {
	font-family: DigifaceWide;
	font-weight: bold;
}
.style6 {
	font-size: 24px;
	font-family: Calibri;
}
-->
  </style>
</HEAD>

 <BODY>
 <table align="center">
  
</table>
 <table width="704" height="75" border="0" align="center">
   <tr>
     <th scope="col"><span class="style6">Security Using Colors and Armstrong Numbers </span></th>
   </tr>
 </table>
 <p align="right"><a href="index.html" target="_self">Sign out </a></p>
 <table width="623" height="324" border="0" align="center" bgcolor="#FFF0F0">
   <tr>
     <th scope="col"><table width="555" height="257" border="0" align="center" bgcolor="#FFFFFF">
       <tr>
         <th scope="col"><table width="341"  align="center" background="images/texture-table.jpg" style="border:1px solid #000000;">
             <tr>
               <td width="802" height="10px" colspan=10 align="center"><hr></td>
             </tr>
             <tr>
               <td colspan=10 align="center"><span class="style3"> Message </span></td>
             </tr>
             <tr>
               <td colspan=10 align="center" height="10px"><hr></td>
             </tr>
             <tr>
               <td colspan=10 align="center" height="10px"><div align="center" class="style2"></div></td>
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
			String eid = viewList.get(0).toString();
			viewItr = viewList.iterator();
			%>
             <tr style="background-color:<%=bgcolor%>;">
               <%	
			while(viewItr.hasNext())
			{
			
				%>
               <td width="58"><div align="center"><b><%=viewItr.next()%></b></div></td>
               <%
					
			}
			count++;
			%>
             </tr>
             <%
		}
	}
	if(count==0)
	{
		%>
             <tr>
               <td colspan="10" align="center">&nbsp;</td>
             </tr>
             <tr>
               <td colspan="10" align="center"><strong><blink>No Record Avaliable</blink></strong></td>
             </tr>
             <%
	}
	%>
             <tr>
               <td colspan=10 align="center" height="2px"></td>
             </tr>
         </table></th>
       </tr>
     </table></th>
   </tr>
 </table>
 </BODY>
</HTML>
