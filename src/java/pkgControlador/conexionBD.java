
package pkgControlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author Home
 */
public class conexionBD {
   Connection con; //cargar driver
    Statement st ; // conectarse al motor postgres
    ResultSet rs;// procesar la consulta SQL

    

    public conexionBD() {
        try {
            Class.forName("org.postgresql.Driver");// se carga el driver
            System.out.println("cargo el driver");
        } catch (ClassNotFoundException ex) {
            System.out.println("problemas con  el driver");
            
        }
       try {
           con = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/Agro","postgres","161218123");
           System.out.println("se conecto a la base");
       } catch (SQLException ex) {
             System.out.println("no se pudo conectar");
       }
    }

   
    public boolean insertar (String sql) throws SQLException{
        st=con.createStatement(); // se conecta con la base de datos 
       return st.execute(sql);
        
    }
}


