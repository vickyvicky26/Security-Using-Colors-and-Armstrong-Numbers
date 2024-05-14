import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;

public class viewmessage extends HttpServlet
{


   public void doPost(HttpServletRequest request, HttpServletResponse response)
                                   throws ServletException,IOException
                                   {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			System.out.println("Decryption running.....");
			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/";
			String dbName = "suca";
			String driver = "com.mysql.jdbc.Driver";
			String userName = "root";
			String password = "password";
            String messagekey=request.getParameter("messagekey");

			Statement st;
			try {
				Class.forName(driver).newInstance();
				conn = DriverManager.getConnection(url+dbName,userName,password);
				System.out.println("Connected to the database");
               // eid=request.getParameter("eid");
                //history=request.getParameter("history");

              ArrayList al=null;
				ArrayList userList =new ArrayList();
			//	String query = "select * from employee where eid='"+eid+"'";
                String query="select message from senderinfo where messagekey='"+messagekey+"'";
				System.out.println("query " + query);
				st = conn.createStatement();
				ResultSet  rs = st.executeQuery(query);
		         	while(rs.next())
				{
         		  al  = new ArrayList();
                  al.add(rs.getString(1));
				  userList.add(al);
				request.setAttribute("userList",userList);
                String nextJSP = "/showhistorymain.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
                dispatcher.forward(request,response);

                }
                 }
                catch(Exception ewe)
                {
                out.println("<center><br><br><br><br><br><h1><blink><font color=#000066>"+"No datas available..."+"</font></blink></h1></p></center>");
               }

               }

}