package ClassWork.Session03.Exercise_Geometry;

public class Main {
    public static void main(String[] args) {
        Circle circle = new Circle(12);
        Rectangle rectangle = new Rectangle(15, 11);
        Square square = new Square(10);

        Shape shape = new Shape(rectangle, square, circle);

        System.out.println(shape.toString());
        shape.draw();

        shape.setCircle(3);
        shape.setRectangle(9,18);
        shape.setSquare(18);
        System.out.println(shape.toString());
        shape.draw();
    }
}