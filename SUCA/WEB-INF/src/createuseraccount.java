   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   public class createuseraccount extends HttpServlet {
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {

        String username= req.getParameter("username");
        String password= req.getParameter("password");
        String r= req.getParameter("r");
        String g= req.getParameter("g");
String b= req.getParameter("b");
        RequestDispatcher rd;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/suca","root","password");
            st = con.createStatement();
            int add=st.executeUpdate("insert into login values('"+username+"','"+password+"','"+r+"','"+g+"','"+b+"')");
            if(add==1)
            {
            rd=req.getRequestDispatcher("updatedsuccess.jsp");
            rd.forward(req,res);
            }
            else
            {
            rd=req.getRequestDispatcher("failure.jsp");
            rd.forward(req,res);
            }


        } catch(Exception e2) {
             rd=req.getRequestDispatcher("failure.jsp");
             rd.forward(req,res);
        }
    }
}