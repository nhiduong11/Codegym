package Session05_Interface_Abstract_Class.Test;

public abstract class Geomatric {
    private String name;
    public Geomatric(String name) {
        this.name = name;
    }

    public abstract double getArea();
    public abstract double getPerimeter();
}
