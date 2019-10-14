package Session1_JavaOverview.Practice;

import java.util.Scanner;

public class P10_UocChungLonNhat {
    public static void main(String[] args) {
        int a, b;
        Scanner input = new Scanner(System.in);
        System.out.println("Enter a: ");
        a = input.nextInt();
        System.out.println("Enter b: ");
        b = input.nextInt();

        //hàm abs() để trả về giá trị tuyệt đối (phần dương) của a, b
        a = Math.abs(a);
        b = Math.abs(b);

        //Kiểm tra a, b có bằng 0 hay không
        if (a == 0 || b == 0)
            System.out.println("No greatest common factor");

        //Tìm ước chung
        while (a != b) {
            if (a > b)
                a = a - b;
            else
                b = b - a;
        }
        System.out.println("Greatest common factor: " + a);
    }
}
