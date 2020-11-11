package PkgControlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionBDPostgreSQL {

    private Connection conexion = null;
    private static final String usuario = "postgres";
    private static final String contraseña = "161218123";
    private String url = "jdbc:postgresql://localhost:5432/agrob";
    private String driverdb = "org.postgresql.Driver";

    public Connection conectar() {
        try {
            Class.forName(driverdb);
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            if (!conexion.isClosed()) {
                System.out.println("Conexión exitosa a BD");
            }
            return conexion;
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ConexionBDPostgreSQL.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public Connection getConnection() {
        return conexion;
    }

}
