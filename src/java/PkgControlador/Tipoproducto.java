package PkgControlador;

import java.util.UUID;
import javax.swing.JLabel;
import javax.swing.JOptionPane;


public class Tipoproducto {
  
    int idtipoproducto;
    String nombretipoproducto, descripcion;

    public Tipoproducto() {
    }
   
    
    public Tipoproducto(int idtipoproducto, String nombretipoproducto, String descripcion) {
        this.idtipoproducto = idtipoproducto;
        this.nombretipoproducto = nombretipoproducto;
        this.descripcion = descripcion;
    }

    public int getIdtipoproducto() {
        return idtipoproducto;
    }

    public void setIdtipoproducto(int idtipoproducto) {
        this.idtipoproducto = idtipoproducto;
    }

    public String getNombretipoproducto() {
        return nombretipoproducto;
    }

    public void setNombretipoproducto(String nombretipoproducto) {
        this.nombretipoproducto = nombretipoproducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    


}
