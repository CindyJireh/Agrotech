<%-- esta es una pagina que hace una relacion directa con el formulario y el bean y automaticamente
innstancia la clase y la va a setear para que quede cargada con la informacion
    Document   : beanICultivo
    Created on : 15/10/2020, 10:14:23 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bean</title>
    </head>
    <body>
        <jsp:useBean id="beanICultivo" scope="session" class="pkgModelo.clsDAOCultivo">
            <jsp:setProperty name="beanICultivo" property="*"/>
            <!-- CODIGO JAVA -->
            <%
              if (beanICultivo.insertar() == false) {
                     System.out.println("se inserto correctamente "); 
                  }
              else{
                  System.out.println("");
              }
  

                %>
    </jsp:useBean>
      
    </body>
</html>
