package PkgControlador;

import java.util.UUID;
import javax.swing.JLabel;
import javax.swing.JOptionPane;


public class Productos {
  
    int idproducto, idtipoproducto, idcultivo;
    String nombreproducto, descripcionproducto;

    public Productos(int idproducto, int idtipoproducto, int idcultivo, String nombreproducto, String descripcionproducto) {
        this.idproducto = idproducto;
        this.idtipoproducto = idtipoproducto;
        this.idcultivo = idcultivo;
        this.nombreproducto = nombreproducto;
        this.descripcionproducto = descripcionproducto;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public int getIdtipoproducto() {
        return idtipoproducto;
    }

    public void setIdtipoproducto(int idtipoproducto) {
        this.idtipoproducto = idtipoproducto;
    }

    public int getIdcultivo() {
        return idcultivo;
    }

    public void setIdcultivo(int idcultivo) {
        this.idcultivo = idcultivo;
    }

    public String getNombreproducto() {
        return nombreproducto;
    }

    public void setNombreproducto(String nombreproducto) {
        this.nombreproducto = nombreproducto;
    }

    public String getDescripcionproducto() {
        return descripcionproducto;
    }

    public void setDescripcionproducto(String descripcionproducto) {
        this.descripcionproducto = descripcionproducto;
    }
    

    


}
