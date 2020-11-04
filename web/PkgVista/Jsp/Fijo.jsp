<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <title>AGROTECH</title>
    </head>
  
        <!--MENÚ-->

            <font  face="Century Gothic" size=4>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark   sticky-top">

                <a class="text-center" class="navbar-brand"href="../Jsp/AInicio.jsp"><img src="../Imgs/agrotechs.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" 
                        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">

                    <div class="navbar-nav w-100 justify-content-around">
                        <a class="nav-item nav-link" href="../Jsp/AInicio.jsp"><b>INICIO</b></a>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" 
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <b>CULTIVOS</b> 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#"><b>Mora</b></a>
                                <a class="dropdown-item" href="../Jsp/cultivo_Frijol.jsp"><b>Frijol</b></a>

                            </div>
                        </li>

                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" 
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <b>PRODUCTOS</b>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="../Jsp/Productos.jsp"><b>PRODUCTOS</b></a>
                                <a class="dropdown-item" href="../Jsp/Puntosdeventa.jsp"><b>PUNTOS DE VENTA</b></a>
                            </div>
                        </li>

                        <a class="nav-item nav-link" href="../Jsp/Plagas.jsp"><b>PLAGAS</b></a>
                        <a class="nav-item nav-link" href="../Jsp/Clima.jsp"><b>CLIMA</b></a>

                    </div>
                </div>

            </nav>
            </font>
