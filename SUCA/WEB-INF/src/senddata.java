   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.util.*;
   public class senddata extends HttpServlet
   {
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
    HttpSession sn=null;
   // PrintWriter out=null;


    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException
     {
        //response.setContentType("text/html");
        PrintWriter pw = res.getWriter();
        res.setContentType("text/html");
        pw = res.getWriter();

        HttpSession sn = req.getSession(true);
        String rxr= req.getParameter("rxr");
        String rxg= req.getParameter("rxg");
        String rxb= req.getParameter("rxb");

        String kyr= req.getParameter("kyr");
        String kyg= req.getParameter("kyg");
        String kyb= req.getParameter("kyb");

        String enr= req.getParameter("enr");
        String eng= req.getParameter("eng");
        String enb= req.getParameter("enb");
        String messagekey= req.getParameter("messagekey");

        String username= req.getParameter("username");
        String password= req.getParameter("password");

        System.out.println("Encryption process ");
        String message= req.getParameter("message");

        char[] messagechar = message.toCharArray();
        int len=message.length();
        System.out.println("Message length"+len);
       RequestDispatcher rd;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/suca","root","password");
            if(messagekey.equals("153"))
            {
            st = con.createStatement();
            Random generator = new Random();
            int r = generator.nextInt(9999);
            String ran="MA"+r;

            int array2[][]={{1,5,3},{1,25,9},{1,125,27}};
          double a=Math.ceil(len/3f);
            int b=(int)a;
           System.out.println("Total No of column= " +b);
           int array1[][] = new int[3][b];
          int ans[][]= new int[3][b];
          int ans1[][]= new int[3][b];
           for(int i=0;i<len;i++)
        {
        System.out.println("Array values "+messagechar[i]);
        } int[] ascii;
        ascii = new int[1000];
        for(int i=0;i<len;i++)
        {
        int j=messagechar[i];
        ascii[i]=j;
        System.out.println(ascii[i]);
        }
         //******************************************
		int a1[]={1,5,3,1,25,9,1,125,27};
        int b1[]=new int[200];
		int x=0,y=0;
        for(x=0;x<len;x++)
        {
            b1[x]=a1[y];
            y++;
            if(y==9)
            y=0;
            System.out.println(b1[x]);
        }
 		   int mulans[]=new int[200];
          for(x=0;x<len;x++)
        {
           mulans[x]= b1[x]+ascii[x];
            y++;
            if(y==9)
            y=0;
            System.out.println(mulans[x]);
        }


	//****************************************************




		  for (int row = 0; row <b; row++)
               {
           for (int column = 0; column < 3; column++)
           {
           array1[column][row]=mulans[row * 3 + column];
         System.out.println(array1[column][row]);
         System.out.println(column + ", " + row + ": " + mulans[row * 3+ column]);
        }
      }
              FileWriter fstream = new FileWriter("calculate.txt",true);
        BufferedWriter out1 = new BufferedWriter(fstream);
           //multiplication of both matrix
            for(int i = 0; i <3; i++)
            {
            for(int j = 0; j <b; j++)
            {
            for(int k = 0; k <3; k++)
            {
            ans[i][j] +=array2[i][k]*array1[k][j];
            out1.write(ans[i][j]);
             //out1.newLine();
            }}}
            out1.close();

              for(int i = 0; i <3; i++) {
            for(int j = 0; j <b; j++) {
            System.out.print(" "+ans[i][j]);
            }System.out.println();}
             rs = st.executeQuery("select * from login where color1='"+rxr+"' && color2='"+rxg+"'&& color3='"+rxb+"'");

            while(rs.next())
			{
            int add=st.executeUpdate("insert into senderinfo values('"+rxr+"','"+rxg+"','"+rxb+"','"+kyr+"','"+kyg+"','"+kyb+"','"+enr+"','"+eng+"','"+enb+"','"+message+"','"+messagekey+"','"+username+"','"+password+"','"+rs.getString(1)+"','"+rs.getString(2)+"','"+ran+"')");
            pw.println("<Center><br><br><br><br><br><b><font size=40>Encrypted Message is : ");

           for(int i = 0; i <3; i++)
           {
            for(int j = 0; j <b; j++)
            {

               ans1[i][j]= ans[i][j];
             pw.println(ans[i][j]);
            }

            }
            pw.println("</font><br><a href=index.html target=_self >Home</a>");
        }

        }

    //---------------------------------------------------------------------
       else if(messagekey.equals("360"))
            {
            st = con.createStatement();
                 Random generator = new Random();
            int r = generator.nextInt(9999);
            String ran="MA"+r;

            int array2[][]={{3,6,0},{9,36,0},{27,216,0}};

               double a=Math.ceil(len/3f);
            int b=(int)a;
           System.out.println("Total No of column= " +a);
           int array1[][] = new int[3][b];
          int ans[][]= new int[3][b];
          for(int i=0;i<len;i++)
        {
        System.out.println("Array values "+messagechar[i]);
        }


        int[] ascii;
        ascii = new int[1000];

        //int to ascii
        for(int i=0;i<len;i++)
        {
        int j=messagechar[i];
        ascii[i]=j;
        System.out.println(ascii[i]);
        }


         //******************************************
		int a1[]={3,6,0,9,36,0,27,216,0};
        int b1[]=new int[200];
		int x=0,y=0;
        for(x=0;x<len;x++)
        {
            b1[x]=a1[y];
            y++;
            if(y==9)
            y=0;
            System.out.println(b1[x]);
        }
 		   int mulans[]=new int[200];
          for(x=0;x<len;x++)
        {
           mulans[x]= b1[x]+ascii[x];
            y++;
            if(y==9)
            y=0;
            System.out.println(mulans[x]);
        }


	//****************************************************




		  for (int row = 0; row <b; row++)
               {
           for (int column = 0; column < 3; column++)
           {
           array1[column][row]=mulans[row * 3 + column];
         System.out.println(array1[column][row]);
         System.out.println(column + ", " + row + ": " + mulans[row * 3+ column]);
        }
      }

           for(int i = 0; i <3; i++)
            {
            for(int j = 0; j <b; j++)
            {
            for(int k = 0; k <3; k++)
            {
            ans[i][j] +=array2[i][k]*array1[k][j];
            }}}
            //print matrix
            for(int i = 0; i <3; i++) {
            for(int j = 0; j <b; j++) {
            System.out.print(" "+ans[i][j]);
           }System.out.println();}
            rs = st.executeQuery("select * from login where color1='"+rxr+"' && color2='"+rxg+"'&& color3='"+rxb+"'");
            while(rs.next())
			{
            int add=st.executeUpdate("insert into senderinfo values('"+rxr+"','"+rxg+"','"+rxb+"','"+kyr+"','"+kyg+"','"+kyb+"','"+enr+"','"+eng+"','"+enb+"','"+message+"','"+messagekey+"','"+username+"','"+password+"','"+rs.getString(1)+"','"+rs.getString(2)+"','"+ran+"')");
            pw.println("<Center><br><br><br><br><br><b><font size=40>Encrypted Message is : ");
           for(int i = 0; i <3; i++)
           {
            for(int j = 0; j <b; j++)
            {
             pw.println(ans[i][j]);
            }

            }
            pw.println("</font><br><a href=index.html target=_self >Home</a>");
        }

        }
       //------------------------------------------------
        else if(messagekey.equals("371"))
            {
            st = con.createStatement();
             Random generator = new Random();
            int r = generator.nextInt(9999);
            String ran="MA"+r;

            int array2[][]={{3,7,1},{9,49,1},{27,343,512}};

           double a=Math.ceil(len/3f);
            int b=(int)a;
           System.out.println("Total No of column= " +a);
           int array1[][] = new int[3][b];
          int ans[][]= new int[3][b];
        for(int i=0;i<len;i++)
        {
        System.out.println("Array values "+messagechar[i]);
        }
        int[] ascii;
        ascii = new int[1000];

        //int to ascii
        for(int i=0;i<len;i++)
        {
        int j=messagechar[i];
        ascii[i]=j;
        System.out.println(ascii[i]);
        }
         //******************************************
		int a1[]={3,7,1,9,49,1,27,343,512};
        int b1[]=new int[200];
		int x=0,y=0;
        for(x=0;x<len;x++)
        {
            b1[x]=a1[y];
            y++;
            if(y==9)
            y=0;
            System.out.println(b1[x]);
        }
 		   int mulans[]=new int[200];
          for(x=0;x<len;x++)
        {
           mulans[x]= b1[x]+ascii[x];
            y++;
            if(y==9)
            y=0;
            System.out.println(mulans[x]);
        }


	//****************************************************




		  for (int row = 0; row <b; row++)
               {
           for (int column = 0; column < 3; column++)
           {
           array1[column][row]=mulans[row * 3 + column];
         System.out.println(array1[column][row]);
         System.out.println(column + ", " + row + ": " + mulans[row * 3+ column]);
        }
      }
//multiplication of both matrix
            for(int i = 0; i <3; i++)
            {
            for(int j = 0; j <b; j++)
            {
            for(int k = 0; k <3; k++)
            {
            ans[i][j] +=array2[i][k]*array1[k][j];
            }}}

            //print matrix
            for(int i = 0; i <3; i++) {
            for(int j = 0; j <b; j++) {
            System.out.print(" "+ans[i][j]);
            }System.out.println();}
          rs = st.executeQuery("select * from login where color1='"+rxr+"' && color2='"+rxg+"'&& color3='"+rxb+"'");
            while(rs.next())
		{
            int add=st.executeUpdate("insert into senderinfo values('"+rxr+"','"+rxg+"','"+rxb+"','"+kyr+"','"+kyg+"','"+kyb+"','"+enr+"','"+eng+"','"+enb+"','"+message+"','"+messagekey+"','"+username+"','"+password+"','"+rs.getString(1)+"','"+rs.getString(2)+"','"+ran+"')");
          pw.println("<Center><br><br><br><br><br><b><font size=40>Encrypted Message is : ");
           for(int i = 0; i <3; i++)
           {
            for(int j = 0; j <b; j++)
            {
             pw.println(ans[i][j]);
            }

            }
            pw.println("</font><br><a href=index.html target=_self >Home</a>");
        }
        }
    //-------------------------------------------------------------
       else if(messagekey.equals("407"))
            {
            st = con.createStatement();
             Random generator = new Random();
            int r = generator.nextInt(9999);
            String ran="MA"+r;
            int array2[][]={{4,0,7},{16,0,49},{64,0,343}};
           double a=Math.ceil(len/3f);
            int b=(int)a;
           System.out.println("Total No of column= " +a);
           int array1[][] = new int[3][b];
          int ans[][]= new int[3][b];
        for(int i=0;i<len;i++)
        {
        System.out.println("Array values "+messagechar[i]);
        }


        int[] ascii;
        ascii = new int[1000];

        //int to ascii
        for(int i=0;i<len;i++)
        {
        int j=messagechar[i];
        ascii[i]=j;
        System.out.println(ascii[i]);
        }                //input matrix
                       //******************************************
		int a1[]={4,0,7,16,0,49,64,0,343};
        int b1[]=new int[200];
		int x=0,y=0;
        for(x=0;x<len;x++)
        {
            b1[x]=a1[y];
            y++;
            if(y==9)
            y=0;
            System.out.println(b1[x]);
        }
 		   int mulans[]=new int[200];
          for(x=0;x<len;x++)
        {
           mulans[x]= b1[x]+ascii[x];
            y++;
            if(y==9)
            y=0;
            System.out.println(mulans[x]);
        }


	//****************************************************




		  for (int row = 0; row <b; row++)
               {
           for (int column = 0; column < 3; column++)
           {
           array1[column][row]=mulans[row * 3 + column];
         System.out.println(array1[column][row]);
         System.out.println(column + ", " + row + ": " + mulans[row * 3+ column]);
        }
      }




            //multiplication of both matrix
            for(int i = 0; i <3; i++)
            {
            for(int j = 0; j <b; j++)
            {
            for(int k = 0; k <3; k++)
            {
            ans[i][j] +=array2[i][k]*array1[k][j];
            }}}

            //print matrix
            for(int i = 0; i <3; i++) {
            for(int j = 0; j <b; j++) {
            System.out.print(" "+ans[i][j]);
            }System.out.println();}
            rs = st.executeQuery("select * from login where color1='"+rxr+"' && color2='"+rxg+"'&& color3='"+rxb+"'");
            while(rs.next())
			{
            int add=st.executeUpdate("insert into senderinfo values('"+rxr+"','"+rxg+"','"+rxb+"','"+kyr+"','"+kyg+"','"+kyb+"','"+enr+"','"+eng+"','"+enb+"','"+message+"','"+messagekey+"','"+username+"','"+password+"','"+rs.getString(1)+"','"+rs.getString(2)+"','"+ran+"')");
          pw.println("<Center><br><br><br><br><br><b><font size=40>Encrypted Message is : ");
           for(int i = 0; i <3; i++)
           {
            for(int j = 0; j <b; j++)
            {
             pw.println(ans[i][j]);
            }
            }
            pw.println("</font><br><a href=index.html target=_self >Home</a>");
       }}

        //--------------------------------------------------------------------
           else if(messagekey.equals("1634"))
            {
            st = con.createStatement();

             Random generator = new Random();
            int r = generator.nextInt(9999);
            String ran="MA"+r;

            int array2[][]={{1,6,3,4},{1,36,9,16},{1,216,27,64}};

           //column calculation
           double a=Math.ceil(len/3f);
            int b=(int)a;
           System.out.println("Total No of column= " +a);
                 //single to double dimenstional matrix
           int array1[][] = new int[3][b];
          int ans[][]= new int[3][b];
        for(int i=0;i<len;i++)
        {
        System.out.println("Array values "+messagechar[i]);
        }
        int[] ascii;
        ascii = new int[1000];

        //int to ascii
        for(int i=0;i<len;i++)
        {
        int j=messagechar[i];
        ascii[i]=j;
        System.out.println(ascii[i]);
        }                //input matrix
                        //******************************************
		int a1[]={1,6,3,4,1,36,9,16,1,216,27,64};
        int b1[]=new int[200];
		int x=0,y=0;
        for(x=0;x<len;x++)
        {
            b1[x]=a1[y];
            y++;
            if(y==9)
            y=0;
            System.out.println(b1[x]);
        }
 		   int mulans[]=new int[200];
          for(x=0;x<len;x++)
        {
           mulans[x]= b1[x]+ascii[x];
            y++;
            if(y==9)
            y=0;
            System.out.println(mulans[x]);
        }


	//****************************************************




		  for (int row = 0; row <b; row++)
               {
           for (int column = 0; column < 3; column++)
           {
           array1[column][row]=mulans[row * 3 + column];
         System.out.println(array1[column][row]);
         System.out.println(column + ", " + row + ": " + mulans[row * 3+ column]);
        }
      }




            //multiplication of both matrix
            for(int i = 0; i <3; i++)
            {
            for(int j = 0; j <b; j++)
            {
            for(int k = 0; k <3; k++)
            {
            ans[i][j] +=array2[i][k]*array1[k][j];
            }}}
            //print matrix
            for(int i = 0; i <3; i++) {
            for(int j = 0; j <b; j++) {
            System.out.print(" "+ans[i][j]);
            }System.out.println();}
            rs = st.executeQuery("select * from login where color1='"+rxr+"' && color2='"+rxg+"'&& color3='"+rxb+"'");
            while(rs.next())
			{
            int add=st.executeUpdate("insert into senderinfo values('"+rxr+"','"+rxg+"','"+rxb+"','"+kyr+"','"+kyg+"','"+kyb+"','"+enr+"','"+eng+"','"+enb+"','"+message+"','"+messagekey+"','"+username+"','"+password+"','"+rs.getString(1)+"','"+rs.getString(2)+"','"+ran+"')");
                 pw.println("<Center><br><br><br><br><br><b><font size=40>Encrypted Message is : ");
           for(int i = 0; i <3; i++)
           {
            for(int j = 0; j <b; j++)
            {
             pw.println(ans[i][j]);
            }
            }
            pw.println("</font><br><a href=index.html target=_self >Home</a>");
     }}
        else{  pw.println("</font><br>Select Armstrong Number....<a href=index.html target=_self >Home</a>");}
        }
         catch(Exception e2) {
             rd=req.getRequestDispatcher("failure.jsp");
        }
    }
}