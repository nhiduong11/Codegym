package Session03_OOP_inJava.Exercise.Exercise1_QuadraticEquation;


public class QuadraticEquation {
    private double a, b, c;

    public QuadraticEquation() {
    }

    public QuadraticEquation(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public double getA() {
        return this.a;
    }

    public double getB() {
        return this.b;
    }

    public double getC() {
        return this.c;
    }

    //Phương thức trả về Delta = x = b*b-4ac
    public double getDelta() {
        return (Math.pow(b, 2)) - 4 * this.a * c;
    }

    //Phương thức trả về 2 nghiệm của phương trình
    public double getRoot1() {
        double r1;
        return r1 = (-b + Math.pow(getDelta(), 0.5)) / 2 / this.a;
    }

    public double getRoot2() {
        double r2;
        return r2 = (-b - Math.pow(getDelta(), 0.5)) / 2 / this.a;
    }
}
