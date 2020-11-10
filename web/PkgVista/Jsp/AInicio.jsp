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
        <title>Agrotech</title>
    </head>

    <body >

        <!--MENÚ-->
        <header class="header">
            <font  face="Century Gothic" size=3>
            <div class="fixed-top" >
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
                    <!-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark   sticky-top" -->
                    <a class="text-center" class="navbar-brand"href="../Jsp/AInicio.jsp"><img src="../Imgs/centroblanco.png"></a>
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
                        <img src="../Imgs/morita.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Importancia de obtener conocimientos agrícolas sobre el Frijol </h5>



                            <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../Imgs/frijol2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../Imgs/morita2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>

                    </div>
                    <div class="carousel-item">
                        <img src="../Imgs/cargafri2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../Imgs/frijol3.png" class="d-block w-100" alt="...">
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
            <!--FIN DEL SEPARADOR -->
        </div>
        </font>


        <!--QUIENES SOMOS -->
        <br>
        <br>
        <div>
            <div  id="nosotros">
                <font color="Olive" face="Century Gothic,arial" size=5>
                <h1 align="center"><b>¿Quiénes somos?</b></h1>
                <!-- <p align="center">Se busca que por medio de plataformas digitales se logre mayor apropiación de los temas agrícolas, 
                     que involucran y competen a la sociedad en general. De igual manera se considera que a través de este proyecto como
                     grupo investigativo y de desarrollo de software compuesto por mujeres, se tenga un mayor reconocimiento del papel de la mujer en la ingeniería.</p>-->
                </font>
            </div>    
        </div> 
        <!--FIN DE QUIENES SOMOS -->


        <!--TARJETAS--> 
        <div  class="tarjetas" >  
            <font color="Olive" face="Century Gothic,arial" >
            <div class="card-deck"><!-- separador de la tarjeta -->
                <div class="card "> <!-- color a la tarjeta            border-warning text-white-->
                    <img src="../Imgs/logoU4.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Estudiantes UDEC</h5>
                        <p class="card-text">Somos un equipo de trabajo conformado por estudiantes de Ingeniería de Sistemas de la Universidad de Cundinamarca sede de 
                            Fusagasugá, actualmente curzamos sexto semestre.</p>
                    </div>
                    <div class="card-footer ">
                        <small class="text-muted">Última actualización: 02 de Noviembre del 2020</small>
                    </div>
                </div>
                <div class="card">
                    <img src="../Imgs/Fusa.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Vereda Batán Bajo - Fusagasugá</h5>
                        <p class="card-text">Esta 1ra versión del proyecto se centró en la zona rural de Fusagasugá ubicada en la Vereda Batán Bajo, zona
                            donde es común que los campesinos en su mayoria cultiven Mora y Fríjol; por lo cual decidimos tomar estos cultivos como referencia.</p>
                    </div>
                    <div class="card-footer ">
                        <small class="text-muted">Última actualización: 02 de Noviembre del 2020</small>
                    </div>
                </div>
                <div class="card">
                    <img src="../Imgs/campesino.jpg" class="card-img-top" alt="...">
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

        <!-- FIN TARJETAS--> 

        <!--MISION Y VISION-->
        <section>
            <div class="container">
                <div class="row" id="mision" >
                    <div class="col-md-6" >
                        <img src="../Imgs/mision.jpg" class="img-fluid" alt="laptop">
                    </div>
                    <div class="col-md-6" style= "margin:50px 0;"> 
                        <br><br><br>
                        <font color="Olive" face="Century Gothic,arial" >
                        <h2 class="text-center"><b>Misión</b>  </h2></font>
                        <h5 class="text-center">
                            Crear un aplicativo web que intervenga como una herramienta de apoyo para agricultores, profesionales del agro o personas que deseen incursionar en este medio; teniendo en cuenta variables como características del cultivo, plagas, productos recomendados, clima y demás elementos relacionados a los cultivos a profundizar (Mora y fríjol). 
                        </h5>
                    </div>
                </div>

                <div class="row" id="vision" >
                    <div class="col-md-6" >                       
                        <font color="Olive" face="Century Gothic,arial" >   
                        <br><br><br>
                        <h2 class="text-center"><b>Visión</b>  </h2></font>
                        <h5 class="text-center">
                            Se pretende que el aplicativo web Agrotech tenga un mayor alcance, haciendo partícipes cultivos no solo del municipio de Fusagasugá sino de la región del Sumapaz, generando una mayor cobertura de la propuesto para así mismo adquirir un papel cada vez mas relevante en la zona. 
                        </h5>

                    </div>
                    <div class="col-md-6" >                      
                        <img src="../Imgs/vision.jpg" class="img-fluid" alt="laptop">
                    </div>
                </div>

            </div>
        </section>
        <!--FIN DE MISION Y VISION-->


        <!--AGROFORO-->    
        <div class="h1 w-100 justify-content-center">
            <div class="btn-flotantex">
                <div class="fixed-bottom">
                    <a href="../Jsp/Preguntas.jsp" target="_blank">
                        <img src="../Imgs/foro.png" alt="">
                    </a>
                </div>
            </div>
        </div>    

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
                    <h3 class="h6">Equipo de desarrollo</h3>
                    <h3 class="h6">Estudiantes de la Universidad de Cundinamarca - Sede Fusagasugá</h3><br>
                    <h3 class="h6">Ruth Catherine Acosta Macana</h3>
                    <h3 class="h6"> Mónica Yisel Beltrán Gómez </h3>
                    <h3 class="h6"> Cindy Jireh Gianine Pachón</h3><br>
                    <h3 class="h6">Noviembre del 2020</h3><br>
                    </font>

                </div>
            </div>     
        </footer>
        <!--FIN DEL PIE DE PAG--> 

    </body>
</html>



