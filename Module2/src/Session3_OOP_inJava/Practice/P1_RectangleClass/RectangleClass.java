package Session3_OOP_inJava.Practice.P1_RectangleClass;

class RectangleClass {
    public static class Rectangle {
        double width, height;

        public Rectangle() {
        }

        Rectangle(double width, double height) {
            this.width = width;
            this.height = height;
        }

        double getArea() {
            return this.width * this.height;
        }

        double getPerimeter() {
            return (this.width + this.height) * 2;
        }

        String display() {
            return "Rectangle{" + "width = " + width + ", height = " + height + "}";
        }
    }
}