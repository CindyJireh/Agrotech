<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <title>Agrotech - Cultivos</title>
    </head>

    <body>
        <!--MENÚ-->
        <header class="header">
            <font  face="Century Gothic" size=3>
            <div class="fixed-top" >
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
                    <!-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark   sticky-top" -->
                    <a class="text-center" class="navbar-brand"href="../Jsp/AInicio.jsp"><img src="../Imgs/agrotechs.png"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" 
                            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">

                        <div class="navbar-nav w-100 justify-content-around">
                         

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
            </div>
            </font>
        </header><br><br><br>
        <!--FIN DEL MENÚ-->


       <font color="Olive" face="Century Gothic,arial" >
        <h1 class="text-center" ><b>Cultivos</b></h1> </font>

         <!--AGROFORO-->    
    <section> 
        <div class="h1 w-100 justify-content-center">
            <div class="btn-flotantex">
                <div class="fixed-bottom">
                    <a href="../Jsp/Preguntas.jsp" target="_blank">
                        <img src="../Imgs/foro.png" alt="">
                    </a>
                </div>
            </div>
        </div> </section>


    <!--FIN DEL AGROFORO-->    

        <!--PIE DE PAG-->  
        <footer>
            <div id="piesep" >
                <div class="content bg-success">
                </div>
            </div>
            <div id="pie" >
                <div class="container">
                    <font face="Century Gothic">
                    <h1 class="h4">Software Agrotech</h1>
                    <h3 class="h6">Equipo de desarrollo
                        <h3 class="h6">Estudiantes de la Universidad de Cundinamarca - Sede Fusagasugá</h3><br>
                        <h3 class="h6">Ruth Catherine Acosta Macana
                            <h3 class="h6"> Mónica Yisel Beltrán Gómez 
                                <h3 class="h6"> Cindy Jireh Gianine Pachón</h3><br>
                                <h3 class="h6">Noviembre del 2020</h3><br>
                                </font>

                                </div>
                                </div>     
                                </footer>
     </body>
    </html>
