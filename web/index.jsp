<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="estilos.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <title>AGROTECH</title>
    </head>
    <body >

        <!--MENÚ-->

        <header class="header">

            <font  face="Century Gothic" size=4>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark   sticky-top">

                <a class="text-center" class="navbar-brand"href="#"><img src="Imgs/agrotechs.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
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



                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                PRODUCTOS
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">PRODUCTOS</a>
                                <a class="dropdown-item" href="cultivo_Frijol.jsp">PUNTOS DE VENTA</a>

                            </div>
                        </li>

                        <a class="nav-item nav-link" href="#"><b>PLAGAS</b></a>
                        <a class="nav-item nav-link" href="#"><b>CLIMA</b></a>

                    </div>
                </div>

            </nav>
            </font>

        </header>
        <!--CARRUSEL-->

        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
            </ol>
            <div class="carrusel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Imgs/morita.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Importancia de obtener conocimientos agricolas sobre el Frijol </h5>



                            <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Imgs/frijol2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Imgs/morita2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>

                    </div>
                    <div class="carousel-item">
                        <img src="Imgs/cargafri2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Imgs/frijol3.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <!--SEPARADOR -->
            <div id="separator-ribbon"  >
                <div class="content ">        
                </div>
            </div>

        </div>
        </font>


        <!--AGROFORO-->    
        <div class="h1 w-100 justify-content-center">
            <div class="btn-flotantex">
                <div class="fixed-bottom">
                    <a href="https://www.google.com" target="_blank">
                        <img src="Imgs/entrevista.png" alt="">
                    </a>
                </div>
            </div>
        </div>    

        <div    >
            <div  id="nosotros">
                <font color="Olive" face="Century Gothic,arial" size=5>
                <h1 align="center"><b>¿Quiénes somos?</b></h1><br>
                <p align="center">Se busca que por medio de plataformas digitales se logre mayor apropiación de los temas agrícolas, 
                    que involucran y competen a la sociedad en general. De igual manera se considera que a través de este proyecto como
                    grupo investigativo y de desarrollo de software compuesto por mujeres, se tenga un mayor reconocimiento del papel de la mujer en la ingeniería.</p>
                </font>
            </div>    
        </div> 


        <!--Tarjetas--> 
        <div  class="tarjetas" >  
            <font color="Olive" face="Century Gothic,arial" >
            <div class="card-deck"><!-- separador de la tarjeta -->
                <div class="card "> <!-- color a la tarjeta            border-warning text-white-->
                    <img src="Imgs/logoU4.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Estudiantes UDEC</h5>
                        <p class="card-text">Somos estudiantes de Ingenieria de Sistemas de la universidad de Cundinamarca de fusagasugá.</p>
                    </div>
                    <div class="card-footer ">
                        <small class="text-muted">actualizado hace 2 dias </small>
                    </div>
                </div>
                <div class="card">
                    <img src="Imgs/Fusa.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Vereda Batan Bajo</h5>
                        <p class="card-text">este proyecto se centra principalmente en la zona rural de fusagasuga,en la vereda Batan Bajo.Donde los campesinos 
                            de esta region en su mayoria cultivan mora y frijol,por lo cual decidimos centrarnos en estos dos cultivos.</p>
                    </div>
                    <div class="card-footer ">
                        <small class="text-muted">ACTUALIZACION HACE 2 SEMANAS</small>
                    </div>
                </div>
                <div class="card">
                    <img src="Imgs/campesino.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small> 
                    </div>
                </div>
            </div>

            </font>
        </div>
    </body>
</html>



