package ClassWork.Session05_Interface_Abstract_Class.Pet;
import java.lang.String;
import java.sql.SQLOutput;
import java.util.Date;

public class Main {
    public static void main(String[] args) {
        Date maxDob =new Date(2018,05,17);
        Dog max = new Dog("Max", new License(103611,maxDob));
        Bird pigeon = new Bird("Pigeon");

//        System.out.println(max.getName());
//        ((Retriever) max).retriever(pigeon);

//        System.out.println(max.getLicense());
        //System.out.println(max.getLicense().toString());

    }
}
