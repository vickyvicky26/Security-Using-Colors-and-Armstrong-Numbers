import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;

   public class receiverlogin extends HttpServlet

   {
    String eid="";
    String password="";
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
    HttpSession sn=null;
    PrintWriter out=null;
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        eid = req.getParameter("eid");
        password = req.getParameter("password");
          res.setContentType("text/html");
        out = res.getWriter();
        HttpSession sn = req.getSession(true);
        sn.setAttribute("eid",eid);
        sn.setAttribute("password",password);
        RequestDispatcher rd;

                try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/suca","root","password");
            st = con.createStatement();
            rs = st.executeQuery("select * from senderinfo where receiveruser='"+eid+"' && receiverpass='"+password+"'");
                   ArrayList al=null;
				ArrayList userList =new ArrayList();

             	while(rs.next())
				{
         		 // al  = new ArrayList();
                  //al.add(rs.getString(1));
				  sn.setAttribute("enr",rs.getString(7));
				  sn.setAttribute("eng",rs.getString(8));
				  sn.setAttribute("enb",rs.getString(9));

                  //userList.add(al);
				//req.setAttribute("userList",userList);
                String nextJSP = "/decrypt.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
                dispatcher.forward(req,res);

                }
               // rd=req.getRequestDispatcher("/decrypt.jsp");
              // rd.forward(req,res);
        } catch(Exception e2) {
            //System.out.println("Exception : "+e2.toString());
              out.println(e2);
        }
    }
}