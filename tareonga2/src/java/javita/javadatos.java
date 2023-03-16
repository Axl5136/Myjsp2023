package javita;

/**
 * By Axl5136
 */

import java.io.Serializable;

public class javadatos implements Serializable {
    
    private String name;
    private float grade;

    public javadatos() {}
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getGrade() {
        return grade;
    }

    public void setGrade(float grade) {
        this.grade = grade;
    }
}
