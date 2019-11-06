package ClassWork.Session03.BaiToanGeometry;

public class Square {
    private double side;

    public Square (double side) {
        this.side = side;
    }

    public double getArea() {
        System.out.print("Area of the Square is: ");
        return this.side * this.side;
    }

    public void draw() {
        System.out.println("Draw the Square");
        for (int i = 0; i < this.side; i++){
            for (int j = 0; j < this.side; j++){
                System.out.print("*");
            }
            System.out.print("\n");
        }
    }
}
