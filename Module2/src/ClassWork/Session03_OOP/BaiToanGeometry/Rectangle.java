package ClassWork.Session03.BaiToanGeometry;

public class Rectangle {
    private double height;
    private double width;

    public Rectangle(double height, double width) {
        this.width = width;
        this.height = height;
    }

    public double getArea() {
        System.out.print("Area of the Rectangle is: ");
        return this.height * this.width;
    }

    public void draw() {
        System.out.println("Draw the Rectangle");
        for (int i = 0; i < this.height; i++) {
            for (int j = 0; j < this.width; j++) {
                System.out.print("*");
            }
            System.out.print("\n");
        }
    }
}
