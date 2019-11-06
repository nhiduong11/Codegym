package ClassWork.Session03.BaiToanGeometry;

public class Main {
    public static void main(String[] args) {
        Geometry geometry = new Geometry(new Rectangle(5,4), new Square(3), new Circle(6));

        geometry.draw();
        System.out.println(geometry.getRectangle().getArea());
        System.out.println(geometry.getSquare().getArea());
        System.out.println(geometry.getCircle().getArea());
    }
}
