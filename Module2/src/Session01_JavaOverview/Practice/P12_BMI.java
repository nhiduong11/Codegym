package Session01_JavaOverview.Practice;

import java.util.Scanner;

public class P12_BMI {
    public static void main(String[] args) {
        double weight;
        double height;
        Scanner input = new Scanner(System.in);
        System.out.print("Enter your weight: ");
        weight = input.nextDouble();
        System.out.print("Enter your height: ");
        height = input.nextDouble();

        double bmi;
        bmi = weight / Math.pow(height , 2);

        if (bmi < 18)
            System.out.printf("%-20.2f%s", bmi, "Underweight");
        else if (bmi < 25.0)
            System.out.printf("%-20.2f%s", bmi, "Normal");
        else if (bmi < 30.0)
            System.out.printf("%-20.2f%s", bmi, "Overweight");
        else
            System.out.printf("%-20.2f%s", bmi, "Obese");
        System.out.printf("%-20s%s", "bmi", "Interpretation\n");
    }
}
