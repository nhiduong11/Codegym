package ClassWork.Session03.BaiToanGeometry;

public class Circle {
    private double radius;

    public Circle (double radius) {
        this.radius = radius;
    }

    public double getArea() {
        System.out.print("Area of the Circle is: ");
        return this.radius * Math.PI;
    }

    public void draw() {
        System.out.println("Can't draw the Circle!");
    }
}
