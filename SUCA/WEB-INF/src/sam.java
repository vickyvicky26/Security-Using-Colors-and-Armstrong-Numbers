class sam
{
    public static void main(String args[])
    {
        int initial[]={1,5,3,1,25,9,1,125,27};

        int[] newarray=new int[500];

        for(int m=0;m<9;m++)
        {
        System.out.println(initial[m]);
        }
        String message= "CRYPTOGRAPHYadffdfdfdfdfdfdfddddfdfdfdfdfdfd";

        char[] messagechar =message.toCharArray();
        int len=message.length();
           System.out.println("length"+len);
        for(int i=0;i<len;i++)
        {
        System.out.println(messagechar[i]);
        }

        int newlen=len/9;
        float newlen1=len/9;

         System.out.println("newlen ="+newlen1);
        int j,k=0,x=0;

        System.out.println("start");
        for(j=0;j<=3;j++)
        {
        for(k=0,x=j;k<9;k++,x++)
        {
        newarray[j*9+x]=initial[k];
        System.out.println(newarray[j*9+x]);
        }
        }
        System.out.println("finish");


        int a1,a2;
        for(a1=0;a1<len;a1++)
        {
       System.out.println("Final"+newarray[a1]);
        }



        int p,q;
       int newlength=len-(9*newlen);
        System.out.println("New length"+newlength);


        for(p=9*newlen,q=0;q<newlength;q++,p++)
        {
        newarray[p]=initial[q];
        System.out.println("newval"+newarray[p]);
        }

        for(int r=0;r<len;r++)
        {
        System.out.println(newarray[r]);
        }

    }
}