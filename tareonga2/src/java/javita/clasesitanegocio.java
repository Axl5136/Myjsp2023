package javita;

/**
 * By Axl5136
 */

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class clasesitanegocio implements Serializable {
    
    private List<javadatos> Lista;

    public clasesitanegocio() {}
    
    public boolean loadLista()
    {
        javadatos datos = null;
        Lista = new ArrayList<>();
        for(int i = 1; i <= 5; i++) {
            datos = new javadatos();
            datos.setGrade((float)(Math.random()*10));
            datos.setName(String.format("Alumno %d", i));
            Lista.add(datos);
        }
        return Lista != null && !Lista.isEmpty();
    }
    
    public List<javadatos> getLista() {
        if(Lista == null || Lista.isEmpty()) {
            if(!loadLista()) {
                return null;
            }
        }
        return Lista;
    }

    public void setLista(List<javadatos> Lista) {
        this.Lista = Lista;
    }
}
