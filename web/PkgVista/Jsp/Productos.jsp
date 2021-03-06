<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
        <link rel="stylesheet" type="text/css" href="e.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <!--select 2-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" /> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

        <%@page  import = "PkgControlador.*" %>
        <%@page  import = "PkgModelo.*" %>

        <% Busquedas bus = new Busquedas();%>
        <%ArrayList<Cultivos> listacultivo = new ArrayList<>();%>
        <% listacultivo = bus.ListarCultivos();%>

        <%ArrayList<Tipoproducto> listatipos = new ArrayList<>();%>
        <% listatipos = bus.ListarTiposdeproducto();%>
        <% boolean seguir = true;%>

        <title>Agrotech - Productos</title>
    </head>

    <body> 

        <!--MENÚ-->
        <header class="header">
            <font  face="Century Gothic" size=3>
            <div class="fixed-top" >
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
                    <!-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark   sticky-top" -->
                    <a class="text-center" class="navbar-brand"href="../Jsp/AInicio.jsp"><img src="../Imgs/paint.png"></a>
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

                            <a class="nav-item nav-link" href="../Jsp/Plagas.jsp"><b>PLAGAS Y ENFERMEDADES</b></a>
                            <a class="nav-item nav-link" href="../Jsp/Clima.jsp"><b>CLIMA</b></a>

                        </div>
                    </div>

                </nav>
            </div>
            </font>
        </header><br><br><br><br>

        <!--FIN DEL MENÚ--------------------------------------------------------------------------------------------------------->

        <!--DESARROLLO-->
        <font color="Green" face="Century Gothic,arial" >
        <h1 class="text-center" ><b>Productos</b></h1> </font>


        <section>
            <div class="container">
                <form name="f1" method="get" action="#">
                    <!--fila 1 SELECT-->
                    <div class="row" id="selectores" >
                        <!--dropdown con barra cultivos-->
                        <div class="col-md-6" >      
                            <div style="text-align: center;"><br><br>
                                <h5>Seleccione el cultivo a tratar</h5>
                                <select id="mibuscadorcul" name="mibuscadorcul"  style="width: 50%"> 
                                    <option selected></option>
                                    <% for (int i = 0; i < listacultivo.size(); i++) { %>
                                    <option>
                                        <%out.print(listacultivo.get(i).getNombrecultivo());%>                                  
                                    </option> <%}%>                                   
                                </select> 

                            </div>
                        </div>

                        <!--dropdown con barra tipo -->
                        <div class="col-md-6" style= "margin:50px 0;"> 
                            <div style="text-align: center;">
                                <h5>Seleccione el tipo de producto</h5>
                                <select id="mibuscadortip" name="mibuscadortip" style="width: 50%">              
                                    <option selected></option>
                                    <% for (int i = 0; i < listatipos.size(); i++) { %>
                                    <option>
                                        <%out.print(listatipos.get(i).getNombretipoproducto());%>                                  
                                    </option> <%}%>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!--fila 2 BOTÓN-->
                    <div class="row" id="btncnsultar" >
                        <div class="col text-center">   
                            <input type="hidden" name="validar" value="si">
                            <input type="submit" name="submit" id="botonconsultar" value="Consultar" class="btn btn-dark" >
                        </div>   
                    </div>
                </form>
                <%  String cu = request.getParameter("mibuscadorcul");
                    String ti = request.getParameter("mibuscadortip");
                    if ("si".equals(request.getParameter("validar"))) {
                        if (cu == "" || ti == "") {%>
                <br> <h6 class="h6 text-center text-danger m"><b>Debe seleccionar un cultivo y un tipo de producto</b></h6>
                <% } else {%><%--aquí va la consulta filtrada--%>
                <section>
                    <div class="container"><br>
                        <div class="row justifity-content-center" id="mision" >
                            <div class="col-md-6" >
                                <img src="https://como-plantar.com/wp-content/uploads/2020/09/Consejos-a-saber-al-abonar-las-plantas.jpg.webp" class="img-fluid" alt="laptop">
                            </div>
                            <div class="col-md-6" style= "margin:50px 0;"> 

                                <font color="Olive" face="Century Gothic,arial" >
                                <h2 class="text-center"><b>hola</b></h2></font>
                                <h5 class="text-center">
                                    Crear un aplicativo web que intervenga como una herramienta de apoyo para agricultores, profesionales del agro o personas que deseen incursionar en este medio; teniendo en cuenta variables como características del cultivo, plagas, productos recomendados, clima y demás elementos relacionados a los cultivos a profundizar (Mora y fríjol). 
                                </h5>
                            </div>
                        </div>
                </section>   


                <section>
                    <div class="container" id="tarjetas">
                        <div class="row" id="todoslosproductostitulo" >
                            <font color="Green" face="Century Gothic,arial"> 
                            <br> <h2 class="text-left"> <b>Productos de tipo <%=ti + ""%> para <%=cu + ""%> son:</b></h2> </font>
                        </div>
                        <div class="row justifity-content-center" id="todoslosproductos" >
                            <div class="col-md-4" >  
                                <div class="card shadow" style="width: 20rem;">
                                    <div class="inner" id="img-contenedor">
                                        <img class="card-img-top" height="240"src="https://falasbeauty.files.wordpress.com/2014/09/cam00588.jpg" alt="Card image cap"  >
                                    </div>
                                    <div class="card-body text-center">
                                        <h5 class="card-title bg-success text-light" ><b>Nombre del producto</b></h5>
                                        <p class="card-text text-dark">
                                        <h6>Tipo de producto</h6>
                                        <h6>Cultivo</h6>
                                        </p>
                                        <a href="#" class="btn btn-outline-success">Ver más</a>
                                    </div>
                                </div>      
                            </div>
                        </div>
                    </div>

                    <%}%>
                    <%}%>
                </section>
            </div>
        </section><br><br>







        <!--GENERAL-------------------------------------------------------------------------------------------------------------------------------S-->      
        <!--TODOS LOS PRODUCTOS-->       
        <div class="container" id="tarjetas">
            <div class="row" id="todoslosproductostitulo" >
                <font color="Green" face="Century Gothic,arial"> 
                <h2 class="text-left"> <b>Todos los productos</b></h2> </font>
            </div>
            <div class="row justifity-content-center" id="todoslosproductos" >
                <div class="col-md-4" >  
                    <div class="card shadow" style="width: 20rem;">
                        <div class="inner" id="img-contenedor">
                            <img class="card-img-top" height="240"src="https://falasbeauty.files.wordpress.com/2014/09/cam00588.jpg" alt="Card image cap"  >
                        </div>
                        <div class="card-body text-center">
                            <h5 class="card-title bg-success text-light" ><b>Nombre del producto</b></h5>
                            <p class="card-text text-dark">
                            <h6>Tipo de producto</h6>
                            <h6>Cultivo</h6>
                            </p>
                            <a href="#" class="btn btn-outline-success">Ver más</a>
                        </div>
                    </div>      
                </div>
                <div class="col-md-4" >  
                    <div class="card shadow" style="width: 20rem;">
                        <div class="inner" id="img-contenedor">
                            <img class="card-img-top" height="240"src="https://falasbeauty.files.wordpress.com/2014/09/cam00588.jpg" alt="Card image cap"  >
                        </div>
                        <div class="card-body text-center">
                            <h5 class="card-title bg-success text-light" ><b>Nombre del producto</b></h5>
                            <p class="card-text text-dark">
                            <h6>Tipo de producto</h6>
                            <h6>Cultivo</h6>
                            </p>
                            <a href="#" class="btn btn-outline-success">Ver más</a>
                        </div>
                    </div>      
                </div>
                <div class="col-md-4" >  
                    <div class="card shadow" style="width: 20rem;">
                        <div class="inner" id="img-contenedor">
                            <img class="card-img-top" height="240"src="https://falasbeauty.files.wordpress.com/2014/09/cam00588.jpg" alt="Card image cap"  >
                        </div>
                        <div class="card-body text-center">
                            <h5 class="card-title bg-success text-light" ><b>Nombre del producto</b></h5>
                            <p class="card-text text-dark">
                            <h6>Tipo de producto</h6>
                            <h6>Cultivo</h6>
                            </p>
                            <a href="#" class="btn btn-outline-success">Ver más</a>
                        </div>
                    </div>      
                </div>
                <div class="col-md-4" >  
                    <div class="card shadow" style="width: 20rem;">
                        <div class="inner" id="img-contenedor">
                            <img class="card-img-top" height="240"src="https://falasbeauty.files.wordpress.com/2014/09/cam00588.jpg" alt="Card image cap"  >
                        </div>
                        <div class="card-body text-center">
                            <h5 class="card-title bg-success text-light" ><b>Nombre del producto</b></h5>
                            <p class="card-text text-dark">
                            <h6>Tipo de producto</h6>
                            <h6>Cultivo</h6>
                            </p>
                            <a href="#" class="btn btn-outline-success">Ver más</a>
                        </div>
                    </div>      
                </div>
                <div class="col-md-4" >  
                    <div class="card shadow" style="width: 20rem;">
                        <div class="inner" id="img-contenedor">
                            <img class="card-img-top" height="240"src="https://falasbeauty.files.wordpress.com/2014/09/cam00588.jpg" alt="Card image cap"  >
                        </div>
                        <div class="card-body text-center">
                            <h5 class="card-title bg-success text-light" ><b>Nombre del producto</b></h5>
                            <p class="card-text text-dark">
                            <h6>Tipo de producto</h6>
                            <h6>Cultivo</h6>
                            </p>
                            <a href="#" class="btn btn-outline-success">Ver más</a>
                        </div>
                    </div>      
                </div>
            </div>
        </div>



















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
            <br><br><br>
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

        <script type="text/javascript">
            $(document).ready(function () {
                $('#mibuscadorcul').select2();
            });
            $(document).ready(function () {
                $('#mibuscadortip').select2();
            });
        </script>
    </body>

</html>


