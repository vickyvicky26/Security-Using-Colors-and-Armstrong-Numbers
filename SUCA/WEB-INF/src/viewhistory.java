import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;

public class viewhistory extends HttpServlet
{


   public void doPost(HttpServletRequest request, HttpServletResponse response)
                                   throws ServletException,IOException
                                   {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			System.out.println("view message");
			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/";
			String dbName = "suca";
			String driver = "com.mysql.jdbc.Driver";
			String userName = "root";
			String password = "password";
            String kyr=request.getParameter("ky1");
            String kyg=request.getParameter("ky2");
            String kyb=request.getParameter("ky3");

              String ky1=request.getParameter("kyr");
            String ky2=request.getParameter("kyg");
            String ky3=request.getParameter("kyb");

            String refno=request.getParameter("id");
            String key=request.getParameter("key");
            System.out.println(key);
                int r=Integer.parseInt(ky1);
                int g=Integer.parseInt(ky2);
                int b=Integer.parseInt(ky3);
               System.out.println("Keyval "+r+" "+g+" "+b);
                int r1=Integer.parseInt(kyr);
                int g1=Integer.parseInt(kyg);
                int b1=Integer.parseInt(kyb);
              System.out.println("Keyval "+r1+" "+g1+" "+b1);

                int fr=r+r1;
                int fg=g+g1;
                int fb=b+b1;
                System.out.println("Final " +fr+ " " +fg+ " "+fb);

              String username=request.getParameter("username");
            String passWord=request.getParameter("password");

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
                String query="select message from senderinfo where enr='"+ky1+"' and eng='"+ky2+"' and enb='"+ky3+"' and rxr='"+fr+"' and rxg='"+fg+"' and rxb='"+fb+"' and random='"+refno+"'";
				System.out.println("query " + query);
				System.out.println(key);
				st = conn.createStatement();
				ResultSet  rs = st.executeQuery(query);
		         	if(rs.next())
				{
         		  al  = new ArrayList();
                  al.add(rs.getString(1));
                  al.add(key);

				  userList.add(al);
				request.setAttribute("userList",userList);
                String nextJSP = "/showhistorymain.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
                dispatcher.forward(request,response);

                }
                else
                {
               RequestDispatcher rd=request.getRequestDispatcher("failure.jsp");
                }



                 }
                catch(Exception ewe)
                {
                out.println("<center><br><br><br><br><br><h1><blink><font color=#000066>"+"No datas available..."+"</font></blink></h1></p></center>");
               }

               }

}