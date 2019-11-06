package ClassWork.Session03.BaiToanGeometry;

public class Geometry {
    private Rectangle rectangle;
    private Square square;
    private Circle circle;

    public Geometry(Rectangle rectangle, Square square, Circle circle) {
        this.rectangle = rectangle;
        this.square = square;
        this.circle = circle;
    }

    public void setRectangle(Rectangle rectangle) {
        this.rectangle = rectangle;
    }
    public void setSquare(Square square) {
        this.square = square;
    }
    public void setCircle(Circle circle) {
        this.circle = circle;
    }

    public Rectangle getRectangle() {
        return rectangle;
    }
    public Square getSquare() {
        return square;
    }
    public Circle getCircle() {
        return circle;
    }

    public void draw() {
        rectangle.draw();
        square.draw();
        circle.draw();
    }

    public double getArea(){
        return rectangle.getArea() +
        square.getArea() +
        circle.getArea();
    }
}
