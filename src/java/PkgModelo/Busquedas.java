package PkgModelo;

import PkgControlador.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Busquedas {

    private ResultSet resultado;
    private Statement stm;

    public ArrayList<Cultivos> ListarCultivos() { // FUNCION PARA RETORNAR AL COMBOBOX SOBRE PRODUCTOS     
        System.out.println("entro aca");
        ArrayList<Cultivos> Listadecultivos = new ArrayList<>();
        try {
            ConexionBDPostgreSQL con = new ConexionBDPostgreSQL();
            con.conectar();
            String Seleccion = "SELECT * FROM cultivos";
            stm = con.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            resultado = stm.executeQuery(Seleccion);
            resultado.first();
            if (resultado.getRow() > 0) {
                System.out.println("si hay fila");
                do {
                    Cultivos cultivos = new Cultivos();
                    cultivos.setIdcultivo(resultado.getInt("idcultivo"));
                    cultivos.setNombrecultivo(resultado.getString("nombrecomuncultivo"));
                    Listadecultivos.add(cultivos);
                } while (resultado.next());
            }

        } catch (SQLException ex) {
            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Listadecultivos;
    }

    public ArrayList<Tipoproducto> ListarTiposdeproducto() { // FUNCION PARA RETORNAR AL COMBOBOX SOBRE PRODUCTOS     
        ArrayList<Tipoproducto> Listadetiposproducto = new ArrayList<>();
        try {
            ConexionBDPostgreSQL con = new ConexionBDPostgreSQL();
            con.conectar();
            String Seleccion = "SELECT * FROM tipoproducto";
            stm = con.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            resultado = stm.executeQuery(Seleccion);
            resultado.first();
            if (resultado.getRow() > 0) {
                do {
                    Tipoproducto tipo = new Tipoproducto();
                    tipo.setIdtipoproducto(resultado.getInt("idtipoproducto"));
                    tipo.setNombretipoproducto(resultado.getString("nombretipoproducto"));
                    tipo.setDescripcion(resultado.getString("descripcion"));
                    Listadetiposproducto.add(tipo);
                } while (resultado.next());
            }
        } catch (SQLException ex) {
            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Listadetiposproducto;
    }

//    public ArrayList<Medida> MedidaCmbBox() { // FUNCION PARA RETORNAR AL COMBOBOX medida 
//        ArrayList<Medida> Listademedidas = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "SELECT* FROM medida"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    Medida medida = new Medida();
//                    medida.setIdmedida(resultado.getInt("idmedida"));
//                    medida.setNombre(resultado.getString("nombremedida"));
//                    Listademedidas.add(medida);
//                } while (resultado.next());
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listademedidas;
//    }
//
//    public ArrayList<TipoArticulo> TipoArticuloCmbBox() { // FUNCION PARA RETORNAR AL COMBOBOX medida 
//        ArrayList<TipoArticulo> Listadetipos = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "SELECT* FROM tipoarticulo"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    TipoArticulo tipos = new TipoArticulo();
//                    tipos.setIdtipoarticulo(resultado.getInt("idtipoarticulo"));
//                    tipos.setNombre(resultado.getString("nombre"));
//                    Listadetipos.add(tipos);
//                } while (resultado.next());
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listadetipos;
//    }
//
//    public ArrayList<Proveedor> ProveedorCmbBox() { // FUNCION PARA RETORNAR AL COMBOBOX medida 
//        ArrayList<Proveedor> Listadeproveedores = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "SELECT* FROM proveedor"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    Proveedor prov = new Proveedor();
//                    prov.setIdproveedor(resultado.getInt("idproveedor"));
//                    prov.setNombre(resultado.getString("nombre"));
//                    Listadeproveedores.add(prov);
//                } while (resultado.next());
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listadeproveedores;
//    }
//
//    public ArrayList<Clientes> ClienteCmbBox() { // FUNCION PARA RETORNAR AL COMBOBOX medida 
//        ArrayList<Clientes> Listadeclientes = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "SELECT* FROM clientes"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    Clientes cli = new Clientes();
//                    cli.setIdcliente(resultado.getString("idcliente"));
//                    cli.setNombreuno(resultado.getString("nombreuno"));
//                    cli.setNombredos(resultado.getString("nombredos"));
//                    cli.setApellidouno(resultado.getString("apellidouno"));
//                    cli.setApellidodos(resultado.getString("apellidodos"));
//                    Listadeclientes.add(cli);
//                } while (resultado.next());
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listadeclientes;
//    }
//
//    public ArrayList<Empleados> ListaEmpleados() { //FUNCION PARA TRAER CC PARA EL  GMAIL
//        ArrayList<Empleados> listaemple = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "SELECT idvendedor,email,usuario,contrasena,idcargo, nombreuno, nombredos, apellidouno, apellidodos FROM vendedor"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    Empleados empleado = new Empleados();
//                    empleado.setIdvendedor(resultado.getString("idvendedor"));
//                    empleado.setEmail(resultado.getString("email"));
//                    /* */ empleado.setUsuario(resultado.getString("usuario"));
//                    /* */ empleado.setContraseña(resultado.getString("contrasena"));
//                    empleado.setIdcargo(resultado.getInt("idcargo"));
//                    empleado.setNombreuno(resultado.getString("nombreuno"));
//                    empleado.setNombredos(resultado.getString("nombredos"));
//                    empleado.setApellidouno(resultado.getString("apellidouno"));
//                    empleado.setApellidodos(resultado.getString("apellidodos"));
//                    listaemple.add(empleado);
//                } while (resultado.next());
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return listaemple;
//    }
//
//    public ArrayList<Empleados> Gmail(String CC) { //FUNCION PARA TRAER CC PARA EL  GMAIL        
//        ArrayList<Empleados> GMAIL = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select  email from vendedor  where idvendedor='" + CC + "'"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return GMAIL;
//    }
//
//    
//    public String gmail_cliente(String CC) { //FUNCION PARA TRAER CC PARA EL  GMAIL        
//       String correo = null;
//        try {
//            Conexion Conexion = new Conexion(); //
//            
//            String Seleccion = "select  email from clientes  where idcliente='" + CC + "'"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//          
//             correo=resultado.getString("email");
//        
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return correo;
//    }
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    String IdEmple;
//
//    public String idempleado(String usuario) { //FUNCION PARA TRAER idempleado        
//        // ArrayList<Empleados> id = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select  idvendedor from vendedor  where usuario='" + usuario + "'"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            //while (resultado.next()) {
//            IdEmple = resultado.getString("idvendedor");
//            System.out.println("id" + IdEmple);
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return IdEmple;
//    }
//
//    public int Stock(String idarticulo) { //FUNCION PARA TRAER CC PARA EL  GMAIL        
//        try {
//            Productos pro = new Productos();
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select stock from articulo where idarticulo=('" + idarticulo + "')";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            pro.setStock(resultado.getInt("stock"));
//            stock = pro.getStock();
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return stock;
//    }
//    int cantidaddev;
//
//    public int Cantidaddev(String nombrecampo, String nombretabla, String nombrellave, int id) { //FUNCION PARA TRAER CC PARA EL  GMAIL        
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select " + nombrecampo + " from " + nombretabla + " where " + nombrellave + "=('" + id + "')";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (nombrecampo == "devolucion" && nombretabla == "compra") {
//                Compra com = new Compra();
//                com.setCantidaddedevoluciones(resultado.getInt("stock"));
//                cantidaddev = com.getCantidaddedevoluciones();
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return cantidaddev;
//    }
//    //ACÁ ES DONDE SE VAN A OBTENER LOS ÚLTIMOS ID INT DE LAS TABLAS
//    //venta, compra, detalleventa, movimientos
//    int idcomponente;
//
//    public int Obtenerid(String nombretabla, String nombrecampo) {
//        try {
//            Conexion Conexion = new Conexion();
//            String Seleccion = "select " + nombrecampo + " from " + nombretabla;
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            while (resultado.next()) {
//                if (nombrecampo == "idmovimiento") {
//                    idcomponente = Integer.parseInt(resultado.getString(1));
//                }
//                if (nombrecampo == "idcompra") {
//                    idcomponente = Integer.parseInt(resultado.getString(1));
//                }
//                if (nombrecampo == "iddetalle") {
//                    idcomponente = Integer.parseInt(resultado.getString(1));
//                }
//                if (nombrecampo == "idventa") {
//                    idcomponente = Integer.parseInt(resultado.getString(1));
//                }
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return idcomponente;
//    }
//
//    public ArrayList<Productos> Infoarticulo(String idarticulo) {
//        ArrayList<Productos> Listadeproductos = new ArrayList<>();
//        System.out.println("El id que aca llego fue " + idarticulo);
//        try {
//            Conexion Conexion = new Conexion(); //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery("select * from articulo where idarticulo=('" + idarticulo + "')");
//            if (resultado.next()) {
//                do {
//                    Productos pro = new Productos();
//                    pro.setIdarticulo(resultado.getString("idarticulo"));
//                    pro.setNombrearticulo(resultado.getString("nombrearticulo"));
//                    pro.setIdtipoparticulo(resultado.getInt("idtipoarticulo"));
//                    pro.setIdMedida(resultado.getInt("idmedida"));
//                    pro.setValortotal(resultado.getFloat("valortotal"));
//                    pro.setPreciounitventa(resultado.getFloat("preciounitoventa"));
//                    pro.setStock(resultado.getInt("stock"));
//                    pro.setCantmin(resultado.getInt("cantmin"));
//                    pro.setCantmax(resultado.getInt("cantmax"));
//                    Listadeproductos.add(pro);
//                } while (resultado.next());
//
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listadeproductos;
//    }
//
////Cindy Nuevoooooooooooooooooooooooooooooooooooo
//    String obtener;
//
//    public String ObtenerDato(int id, String nombretabla, String nombrecampo, String llave) {
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select " + nombrecampo + " from " + nombretabla + " where " + llave + " =('" + id + "')";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (nombrecampo == "nombremedida") {
//                Medida m = new Medida();
//                m.setNombre(resultado.getString("nombremedida"));
//                obtener = m.getNombre();
//            }
//            if (nombrecampo == "nombre" && nombretabla == "tipoarticulo") {
//                TipoArticulo tipo = new TipoArticulo();
//                tipo.setNombre(resultado.getString("nombre"));
//                obtener = tipo.getNombre();
//            }
//            if (nombrecampo == "nombre" && nombretabla == "proveedor") {
//                Proveedor pro = new Proveedor();
//                pro.setNombre(resultado.getString("nombre"));
//                obtener = pro.getNombre();
//
//            }
//            if (nombrecampo == "nombrecargo") {
//                Empleados em = new Empleados();
//                em.setNombrecargo(resultado.getString("nombrecargo"));
//                obtener = em.getNombrecargo();
//
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//        return obtener;
//    }
//
//    //Cindy Nuevooooo000000000000000
//    Float v;
//
//    public Float ConsultarValorTotal(String idarticulo) {
//        try {
//            Productos pro = new Productos();
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select valortotal from articulo where idarticulo=('" + idarticulo + "')";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            pro.setValortotal(resultado.getInt("valortotal"));
//            v = pro.getValortotal();
//
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//        return v;
//    }
//    //Cambios 07/04/2020  Cindy
//
//    public ArrayList<Compra> ComprasCmbBox(String idarticulo) {
//        ArrayList<Compra> Listadecompras = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "SELECT * FROM compra where idarticulo=('" + idarticulo + "')"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    Compra com = new Compra();
//                    com.setIdcompra(resultado.getInt("idcompra"));
//                    com.setIdproveedor(resultado.getInt("idproveedor"));
//                    com.setIdarticulo(resultado.getString("idarticulo"));
//                    com.setFechacompra(resultado.getString("fechacompra"));
//                    com.setCantidad(resultado.getInt("cantidad"));
//                    com.setPreciounitcompra(resultado.getFloat("preciounitcompra"));
//                    com.setPreciototalcompra(resultado.getFloat("preciototalcompra"));
//                    com.setDescripcioncompra(resultado.getString("descripcioncompra"));
//                    Listadecompras.add(com);
//                } while (resultado.next());
//
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listadecompras;
//    }
//
//    //Cambios 07/05/2020  Cindy
//    public ArrayList<Compra> ObtenerInfoCompra(int idcompra) {
//        ArrayList<Compra> Listainfocompra = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "SELECT * FROM compra where idcompra=('" + idcompra + "')"; //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    Compra com = new Compra();
//                    com.setIdcompra(resultado.getInt("idcompra"));
//                    com.setIdproveedor(resultado.getInt("idproveedor"));
//                    com.setIdarticulo(resultado.getString("idarticulo"));
//                    com.setFechacompra(resultado.getString("fechacompra"));
//                    com.setCantidad(resultado.getInt("cantidad"));
//                    com.setPreciounitcompra(resultado.getFloat("preciounitcompra"));
//                    com.setPreciototalcompra(resultado.getFloat("preciototalcompra"));
//                    com.setDescripcioncompra(resultado.getString("descripcioncompra"));
//                    com.setCantidaddedevoluciones(resultado.getInt("devolucion"));
//                    Listainfocompra.add(com);
//                } while (resultado.next());
//
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listainfocompra;
//    }
//    //Cambios 08/05/2020  Cindy
//    String nombrearticulo;
//
//    public String ConsultarNombreArticulo(String nombrecampo, String nombretabla, String nombrellave, String idarticulo) {
//        try {
//            Productos pro = new Productos();
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select " + nombrecampo + " from " + nombretabla + " where " + nombrellave + "=('" + idarticulo + "')";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            pro.setNombrearticulo(resultado.getString(nombrecampo));
//            nombrearticulo = pro.getNombrearticulo();
//
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//        return nombrearticulo;
//    }
//
//    //Cambio 10(05/2020 - Mofidicación en la función id compra
//    //Cambio 11/05/2020
//    public ArrayList<Filtros> VentasCmbBox(String idarticulo) {
//        ArrayList<Filtros> Listadeventas = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select v.descripcionventa, v.fecha, det.idventa, det.iddetalle from venta v Join detalleventa det ON \n"
//                    + "(v.idventa = det.idventa) where det.idarticulo = '" + idarticulo + "'";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    Filtros fil = new Filtros();
//                    fil.setDescripcionventa(resultado.getString("descripcionventa"));
//                    fil.setFecha(resultado.getDate("fecha"));
//                    fil.setIdventa(resultado.getInt("idventa"));
//                    fil.setIddetalle(resultado.getInt("iddetalle"));
//                    Listadeventas.add(fil);
//                } while (resultado.next());
//
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listadeventas;
//    }
////Cambio 11/05/2020
//
//    public ArrayList<Filtros> ObtenerInfoVenta(String Descripcionventa, int idventa) {
//        ArrayList<Filtros> Listainfoventa = new ArrayList<>();
//        try {
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select  v.fecha, v.idventa, det.iddetalle, det.devolucion, ar.idarticulo, ar.nombrearticulo, cli.nombreuno, cli.apellidouno,  det.cantidad, ar.preciounitoventa,det.preciodetalle, v.preciototal, mov.costopromedioponderado, v.idcliente\n"
//                    + " from venta v Join detalleventa det ON (v.idventa = det.idventa)\n"
//                    + "Join movimientos mov ON (mov.descripcion = v.descripcionventa)\n"
//                    + "Join clientes cli ON (cli.idcliente = v.idcliente)\n"
//                    + "Join articulo ar ON (ar.idarticulo = det.idarticulo)\n"
//                    + "where  v.idventa = +" + idventa + " and mov.descripcion = '" + Descripcionventa + "' and mov.valorentrada is null";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            if (resultado.getRow() > 0) { //
//                do {
//                    Filtros fil = new Filtros();
//                    fil.setFecha(resultado.getDate("fecha"));
//                    fil.setNombrearticulo(resultado.getString("nombrearticulo"));
//                    fil.setNombreuno(resultado.getString("nombreuno"));
//                    fil.setApellidouno(resultado.getString("apellidouno"));
//                    fil.setCantidad(resultado.getInt("cantidad"));
//                    fil.setPreciounitcompra(resultado.getFloat("preciounitoventa"));
//                    fil.setPreciodetalle(resultado.getFloat("preciodetalle"));
//                    fil.setPreciototal(resultado.getFloat("preciototal"));
//                    fil.setCostopromedioponderado(resultado.getFloat("costopromedioponderado"));
//                    fil.setIdcliente(resultado.getString("idcliente"));
//                    fil.setIdventa(resultado.getInt("idventa"));
//                    fil.setIdarticulo(resultado.getString("idarticulo"));
//                    fil.setCantidaddevolucion(resultado.getInt("devolucion"));
//                    fil.setIddetalle(resultado.getInt("iddetalle"));
//                    Listainfoventa.add(fil);
//                } while (resultado.next());
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listainfoventa;
//    }
////Cambio 16/05/2020
//
//    public ArrayList<Empleados> Obtenerinfovendedor(String id) { //FUNCION PARA TRAER CC PARA EL  GMAIL        
//        ArrayList<Empleados> Listainfovendedor = new ArrayList<>();
//        try {
//            Empleados em = new Empleados();
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select v.idvendedor, v.idcargo, ca.nombrecargo, v.nombredos, v.nombreuno, v.apellidouno, v.apellidodos, v.email, v.telefono, v.direccion, v.usuario, v.contrasena\n"
//                    + "from vendedor v Join cargo ca on v.idcargo=ca.idcargo \n"
//                    + "where idvendedor =('" + id + "')";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            do {
//                em.setIdvendedor(resultado.getString("idvendedor"));
//                em.setIdcargo(resultado.getInt("idcargo"));
//                em.setNombreuno(resultado.getString("nombreuno"));
//                em.setNombredos(resultado.getString("nombredos"));
//                em.setApellidouno(resultado.getString("apellidouno"));
//                em.setApellidodos(resultado.getString("apellidodos"));
//                em.setEmail(resultado.getString("email"));
//                em.setTelefono(resultado.getString("telefono"));
//                em.setDireccion(resultado.getString("direccion"));
//                em.setUsuario(resultado.getString("usuario"));
//                em.setContraseña(resultado.getString("contrasena"));
//                em.setNombrecargo(resultado.getString("nombrecargo"));
//                Listainfovendedor.add(em);
//
//            } while (resultado.next());
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listainfovendedor;
//    }
//
//    //Cambios 17/05/2020 Esta es una de las tantas funciones que estab ahaciendo para esa monda
//  /*  public ArrayList<Filtros> Obtenermovimientosvendedores(String id) {       
//        ArrayList<Filtros> Listamovimientosvendedores = new ArrayList<>();
//        
//        System.out.println("iddddddddddddddd"+id);
//        try {
//            Filtros fil = new Filtros();
//            Conexion Conexion = new Conexion(); //
//            String Seleccion = "select  com.idcompra AS Cod, com.fechacompra AS Fecha, com.descripcioncompra AS Descripcion, com.preciototalcompra AS PrecioTotalCompra\n"
//                    + "from vendedor v Join compra com on v.idvendedor=com.idvendedor where v.idvendedor = ('" + id + "') group by com.idcompra\n"
//                    + "UNION\n"
//                    + "select ven.idventa, ven.fecha, ven.descripcionventa, ven.preciototal AS PrecioTotalVenta\n"
//                    + "from vendedor v Join venta ven on v.idvendedor = ven.idvendedor where v.idvendedor = ('" + id + "') group by  ven.idventa\n"
//                    + "UNION\n"
//                    + "select mov.idmovimiento, mov.fecha, mov.descripcion, mov.valorentrada\n"
//                    + "from vendedor v Join movimientos mov on mov.idvendedor=v.idvendedor where v.idvendedor = ('" + id + "') and mov.valorentrada<0 group by  mov.idmovimiento\n"
//                    + "UNION\n"
//                    + "select mov.idmovimiento, mov.fecha, mov.descripcion, mov.valorsalida\n"
//                    + "from vendedor v Join movimientos mov on mov.idvendedor=v.idvendedor where v.idvendedor = ('" + id + "')and mov.valorsalida<0 group by  mov.idmovimiento";
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//            
//            
//            resultado = stm.executeQuery(Seleccion);
//            System.out.println("salio");
//            resultado.first();
//          // do {
//            
//               
//            int codigo=resultado.getInt("Cod");
//          
//        
//                
//               
//                 fil.setAux1(resultado.getInt("Cod"));
//                fil.setAux2(resultado.getDate("Fecha"));
//                fil.setAux3(resultado.getString("Descripcion"));
//                fil.setAux4(resultado.getFloat("PrecioTotalCompra"));
//                
//                
//                
//                Listamovimientosvendedores.add(fil);   
//
//         // } while (resultado.next());
//           
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return Listamovimientosvendedores;
//    }*/
//
//    //Cambios 17/05/3030
//    int cantidad;
//
//    public int CalcularcantidadTrabajo(String nombretabla, String nombrellave, String id, boolean x) {
//        try {
//
//            Conexion Conexion = new Conexion(); //
//            //select count(*) from compra where idvendedor = '103467291073'
//            //          String Seleccion = "select count (*) from " + nombretabla + " where " + nombrellave + "=('" + id + "')";
//            Empleados em = new Empleados();
//            if (nombretabla == "compra" || nombretabla == "venta") {
//                stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//                resultado = stm.executeQuery("select count (*) from " + nombretabla + " where " + nombrellave + "=('" + id + "')");
//                resultado.first();
//                if (nombretabla == "compra") {
//                    em.setCantidadcompras(Integer.parseInt(resultado.getString(1)));
//                    cantidad = em.getCantidadcompras();
//                }
//                if (nombretabla == "venta") {
//                    em.setCantidadventas(Integer.parseInt(resultado.getString(1)));
//                    cantidad = em.getCantidadventas();
//                }
//            }//select count(*) from movimientos where idvendedor = '3902765430' and cantidadentrada<0
////select count(*) from movimientos where idvendedor = '103467291073' and cantidadsalida<0
//            if (nombretabla == "movimientos") {
//                if(x == true){
//                stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//                resultado = stm.executeQuery("select count (*) from " + nombretabla + " where " + nombrellave + "=('" + id + "') and cantidadentrada<0");
//                resultado.first();
//                em.setCantidaddevcompra(Integer.parseInt(resultado.getString(1)));
//                cantidad = em.getCantidaddevcompra();}
//                if(x==false){
//                stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//                resultado = stm.executeQuery("select count (*) from " + nombretabla + " where " + nombrellave + "=('" + id + "') and cantidadsalida<0");
//                resultado.first();
//                em.setCantidaddevventa(Integer.parseInt(resultado.getString(1)));
//                cantidad = em.getCantidaddevventa();}
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return cantidad;
//    }
//
//    //Cambios 17/05/3030
//// FILTRO PARA  VENTAS DEL DIA
//    public ArrayList<Filtros> filtrodia(Date fecha) {
//
//        ArrayList<Filtros> Filtroventasdia = new ArrayList<>();
//        try {
//
//            Conexion Conexion = new Conexion(); //
//
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//
//            String Seleccion = "select v.fecha,v.idventa,ven.nombreuno, ar.nombrearticulo,d.cantidad,ar.preciounitoventa,d.preciodetalle,v.preciototal \n"
//                    + "from venta v \n"
//                    + "Join detalleventa d \n"
//                    + "on v.idventa = d.idventa\n"
//                    + "join articulo ar\n"
//                    + "on d.idarticulo = ar.idarticulo\n"
//                    + "join vendedor ven\n"
//                    + "on v.idvendedor = ven.idvendedor\n"
//                    + "where v.fecha='" + fecha + "'";//
//
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//
//            do {
//                Filtros filtros = new Filtros();
//                filtros.setFecha(resultado.getDate("fecha"));
//                filtros.setIdventa(Integer.parseInt(resultado.getString("idventa")));
//                filtros.setNombrevendedor(resultado.getString("nombreuno"));
//                filtros.setNombrearticulo(resultado.getString("nombrearticulo"));
//                filtros.setCantidad(Integer.parseInt(resultado.getString("cantidad")));
//                filtros.setPreciounitcompra(Float.parseFloat(resultado.getString("preciounitoventa")));
//                filtros.setPreciodetalle(Float.parseFloat(resultado.getString("preciodetalle")));
//                filtros.setPreciototal(Float.parseFloat(resultado.getString("preciototal")));
//                Filtroventasdia.add(filtros);
//
//            } while (resultado.next());
//
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return Filtroventasdia;
//
//    }
//
//    // FILTRO PARA  VENTAS DE LA SEMANA
//    public ArrayList<Filtros> filtrosemana(Date fechauno, Date fechados) {
//
//        ArrayList<Filtros> Filtroventasemana = new ArrayList<>();
//
//        try {
//
//            Conexion Conexion = new Conexion(); //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            String Seleccion = "select v.fecha,v.idventa,ven.nombreuno, ar.nombrearticulo,d.cantidad,ar.preciounitoventa,d.preciodetalle,v.preciototal\n"
//                    + " from venta v \n"
//                    + "join detalleventa d \n"
//                    + " on v.idventa = d.idventa\n"
//                    + " join articulo ar\n"
//                    + "on d.idarticulo = ar.idarticulo\n"
//                    + "join vendedor ven\n"
//                    + "on v.idvendedor = ven.idvendedor\n"
//                    + "where fecha between '" + fechauno + "' and '" + fechados + "'";
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//
//            do {
//                Filtros filtros = new Filtros();
//                filtros.setFecha(resultado.getDate("fecha"));
//                filtros.setIdventa(Integer.parseInt(resultado.getString("idventa")));
//                filtros.setNombrevendedor(resultado.getString("nombreuno"));
//                filtros.setNombrearticulo(resultado.getString("nombrearticulo"));
//                filtros.setCantidad(Integer.parseInt(resultado.getString("cantidad")));
//                filtros.setPreciounitcompra(Float.parseFloat(resultado.getString("preciounitoventa")));
//                filtros.setPreciodetalle(Float.parseFloat(resultado.getString("preciodetalle")));
//                filtros.setPreciototal(Float.parseFloat(resultado.getString("preciototal")));
//                Filtroventasemana.add(filtros);
//
//            } while (resultado.next());
//
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return Filtroventasemana;
//
//    }
//
//    public ArrayList<Filtros> filtrosmes(int mes) {
//
//        ArrayList<Filtros> Filtromes = new ArrayList<>();
//
//        try {
//            Conexion Conexion = new Conexion(); //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            String mesfin = "0" + String.valueOf(mes);
//
//            System.out.println("mmm" + mesfin);
//            String Seleccion = " select v.fecha,v.idventa,ven.nombreuno, ar.nombrearticulo,d.cantidad,ar.preciounitoventa,d.preciodetalle,v.preciototal\n"
//                    + " from venta v \n"
//                    + "join detalleventa d \n"
//                    + "on v.idventa = d.idventa\n"
//                    + "join articulo ar\n"
//                    + "on d.idarticulo = ar.idarticulo\n"
//                    + "join vendedor ven\n"
//                    + "on ven.idvendedor=v.idvendedor\n"
//                    + "\n"
//                    + "    WHERE  TO_CHAR (V.fecha, 'MM') =  '" + mesfin + "'";
//
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            do {
//                Filtros filtros = new Filtros();
//                filtros.setFecha(resultado.getDate("fecha"));
//                filtros.setIdventa(Integer.parseInt(resultado.getString("idventa")));
//                filtros.setNombrevendedor(resultado.getString("nombreuno"));
//                filtros.setNombrearticulo(resultado.getString("nombrearticulo"));
//                filtros.setCantidad(Integer.parseInt(resultado.getString("cantidad")));
//                filtros.setPreciounitcompra(Float.parseFloat(resultado.getString("preciounitoventa")));
//                filtros.setPreciodetalle(Float.parseFloat(resultado.getString("preciodetalle")));
//                filtros.setPreciototal(Float.parseFloat(resultado.getString("preciototal")));
//                Filtromes.add(filtros);
//
//            } while (resultado.next());
//
//        } catch (Exception e) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, e);
//        }
//
//        return Filtromes;
//
//    }
//    //Filtros compra
//
//    public ArrayList<Filtros> filtrosCompra(Date fechauno, Date fechados) {
//
//        ArrayList<Filtros> Filtrocompra = new ArrayList<>();
//
//        try {
//
//            Conexion Conexion = new Conexion(); //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            String Seleccion = "select com.fechacompra, ar.nombrearticulo,com.preciounitcompra,com.cantidad,\n"
//                    + "com.preciototalcompra,pro.nombre,com.descripcioncompra\n"
//                    + "from compra com\n"
//                    + "join proveedor pro\n"
//                    + "on com.idproveedor=pro.idproveedor\n"
//                    + "join articulo ar\n"
//                    + "on com.idarticulo=ar.idarticulo\n"
//                    + "where com.fechacompra between '" + fechauno + "' and '" + fechados + "'";
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//
//            do {
//                Filtros filtros = new Filtros();
//
//                filtros.setFecha(resultado.getDate("fechacompra"));
//                filtros.setNombrearticulo(resultado.getString("nombrearticulo"));
//                filtros.setPreciounitcompra(Float.parseFloat(resultado.getString("preciounitcompra")));
//                filtros.setCantidad(Integer.parseInt(resultado.getString("cantidad")));
//                filtros.setPreciototalcompra(Float.parseFloat(resultado.getString("preciototalcompra")));
//                filtros.setNombreproveedor(resultado.getString("nombre"));
//                filtros.setDescripcioncompra(resultado.getString("descripcioncompra"));
//
//                Filtrocompra.add(filtros);
//
//            } while (resultado.next());
//
//        } catch (SQLException ex) {
//            Logger.getLogger(Busquedas.class
//                    .getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return Filtrocompra;
//
//    }
//    
//   public ArrayList<Kardex> MovimientosKardex(String IDarticulo) {
//        ArrayList<Kardex> movikardex = new ArrayList<>();
//
//        Object Obj1, Obj2, Obj3, Obj4, Obj5, Obj6 = null;
//
//        try {
//
//            Conexion Conexion = new Conexion(); //
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//            String Seleccion = "select  idmovimiento,fecha, descripcion,costopromedioponderado,cantidadentrada,valorentrada,\n"
//                    + "   cantidadsalida,valorsalida,cantidadsaldo,valorsaldo\n"
//                    + "    from movimientos\n"
//                    + "   where idarticulo='" + IDarticulo + "'";
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//
//            do {
//
//                Kardex kardex = new Kardex();
//
//                kardex.setIdmovimiento(Integer.parseInt(resultado.getString("idmovimiento")));
//                kardex.setFecha(resultado.getDate("fecha"));
//                kardex.setDescripcion(resultado.getString("descripcion"));
//
//                kardex.setCostopromedioponderado(Float.parseFloat(resultado.getString("costopromedioponderado")));
//
//                Obj1 = resultado.getString("cantidadentrada");
//                Obj2 = resultado.getString("valorentrada");
//                Obj3 = resultado.getString("cantidadsalida");
//                Obj4 = resultado.getString("valorsalida");
//                Obj5 = resultado.getString("cantidadsaldo");
//                Obj6 = resultado.getString("valorsaldo");
//
//                kardex.setCantidadentrada((String) Obj1);
//                kardex.setValorentrada((String) Obj2);
//                kardex.setCantidadsalida((String) Obj3);
//                kardex.setValorsalida((String) Obj4);
//                kardex.setCantidadsaldo((String) Obj5);
//                kardex.setValorsaldo((String) Obj6);
//
//                movikardex.add(kardex);
//
//            } while (resultado.next());
//
//        } catch (Exception e) {
//            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, e);
//        }
//
//        return movikardex;
//    }
//    
//    
//    //tabla empleados
//   
//      //PASARRRRRRRRRRR ESTOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
//    public ArrayList<Kardex> tablaemple(String IDarticulo) {
//
//        ArrayList<Kardex> movi = new ArrayList<>();
//
//        try {
//
//            Conexion Conexion = new Conexion();
//
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//
//            String Seleccion = "select  com.idcompra AS Cod, com.fechacompra AS Fecha, com.descripcioncompra AS Descripcion, com.preciototalcompra AS PrecioTotalCompra\n"
//                    + " from vendedor v Join compra com on v.idvendedor=com.idvendedor where v.idvendedor = ('" + IDarticulo + "') group by com.idcompra\n"
//                    + " UNION\n"
//                    + " select ven.idventa, ven.fecha, ven.descripcionventa, ven.preciototal AS PrecioTotalVenta\n"
//                    + "  from vendedor v Join venta ven on v.idvendedor = ven.idvendedor where v.idvendedor = ('" + IDarticulo + "') group by  ven.idventa\n"
//                    + "  UNION\n"
//                    + "  select mov.idmovimiento, mov.fecha, mov.descripcion, mov.valorentrada\n"
//                    + "  from vendedor v Join movimientos mov on mov.idvendedor=v.idvendedor where v.idvendedor = ('" + IDarticulo + "') and mov.valorentrada<0 group by  mov.idmovimiento\n"
//                    + "   UNION\n"
//                    + "  select mov.idmovimiento, mov.fecha, mov.descripcion, mov.valorsalida\n"
//                    + " from vendedor v Join movimientos mov on mov.idvendedor=v.idvendedor where v.idvendedor = ('" + IDarticulo + "')and mov.valorsalida<0 group by  mov.idmovimiento";
//
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//
//            do {
//                Kardex kardex = new Kardex();
//
//                kardex.setCodigoemple(Integer.parseInt(resultado.getString("Cod")));
//                kardex.setFechaemple(resultado.getDate("Fecha"));
//                kardex.setDescripemple(resultado.getString("Descripcion"));
//                kardex.setPreciototalemple(Float.parseFloat(resultado.getString("PrecioTotalCompra")));
//                movi.add(kardex);
//
//            } while (resultado.next());
//
//        } catch (Exception e) {
//        }
//
//        return movi;
//
//    }
//
//    public String correoadmi() {
//        String correo = null;
//        try {
//            Conexion Conexion = new Conexion();
//
//            stm = Conexion.getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_READ_ONLY);
//
//            String Seleccion = "select email\n"
//                    + "from vendedor where idcargo=1";
//
//            resultado = stm.executeQuery(Seleccion);
//            resultado.first();
//            do {
//                correo = resultado.getString("email");
//
//            } while (resultado.next());
//
//        } catch (Exception e) {
//        }
//
//        return correo;
}
