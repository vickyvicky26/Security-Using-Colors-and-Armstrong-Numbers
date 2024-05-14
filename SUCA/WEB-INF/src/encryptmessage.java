import java.io.*;
class encryptmessage
{
public static void main(String args[])
{
//BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
//System.out.println("Please enter number:");
String message="CRYPTOGRAPHY";
        char[] messagechar = message.toCharArray();
        int len=message.length();
        int nocol=len/3;
        int encodematrix[][] = {{1,5,3}, {1,25,9}, {1,125,27}};
        int messagematrix[][];

        int er,ec; //encode  matrix row & column
        int mr,mc; //message matrix row & column

        for(int i=0;i<len;i++)
        {
        System.out.println(messagechar[i]);
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


        for(er=0;er<3;er++)
        {
        for(ec=0;ec<3;ec++)
        {
        System.out.println(encodematrix[er][ec]);
        }
        System.out.println();
        }

        //for(









}
}