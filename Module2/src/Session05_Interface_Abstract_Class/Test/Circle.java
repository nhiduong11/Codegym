package Session05_Interface_Abstract_Class.Test;

public class Circle extends Geomatric {
    double radius;
    String color;

    public Circle(double radius, String color, String name) {
        super(name);
        this.radius = radius;
        this.color = color;
    }

    @Override
    public double getArea() {
        return 0;
    }

    @Override
    public double getPerimeter() {
        return 0;
    }
}
