   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   public class emplogin extends HttpServlet {
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
            rs = st.executeQuery("select * from login where username='"+eid+"' && password='"+password+"'");
            if(rs.next()) {
                rd=req.getRequestDispatcher("/send.jsp");
            }
            else {
	            rd=req.getRequestDispatcher("/failure.jsp");
	           // out.println("welcome");
	        }
	        rd.forward(req,res);
        } catch(Exception e2) {
            //System.out.println("Exception : "+e2.toString());
              out.println(e2);
        }
    }
}
