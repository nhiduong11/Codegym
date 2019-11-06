package ClassWork.Session05_Interface_Abstract_Class.Pet;

public class Dog extends Pet implements ILicensable {

    public Dog(String name, License license) {
        super(name);
    }

    @Override
    public void speak() {
    }

    @Override
    public License getLicense() {
        return null;
    }
}
