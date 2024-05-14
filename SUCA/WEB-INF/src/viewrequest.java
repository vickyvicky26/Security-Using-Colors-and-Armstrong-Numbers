import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;

public class viewrequest extends HttpServlet
{

   public void doPost(HttpServletRequest request, HttpServletResponse response)
                                   throws ServletException,IOException{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			System.out.println("View all");
			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/";
			String dbName = "suca";
			String driver = "com.mysql.jdbc.Driver";
			String userName = "root";
			String password = "password";
            String eid = request.getParameter("eid");
            String password1 = request.getParameter("password");

			Statement st;
			try {
				Class.forName(driver).newInstance();
				conn = DriverManager.getConnection(url+dbName,userName,password);
				System.out.println("Connected to the database");

				ArrayList al=null;
				ArrayList userList =new ArrayList();
				String query = "select * from senderinfo where receiveruser='"+eid+"' && receiverpass='"+password1+"'";
				System.out.println("query " + query);
				st = conn.createStatement();
				ResultSet  rs = st.executeQuery(query);


				while(rs.next())
				{
					al  = new ArrayList();

				  //al.add(rs.getString(1));
				  //al.add(rs.getString(2));
				  //al.add(rs.getString(3));
				  //al.add(rs.getString(4));
				  //al.add(rs.getString(5));
				  //al.add(rs.getString(6));
				  //al.add(rs.getString(7));
				  //al.add(rs.getString(8));
				  //al.add(rs.getString(9));
				  //al.add(rs.getString(10));
				  //al.add(rs.getString(11));
 				  al.add(rs.getString(12));
    			  //al.add(rs.getString(13));
 				  //al.add(rs.getString(14));
 				  al.add(rs.getString(16));


				 System.out.println("al :: "+al);
				  userList.add(al);
				}

				request.setAttribute("userList",userList);

                String nextJSP = "/viewall.jsp";
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
				dispatcher.forward(request,response);
				conn.close();
				System.out.println("Disconnected from database");
			} catch (Exception e) {
			e.printStackTrace();
			}
  }
}