package Session1_JavaOverview.Exercise;

import java.util.Scanner;

public class Ex1_Greeting {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter your name: ");
        String name = scanner.nextLine();

        System.out.println("Hello, " + name);
    }
}

