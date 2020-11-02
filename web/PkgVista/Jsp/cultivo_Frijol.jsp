<%-- 
    Document   : cultivo_Frijol
    Created on : 12/10/2020, 11:02:16 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="estiloscul.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <title>AGROTECH FRIJOL</title>
    </head>
    <body class="prueba">


        <!--MENÚ-->
        <header class="header">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark      sticky-top">
                <a class="text-center" class="navbar-brand"href="#"><img src="Imgs/agrotechs.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav w-100 justify-content-around">
                        <a class="nav-item nav-link" href="index.jsp"><b>INICIO</b></a>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                CULTIVOS
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Mora</a>
                                <a class="dropdown-item" href="cultivo_Frijol.jsp">Frijol</a>

                            </div>
                        </li>

                        </li>

                        <a class="nav-item nav-link" href="#"><b>PRODUCTOS</b></a>
                        <a class="nav-item nav-link" href="#"><b>PLAGAS</b></a>
                        <a class="nav-item nav-link" href="#"><b>CLIMA</b></a>
                    </div>
                </div>
            </nav>
            
            
            
            
            <h1>insetar cultivo </h1> <br>
            <form name="fmrCultivo" action="beanICultivo.jsp" target="escritorio"> <!-- pcon  target="escritorio" decimos que esos componentes se carguen en el jframe -->
                nombre<input type="text" name="nombre"/><br>
               descripcion<input type="text" name="descripcion"/><br>
                <input type="submit" value="Insertar >>"/> 
               
            </form>
            <iframe name="escritorio"></iframe> <!-- para que no se recargue la pagina   -->
            
            
            
            
            
            
    </body>
</html>
