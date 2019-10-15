package Session3_OOP_inJava.Practice.P1_RectangleClass;

import java.util.Scanner;

public class M {
        public static void main(String[] args) {
            Scanner input = new Scanner(System.in);
            System.out.print("Enter the width: ");
            double width = input.nextDouble();
            System.out.print("Enter the height: ");
            double height = input.nextDouble();

            RectangleClass.Rectangle rectangle = new RectangleClass.Rectangle(width, height);
            System.out.println("Your Rectangle \n"+ rectangle.display());
            System.out.println("Perimeter of the Rectangle: "+ rectangle.getPerimeter());
            System.out.println("Area of the Rectangle: "+ rectangle.getArea());
        }
}
