
package org.gerdoc;


import java.io.Serializable;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author alumno
 * Alumno: Rodriguez Frias Axel Isaias 
*Grupo: 4IM9
*Fecha: 28/03/2023
 */
public class Datos implements Serializable
{
    private String nombre;
    private float calf;

    public Datos() 
    {
    }

    public String getNombre() 
    {
        return nombre;
    }

    public void setNombre(String nombre) 
    {
        this.nombre = nombre;
    }

    public float getCalf()
    {
        return calf;
    }

    public void setCalf(float calf)
    {
        this.calf = calf;
    }
    
    
    
    
    
}
