package Session1_JavaOverview.Practice;

import java.util.Scanner;

public class P3_rectangleArea {
    public static void main(String[] args) {
        float width;
        float height;
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter width: ");
        width = scanner.nextFloat();

        System.out.println("Enter height: ");
        height = scanner.nextFloat();

        //Rectangle Area
        float area = width * height;
        System.out.println("Area is: " + area);
    }
}

