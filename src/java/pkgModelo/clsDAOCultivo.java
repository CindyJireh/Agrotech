/*
esta clase es la que manipula y manda para insertar la infromacion por el pip
 */
package pkgModelo;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import pkgControlador.conexionBD;

/**
 *
 * @author Home
 */
public class clsDAOCultivo extends clsCultivo {
   pkgControlador.conexionBD objConecta;

    //public clsDAOCultivo() {
     // objConecta =new pkgControlador.conexionBD();
   // }

    public clsDAOCultivo() {
        objConecta = new pkgControlador.conexionBD();
    }
    public boolean  insertar(){
        String sql="INSERT INTO public.\"Cultivos\"(\n" +
"	nombre, descripcion)\n" +
"	VALUES ('"+super.getNombre()+"', '"+super.getDescripcion()+"')";
      
       try {
           return   objConecta.insertar(sql); // ese insertar es de la clase que tengo en conexionBD
       } catch (SQLException ex) {
           Logger.getLogger(clsDAOCultivo.class.getName()).log(Level.SEVERE, null, ex);
       }
       return true;
        
    }
    
}
