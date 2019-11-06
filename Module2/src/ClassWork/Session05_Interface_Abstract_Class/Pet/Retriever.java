package ClassWork.Session05_Interface_Abstract_Class.Pet;

public class Retriever extends Dog {
    public Retriever(String name, License license) {
        super(name, license);
    }

    @Override
    public void speak() {
        super.speak();
    }

    public void retriever (Bird bird) {
    }
}
