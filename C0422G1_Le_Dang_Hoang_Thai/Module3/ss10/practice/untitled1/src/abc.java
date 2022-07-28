import java.util.ArrayList;
import java.util.List;

public class abc {
    public static void main(String[] args) {
        List<Integer> arr1 = new ArrayList<>();
        int[][] arr = {{1, 2, 8, 43},
                {9, 4, 11, 7},
                {11, 6, 4, 0},
                {1, 2, 6, 51}};
        int[] arr3;
        arr3 = mang2chieuthanh1chieu(arr,4,4);


        for (int i = 0; i < arr3.length; i++) {
                if (arr3[i] >1 && checkNguyenTo(arr3[i])){
                    System.out.println(arr3[i]);

            }
        }

    }
    static boolean checkNguyenTo(int n) {
        if (n <= 2) {
            return true;
        } else {
            for (int i = 2; i <= Math.sqrt(n); i++) {
                if (n % i == 0)
                    return false;
            }
        }
        return true;
    }
    static int[] mang2chieuthanh1chieu(int a[][], int n , int m){
        int size = n*m;
        int[] arr2 = new int[size];
        int k=0;
        for (int i = 0; i < n ; i++) {
            for (int j = 0; j < m; j++) {
                arr2[k++] = a[i][j];
            }
        }
        return arr2;
    }
}