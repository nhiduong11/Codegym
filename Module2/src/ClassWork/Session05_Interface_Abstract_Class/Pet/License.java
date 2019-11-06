package ClassWork.Session05_Interface_Abstract_Class.Pet;

import java.util.Date;

public class License{
    public int id;
    public Date dob;

    public License() {
    }

    public License(int id, Date dob) {
        this.id = id;
        this.dob = dob;
    }

    public int setId(int id) {
        this.id = id;
        return id;
    }
    public int getId() {
        return id;
    }

    public Date setDob(Date dob) {
        this.dob = dob;
        return dob;
    }
    public Date getDob() {
        return dob;
    }
}
