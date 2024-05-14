class MatrixMultiply{

        public static void main(String[]args)

        {

          int array[][] ={{1,5,3},{1,25,9},{1,125,27}};

          int array1[][] ={{68,81,72,81,1,1},{87,107,207,77,1,2},{92,88,92,92,4,8}};



          int x= array.length;
          System.out.print(x);
             int array2[][] = new int[x][6];
          System.out.println("Matrix 1: ");

            for(int i = 0; i <x; i++) {

            for(int j = 0; j <x; j++) {

              System.out.print(" "+ array[i][j]);

            }

          System.out.println();

          }

          int y= array1.length;

          System.out.println(y+"Matrix 2: ");

            for(int i = 0; i <y; i++) {

            for(int j = 0; j <y+3; j++) {

              System.out.print(" "+array1[i][j]);

            }

          System.out.println();

          }

            for(int i = 0; i <x; i++)
            {
            for(int j = 0; j <y+3; j++)
            {
            for(int k = 0; k <3; k++)
            {
                    array2[i][j] +=array[i][k]*array1[k][j];
            }
            }
            }

          System.out.println("Multiply of both matrix : ");

          for(int i = 0; i <x; i++) {

            for(int j = 0; j <y+3; j++) {


              System.out.print(" "+array2[i][j]);

            }

          System.out.println();

          }

        }

      }