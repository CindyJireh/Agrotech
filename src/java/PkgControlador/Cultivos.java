package PkgControlador;

public class Cultivos {
    
    int idcultivo;
    String nombrecultivo, resena;

    public Cultivos() {
    }

    public Cultivos(int idcultivo, String nombrecultivo, String resena) {
        this.idcultivo = idcultivo;
        this.nombrecultivo = nombrecultivo;
        this.resena = resena;
    }

    public int getIdcultivo() {
        return idcultivo;
    }

    public void setIdcultivo(int idcultivo) {
        this.idcultivo = idcultivo;
    }

    public String getNombrecultivo() {
        return nombrecultivo;
    }

    public void setNombrecultivo(String nombrecultivo) {
        this.nombrecultivo = nombrecultivo;
    }

    public String getResena() {
        return resena;
    }

    public void setResena(String resena) {
        this.resena = resena;
    }
    
}
