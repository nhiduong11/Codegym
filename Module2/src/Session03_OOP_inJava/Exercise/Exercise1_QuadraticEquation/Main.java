package Session03_OOP_inJava.Exercise.Exercise1_QuadraticEquation;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Quadratic Equation Resolver: ax2 + bx + c = 0");
        Scanner input = new Scanner(System.in);
        System.out.print("Input a: ");
        double a = input.nextDouble();
        System.out.print("Input b: ");
        double b = input.nextDouble();
        System.out.print("Input c: ");
        double c = input.nextDouble();
        QuadraticEquation quadraticEquation = new QuadraticEquation(a, b, c);

        System.out.println("Your Quadratic Equation is: " + a + "x2 + " + b +
                "x + " + c + " = 0");
        double delta = quadraticEquation.getDelta();
        if (a == 0) {
            System.out.println("This is Linear Equation");
            if (b == 0) {
                System.out.println("The solution is all x!");
            } else {
                System.out.println("The equation has no roots!");
            }
        } else {
            if (delta == 0) {
                System.out.println("Phương trình có 1 nghiệm kép : x1 = x2 = " + quadraticEquation.getRoot1());
            }
            if (delta > 0) {
                System.out.println("Phương trình có 2 nghiệm: x1 = " + quadraticEquation.getRoot1() +
                        " và x2 = " + quadraticEquation.getRoot2());
            } else {
                System.out.println("The equation has no roots!");
            }
        }
    }
}
