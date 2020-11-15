<%@page import="PkgModelo.Busquedascul"%>
<%@page import="PkgControlador.Cultivos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="PkgModelo.Busquedas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="cabecera/librerias.jsp" ></jsp:include> 
            <title>Agrotech - Cultivos</title>
            <link rel="stylesheet" type="text/css" href="est.css"/> 
            <link rel="stylesheet" type="text/css" href="e_1.css"/>

        <%Busquedas bus = new Busquedas();%>
        <%Busquedascul busc = new Busquedascul();%>

        <%ArrayList<Cultivos> listacul = new ArrayList<>();%>
        <% listacul = bus.ListarCultivos();%>  

        <% listacul = bus.ListarCultivos();%>  
    </head>

    <body style="background-color: rgb(232,246,231);">
        <!--MENÚ-->
        <header class="header">
            <font  face="Century Gothic" size=3>
            <div class="fixed-top" >
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
                    <!-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark   sticky-top" -->
                    <a id="logo" class="text-center" class="navbar-brand"href="../Jsp/AInicio.jsp"><img src="../Imgs/paint.png"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" 
                            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav w-100 justify-content-around">
                            <a class="nav-item nav-link" href="../Jsp/Cultivos.jsp"><b>CULTIVOS</b></a>

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
        <!--FIN DEL MENÚ-->


        <font color="green" face="Century Gothic,arial" >
        <h1 class="text-center" ><b>Cultivos</b></h1> </font>

        <form >
            <div class="row">
                <div class="col-md-8" >
                    <div class="text-center"><br>
                        <h5>Seleccione el cultive que desee consultar:</h5>
                        <select id="mibuscador" name="mibuscador"  style="width: 50%"> 
                            <option selected></option>
                            <% for (int i = 0; i < listacul.size(); i++) { %>
                            <option>
                                <%out.print(listacul.get(i).getNombrecultivo());%>                                  
                            </option> <%}%>                                   
                        </select> 
                    </div>   
                </div>
                <div class="col-md-2 text-center" ><br><br>
                    <input type="hidden" name="validar" value="si">
                    <input type="submit" name="submit" id="botonconsultar" value="Consultar "class="btn btn-dark" >  <i class="fas fa-search"> </i>
                </div>  </div>     
        </form>

        <% String fil = request.getParameter("mibuscador");
            if ("si".equals(request.getParameter("validar"))) {
                if (fil == "") {%>
        <% } else {
            listacul = busc.ListarCultivos(fil);
        %>
        <br>
        <div class="container p-3 mt-1">       
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action disabled text-center bg-dark  ">
                    <font color="white" face="Rockwell,arial" size=5>
                    <b>Ficha técnica del cultivo de <%=fil + ""%> </b></font>
                </a>
                <a class="list-group-item list-group-item-action text-center" style="background-color: Lightsteelblue" ><font color="black" face="Rockwell,arial" size=4><b>Nombre común: </b><%= listacul.get(0).getNombrecultivo() + " "%></font></a> 
                <a class="list-group-item list-group-item-action text-center" style="background-color: Lightsteelblue" ><font color="black" face="Rockwell,arial" size=4><b>Nombre comercial: </b><%= listacul.get(0).getNombrecomercial() + " "%></font></a> 
                <a class="list-group-item list-group-item-action text-center" style="background-color: Lightsteelblue" ><font color="black" face="Rockwell,arial" size=4><b>Nombre científico: </b><%= listacul.get(0).getNombrecientifico() + " "%></font></a> 
                <a class="list-group-item list-group-item-action text-center" style="background-color: Lightsteelblue" ><font color="black" face="Rockwell,arial" size=4><b>Familia: </b><%= listacul.get(0).getFamilia() + " "%></font></a> 
                <a class="list-group-item list-group-item-action text-center" style="background-color: Lightsteelblue" ><font color="black" face="Rockwell,arial" size=4><b>Género: </b><%= listacul.get(0).getGenero() + " "%></font></a> 
                <a class="list-group-item list-group-item-action text-center" style="background-color: Lightsteelblue" ><font color="black" face="Rockwell,arial" size=4><b>Tipo: </b><%= listacul.get(0).getTipo() + " "%></font></a> 
            </div>
        </div>
        <section class="portafolio">
            <div class="portafolio-container">
                <section class="portafolio-item text-center">
                    <img height="500" src="<%= listacul.get(0).getImagencultivos() + " "%>" alt="" class="portafolio-img" width=1000 height="200">
                    <section class="portafolio-text">
                        <h2><b>Descripción del cultivo de <%= listacul.get(0).getNombrecultivo() + " "%></b></h2>
                        <p><%= listacul.get(0).getDescripcion() + " "%></p>
                    </section>
                </section>
        </section>

        <div class="container text-center mt-5">
            <font color="olive" face="Rockwell,arial" >
            <h2 class="h2 text-center"><b>Historia del cultivo de <%=fil + ""%></b></h2>            
            </font>
            <font color="black" face="Rockwell,arial" size=4>
            <p> <%=listacul.get(0).getHistoria() + " "%></p></font>
        </div><br>


        <div id="accordion">
            <div id="accordion" >
                <div class="card">
                    <div class="card-header" id="headingOne" style="background-color: darkgreen">
                        <h5 class="mb-0 text-center">
                            <button class="btn text-light " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <font color="white" face="Rockwell,arial" >
                                <h2 class="h2 text-center"><b>Semilla</b></h2></font>
                            </button>
                        </h5>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion" style="background-color: rgb(232,246,231);">
                        <div class="card-body" >
                            <font color="black" face="Century Gothic,arial" size=4>
                            <p class="text-center" >  
                                <font color="#19534B" face="Rockwell,arial" >
                                <b> Para cultivar plantas de frijol sanas se debe  comenzar con una correcta selección de  semillas sanas, se recomienda sembrar semillas de frijol certificadas o seleccionadas de las mejores plantas del cultivo. 
                                    Se debe evitar completamente  las semillas de frijol de mala calidad (arrugadas, gorgojeadas, manchas diferentes al color natural, partidas o pequeñas)  ya que pueden contener hongos o bacterias que causan enfermedades que no se tienen en los campos o zonas de cultivo. Además, las semillas de frijol de mala calidad también producen plantas  las cuales son atacadas más temprano y más fácilmente por las plagas y  demás enfermedades haciendo más difícil y costoso su control.
                                </b></font><br><br>
                                <font color="olive" face="Rockwell,arial" >
                            <h2 class="text-center"><b>Características</b></h2>            
                            </font>
                            <p>
                                1. Color: Rojo oscuro con blanco- Rojo pintado
                                2. Selección de semilla:  buen aspecto, lo cual hace referencia a que no tenga arrugas, manchas o estén partidas. 
                                3. Cantidad de semillas para sembrar por hectárea: La siembra se debe realizar en suelo húmedo, depositando 4 a 6 semillas por metro lineal en surcos de 50 a 60 cm, lo anterior se logra con 30 a 50 kg de semilla.
                            </p>

                            </p>

                            <div class="inner text-center" id="img-contenedor">
                                <img width="800" height="400" src="https://www.goredforwomen.org/-/media/images/healthy-living/healthy-eating/makingbeansfromscratch.240jpg?h=416&w=740&la=en&hash=B78A01B57310FD3C0B3C9CD417DB1D059C046D87" >
                            </div> 
                            </p> </font>

                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo" style="background-color: darkgreen">
                        <h5 class="mb-0 text-center">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <font color="white" face="Rockwell,arial" >
                                <h2 class="h2 text-center"><b>Siembra</b></h2></font>
                            </button>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion" style="background-color: rgb(232,246,231);">
                        <div class="card-body">
                            <font color="black" face="Century Gothic,arial" size=4>
                            <p class="text-center" >
                                <font color="#19534B" face="Rockwell,arial" >
                                <b> Para cultivar plantas de frijol sanas se debe  comenzar con una correcta selección de  semillas sanas, se recomienda sembrar semillas de frijol certificadas o seleccionadas de las mejores plantas del cultivo. 
                                    Se debe evitar completamente  las semillas de frijol de mala calidad (arrugadas, gorgojeadas, manchas diferentes al color natural, partidas o pequeñas)  ya que pueden contener hongos o bacterias que causan enfermedades que no se tienen en los campos o zonas de cultivo. Además, las semillas de frijol de mala calidad también producen plantas  las cuales son atacadas más temprano y más fácilmente por las plagas y  demás enfermedades haciendo más difícil y costoso su control.
                                </b></font><br><br>
                                <font color="green" face="Rockwell,arial" >
                            <h2 class="text-center"><b>Subetapa</b></h2>            
                            </font>
                            <div class="container">
                                <font color="olive" face="Rockwell,arial" >
                                <h4 class="text-left"><b>Tipo característica</b></h4>            
                                </font>
                                <p>
                                    zxnm m,zxnm, n nzkxj njkc Comtendijdjsc k kl 
                                    dfsvbfsdbdfbgdngdxsnxsnmxjnmxxjnxsjhc aicjdashncjksdcjkjncjnndjs                                
                                </p> </div>
                            <div class="inner text-center" id="img-contenedor">
                                <img width="800" height="400" src="https://www.goredforwomen.org/-/media/images/healthy-living/healthy-eating/makingbeansfromscratch.240jpg?h=416&w=740&la=en&hash=B78A01B57310FD3C0B3C9CD417DB1D059C046D87" >
                            </div> 


                            </p> </font>

                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree" style="background-color: darkgreen">
                        <h5 class="mb-0 text-center">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <font color="white" face="Rockwell,arial" >
                                <h2 class="h2 text-center"><b>Mantenimiento</b></h2></font>
                            </button>
                        </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion" style="background-color: rgb(232,246,231);">
                        <div class="card-body">
                          <font color="black" face="Century Gothic,arial" size=4>
                            <p class="text-center" >
                                <font color="#19534B" face="Rockwell,arial" >
                                <b> Para cultivar plantas de frijol sanas se debe  comenzar con una correcta selección de  semillas sanas, se recomienda sembrar semillas de frijol certificadas o seleccionadas de las mejores plantas del cultivo. 
                                    Se debe evitar completamente  las semillas de frijol de mala calidad (arrugadas, gorgojeadas, manchas diferentes al color natural, partidas o pequeñas)  ya que pueden contener hongos o bacterias que causan enfermedades que no se tienen en los campos o zonas de cultivo. Además, las semillas de frijol de mala calidad también producen plantas  las cuales son atacadas más temprano y más fácilmente por las plagas y  demás enfermedades haciendo más difícil y costoso su control.
                                </b></font><br><br>
                                <font color="green" face="Rockwell,arial" >
                            <h2 class="text-center"><b>Subetapa</b></h2>            
                            </font>
                            <div class="container">
                                <font color="olive" face="Rockwell,arial" >
                                <h4 class="text-left"><b>Tipo característica</b></h4>            
                                </font>
                                <p>
                                    zxnm m,zxnm, n nzkxj njkc Comtendijdjsc k kl 
                                    dfsvbfsdbdfbgdngdxsnxsnmxjnmxxjnxsjhc aicjdashncjksdcjkjncjnndjs                                
                                </p> </div>
                            <div class="inner text-center" id="img-contenedor">
                                <img width="800" height="400" src="https://www.goredforwomen.org/-/media/images/healthy-living/healthy-eating/makingbeansfromscratch.240jpg?h=416&w=740&la=en&hash=B78A01B57310FD3C0B3C9CD417DB1D059C046D87" >
                            </div> 


                            </p> </font>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingFour" style="background-color: darkgreen">
                        <h5 class="mb-0 text-center">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                <font color="white" face="Rockwell,arial" >
                                <h2 class="h2 text-center"><b>Cosecha</b></h2></font>
                            </button>
                        </h5>
                    </div>
                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion" style="background-color: rgb(232,246,231);">
                        <div class="card-body">
                         <font color="black" face="Century Gothic,arial" size=4>
                            <p class="text-center" >
                                <font color="#19534B" face="Rockwell,arial" >
                                <b> Para cultivar plantas de frijol sanas se debe  comenzar con una correcta selección de  semillas sanas, se recomienda sembrar semillas de frijol certificadas o seleccionadas de las mejores plantas del cultivo. 
                                    Se debe evitar completamente  las semillas de frijol de mala calidad (arrugadas, gorgojeadas, manchas diferentes al color natural, partidas o pequeñas)  ya que pueden contener hongos o bacterias que causan enfermedades que no se tienen en los campos o zonas de cultivo. Además, las semillas de frijol de mala calidad también producen plantas  las cuales son atacadas más temprano y más fácilmente por las plagas y  demás enfermedades haciendo más difícil y costoso su control.
                                </b></font><br><br>
                                <font color="green" face="Rockwell,arial" >
                            <h2 class="text-center"><b>Subetapa</b></h2>            
                            </font>
                            <div class="container">
                                <font color="olive" face="Rockwell,arial" >
                                <h4 class="text-left"><b>Tipo característica</b></h4>            
                                </font>
                                <p>
                                    zxnm m,zxnm, n nzkxj njkc Comtendijdjsc k kl 
                                    dfsvbfsdbdfbgdngdxsnxsnmxjnmxxjnxsjhc aicjdashncjksdcjkjncjnndjs                                
                                </p> </div>
                            <div class="inner text-center" id="img-contenedor">
                                <img width="800" height="400" src="https://www.goredforwomen.org/-/media/images/healthy-living/healthy-eating/makingbeansfromscratch.240jpg?h=416&w=740&la=en&hash=B78A01B57310FD3C0B3C9CD417DB1D059C046D87" >
                            </div> 


                            </p> </font>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header" id="headingFive" style="background-color: darkgreen">
                        <h5 class="mb-0 text-center">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                <font color="white" face="Rockwell,arial" >
                                <h2 class="h2 text-center"><b>Distribución</b></h2></font>
                            </button>
                        </h5>
                    </div>
                    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion" style="background-color: rgb(232,246,231);">
                        <div class="card-body">
                           <font color="black" face="Century Gothic,arial" size=4>
                            <p class="text-center" >
                                <font color="#19534B" face="Rockwell,arial" >
                                <b> Para cultivar plantas de frijol sanas se debe  comenzar con una correcta selección de  semillas sanas, se recomienda sembrar semillas de frijol certificadas o seleccionadas de las mejores plantas del cultivo. 
                                    Se debe evitar completamente  las semillas de frijol de mala calidad (arrugadas, gorgojeadas, manchas diferentes al color natural, partidas o pequeñas)  ya que pueden contener hongos o bacterias que causan enfermedades que no se tienen en los campos o zonas de cultivo. Además, las semillas de frijol de mala calidad también producen plantas  las cuales son atacadas más temprano y más fácilmente por las plagas y  demás enfermedades haciendo más difícil y costoso su control.
                                </b></font><br><br>
                                <font color="green" face="Rockwell,arial" >
                            <h2 class="text-center"><b>Subetapa</b></h2>            
                            </font>
                            <div class="container">
                                <font color="olive" face="Rockwell,arial" >
                                <h4 class="text-left"><b>Tipo característica</b></h4>            
                                </font>
                                <p>
                                    zxnm m,zxnm, n nzkxj njkc Comtendijdjsc k kl 
                                    dfsvbfsdbdfbgdngdxsnxsnmxjnmxxjnxsjhc aicjdashncjksdcjkjncjnndjs                                
                                </p> </div>
                            <div class="inner text-center" id="img-contenedor">
                                <img width="800" height="400" src="https://www.goredforwomen.org/-/media/images/healthy-living/healthy-eating/makingbeansfromscratch.240jpg?h=416&w=740&la=en&hash=B78A01B57310FD3C0B3C9CD417DB1D059C046D87" >
                            </div> 


                            </p> </font>
                        </div>
                    </div>
                </div>
            </div>




































            <!--            <div id="accordion">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn text-light " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <font color="white" face="Rockwell,arial" >
                                            <h2 class="h2 text-center"><b>Semilla</b></h2></font>
                                        </button>
                                    </h5>
                                </div>
            
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body" style="background-color: rgb(232,246,231);">
                                        <font color="black" face="Century Gothic,arial" size=4>
                                        <p class="text-center" >Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p> </font>
            
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn text-light " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <font color="white" face="Rockwell,arial" >
                                            <h2 class="h2 text-center"><b>Siembra</b></h2></font>
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body" style="background-color: rgb(232,246,231);">
                                        <font color="black" face="Century Gothic,arial" size=4>
                                        <p class="text-center" >Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p> </font>
            
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn text-light " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <font color="white" face="Rockwell,arial" >
                                            <h2 class="h2 text-center"><b>Mantenimiento</b></h2></font>
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body" style="background-color: rgb(232,246,231);">
                                        <font color="black" face="Century Gothic,arial" size=4>
                                        <p class="text-center" >Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p> </font>
            
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn text-light " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <font color="white" face="Rockwell,arial" >
                                            <h2 class="h2 text-center"><b>Cosecha</b></h2></font>
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body" style="background-color: rgb(232,246,231);">
                                        <font color="black" face="Century Gothic,arial" size=4>
                                        <p class="text-center" >Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p> </font>
            
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header bg-success" id="headingThree ">
                                    <h5 class="mb-0 ">
                                        <button class="btn text-light " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <font color="white" face="Rockwell,arial" >
                                            <h2 class="h2 text-center"><b>Distribución</b></h2></font>
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body" style="background-color: rgb(232,246,231);">
                                        <font color="black" face="Century Gothic,arial" size=4>
                                        <p class="text-center" >Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p> </font>
            
                                    </div>
                                </div>
                            </div>
                        </div>-->



        </div>








        <% }
            }%>






































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
        <%
            if (fil == "") {
        %>
        <script>
            alertify.error('Debe seleccionar una cultivo');
        </script>
        <%
            }

        %>

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
        <script type="text/javascript">
            $(document).ready(function () {
                $('#mibuscador').select2();
            });
        </script>

    </body>
</html>
