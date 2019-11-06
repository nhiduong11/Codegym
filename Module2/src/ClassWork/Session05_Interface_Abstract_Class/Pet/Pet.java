package ClassWork.Session05_Interface_Abstract_Class.Pet;

public abstract class Pet implements ISpeaking {
    public String name;

    public Pet (String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public void speak() {
    }
}
