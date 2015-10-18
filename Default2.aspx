<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Departamentos en Arriendo en Providencia</title>
    <link rel="stylesheet" type="text/css" href="http://www.portalinmobiliario.com/Content/styles/common-1.3.3.33086.less.css" />
    <link rel="stylesheet" type="text/css" href="http://www.portalinmobiliario.com/Content/styles/propiedades-listado-1.3.3.33086.less.css" />
    <link rel="stylesheet" type="text/css" href="http://www.portalinmobiliario.com/Content/styles/jquery-slider-1.3.3.33086.less.css" />
    
<script type="text/javascript">
        //<![CDATA[
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-20245975-1']);
        _gaq.push(['_setLocalRemoteServerMode']);
        _gaq.push(['_setAllowLinker', true]);
        _gaq.push(['_setDomainName', 'none']);
        _gaq.push(['_trackPageview']);
        _gaq.push(['_trackPageLoadTime']);

        _gaq.push(['cons._setAccount', 'UA-30712667-1']);
        _gaq.push(['cons._setAllowLinker', true]);
        _gaq.push(['cons._setDomainName', 'none']);
        _gaq.push(['cons._trackPageview']);
        _gaq.push(['cons._trackPageLoadTime']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
        //]]>
</script>

<script>
    !function(a){"use strict";function b(a){a=a||document.querySelectorAll("[data-lazy]");var b,c,d,e=0;for(void 0===a.length&&(a=[a]),b=a.length,e;b>e;e+=1)c=a[e],d=c.getAttribute("data-lazy"),""!==d&&(c["LINK"!==c.tagName?"src":"href"]=d),c.removeAttribute("data-lazy")}a.lazy=b}(this);
</script>
</head>
<script>
    var suggestionsLimit = 10;
</script>

<body>
    <form id="form1" runat="server">
    <nav>
        <div class="navbar-inner">
            <div class="container main-nav-container" id="main-nav-container">
                <a class="navbar-brand cl-portal" href="/">Portalinmobiliario.com</a>
                <div class="pull-right">
                    <div class="user-box" id="current-user" data-loggedin="0">
                        <div class="btn-group clearfix hidden user-box-loggedin">
                            <a data-toggle="dropdown" class="dropdown-toggle user-actions-toggle" href="#">
                                <i class="fa fa-user user-avatar-icon"></i>
                                <span class="user-name" data-val="0"></span><i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="/miportal/miportal.aspx">Mi portal</a></li>
                                <li><a href="#" data-toggle="modal" class="mis-favoritos">Mis favoritos</a></li>
                                <li><a href="/miportal/preferencias.asp">Mis criterios de b&#250;squeda</a></li>
                                <li><a href="/miportal/miscotizaciones">Mis cotizaciones</a></li>
                                <li><a href="#" id="lnkEditarDatos" data-toggle="modal" class="mi-perfil">Actualizar mi perfil</a></li>
                                <li class="divider"></li>
                                <li><a href="#" id="lnkSalir">Salir</a></li>
                            </ul>
                        </div>
                        <div class="btn-group clearfix user-box-notlogged">
                            <div class="login-box">
                                <span>
                                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" viewBox="0 0 50 50" x="0px" y="0px" width="32px" height="32px" enable-background="new 0 0 50 50" class="svg-icon-user">
                                    <circle class="svg-icon-user-c" cx="25" cy="25" fill="none" r="24" stroke="#333333" stroke-linecap="round" stroke-miterlimit="10" stroke-width="2" />
                                    <rect fill="none" height="50" width="50" />
                                    <path class="svg-icon-user-p" d="M29.933,35.528c-0.146-1.612-0.09-2.737-0.09-4.21c0.73-0.383,2.038-2.825,2.259-4.888c0.574-0.047,1.479-0.607,1.744-2.818  c0.143-1.187-0.425-1.855-0.771-2.065c0.934-2.809,2.874-11.499-3.588-12.397c-0.665-1.168-2.368-1.759-4.581-1.759  c-8.854,0.163-9.922,6.686-7.981,14.156c-0.345,0.21-0.913,0.878-0.771,2.065c0.266,2.211,1.17,2.771,1.744,2.818  c0.22,2.062,1.58,4.505,2.312,4.888c0,1.473,0.055,2.598-0.091,4.21c-1.261,3.39-7.737,3.655-11.473,6.924  c3.906,3.933,10.236,6.746,16.916,6.746s14.532-5.274,15.839-6.713C37.688,39.186,31.197,38.93,29.933,35.528z" fill="#333333" />
                                </svg>
                                </span>
                                <button class="btn btn-link" type="button" id="show-login-prompt">Entrar</button>
                            </div>
                        </div>
                        <a href="/info/publicacion" class="btn btn-primary publish-property-btn" id="boton-publica">Publica tu propiedad</a>
                    </div>
                </div>
            </div>
            <div class="site-search">
                    <div class="site-search__bar">
                        <div class="container site-search__container site-search__by-geo">
                            <div class="site-search__block site-search__block-general" role="search">
                                <div class="input-prepend site-search__general clearfix">
                                    <div class="site-search__general-form ">
                                        <div class="btn-group">
                                            <a id="cmbOperacionSearch" data-toggle="dropdown" class="btn btn-default dropdown-toggle" data-sync-dropdown="filterOperation" data-val="1">
                                                <span class="current-value">Comprar</span>
                                                <i class="fa fa-angle-down"></i>
                                            </a>
                                            <ul class="dropdown-menu js-autochange">
                                                <li><a data-val="1" href="#">Comprar</a></li>
                                                <li><a data-val="2" href="#">Arrendar</a></li>
                                            </ul>
                                        </div>
                                        <div class="btn-group">
                                            <a id="cmbTipoSearch" class="btn btn-default dropdown-toggle" data-sync-dropdown="filterProductType" data-toggle="dropdown" data-val="2">
                                                <span class="current-value">Departamento</span>
                                                <i class="fa fa-angle-down"></i>
                                            </a>
                                            <ul class="dropdown-menu js-autochange">
                                                <li><a data-val="1" href="#" id="buscar-tipo-casa">Casa</a></li>
                                                <li><a data-val="2" href="#" id="buscar-tipo-departamento">Departamento</a></li>
                                                <li><a data-val="3" href="#" id="buscar-tipo-oficina">Oficina</a></li>
                                                <li><a data-val="4" href="#" id="buscar-tipo-sitio">Sitio</a></li>
                                                <li><a data-val="5" href="#" id="buscar-tipo-comercial">Comercial</a></li>
                                                <li><a data-val="8" href="#" id="buscar-tipo-industrial">Industrial</a></li>
                                                <li><a data-val="10" href="#" id="buscar-tipo-agricola">Agrícola</a></li>
                                                <li><a data-val="9" href="#" id="buscar-tipo-loteo">Loteo</a></li>
                                                <li><a data-val="6" href="#" id="buscar-tipo-bodega">Bodega</a></li>
                                                <li><a data-val="14" href="#" id="buscar-tipo-parcela">Parcela</a></li>
                                                <li><a data-val="7" href="#" id="buscar-tipo-estacionamiento">Estacionamiento</a></li>
                                                <li><a data-val="16" href="#" id="buscar-tipo-terreno">Terreno construcción</a></li>
                                            </ul>
                                        </div>
                                        <div class="site-search__qc">
                                            <input id="site-search-input"
                                                   class="form-control site-search__input site-search__q"
                                                   type="text"
                                                   name="TextoBusqueda"
                                                   data-provide="typeahead"
                                                   maxlength="70"
                                                   placeholder="Ingresa una comuna o regi&#243;n"
                                                   value=""
                                                   autocomplete="off" />
                                        </div>
                                        <label class="checkbox site-search__condition-lbl"><input id="cmbCaracteristicaSearch" type="checkbox" />S&#243;lo nuevos</label>
                                    </div>
                                    <button id="buscar" type="button" class="btn btn-primary site-search__trigger" disabled
                                            data-loading-text="<i class='fa fa-spinner fa fa-spin'></i><span class='visible-lg-inline-block'>&nbsp;Buscar</span>">
                                        <i class="fa fa-search fa fa-lg"></i><span class="visible-lg-inline-block">&nbsp;Buscar</span>
                                    </button>
                                </div>
                            </div>
                            <!-- <li class="site-search__tab site-search__tab-codigo"><a href="#search-by-code" data-toggle="tab">Buscar por código</a></li> -->
                        </div>
                    </div>
                </div>
        </div>
    </nav>
    <div id="wrapper">
        <section class="content-heading-section" role="banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12" id="headslider-holder">
                    <div class="flexslider headslider" data-sid="ganqrmd2n4kfyhneev4rmyfl">
                        <ul class="topslides">
                                <li>
                                    <div class="flexslider subslider" id="head-subslider-1">
                                        <ul class="slides">
                                                <li>
                                                    <div class="subslide" data-pyimg="671" data-pid="4981" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/814_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="415" data-pid="4981" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/505_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="416" data-pid="4981" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/506_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="2665" data-pid="4981" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3243_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="417" data-pid="4981" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/507_w1200.jpg"></div>
                                                </li>
                                        </ul>
                                    </div>
                                    <div class="subslider-thumbs" id="head-subslider-thumbs-1" data-idpp="21253">
                                        <ul class="cf">
                                                <li class="subslider-thumb" data-pyimg="671" data-pid="4981" data-tnr="0" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/814_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="415" data-pid="4981" data-tnr="1" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/505_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="416" data-pid="4981" data-tnr="2" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/506_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="2665" data-pid="4981" data-tnr="3" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3243_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="417" data-pid="4981" data-tnr="4" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/507_h40.jpg"></li>
                                        </ul>
                                    </div>
                                    <hgroup class="topslide-heading">
                                            <h3><a  data-pid="4981" class="project-link" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/4981-now-santa-maria-nva?pp=21253&amp;ei=671">Now Santa Mar&#237;a</a></h3>                            
                                            <p>En un sector privilegiado, junto al imponente Cerro San Cristóbal, en el sector más exclusivo de Providencia.</p>
                                            <p><a class="btn btn-medium btn-primary pull-right btn-cotizar-list" data-cotizar="4981" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/4981-now-santa-maria-nva?pp=21253&amp;ei=671&amp;ctz=1">Cotizar</a></p>
                                        </hgroup>
                                    <div class="topslide-actions-bar">
                                        <img class="project-logo" style="height: 62px;" src="http://www.portalinmobiliario.com/Handler/ImagenHandler.ashx?path=/proyimgs/4981_lg.jpg&amp;h=62" />                                                                                                                                            
                                        <hgroup>
                                            <h4 class="subtitle">Proyecto en Providencia</h4>                            
                                            <h4><a class="project-link" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/4981-now-santa-maria-nva?pp=21253&amp;ei=671" data-pid="4981" title ="Now Santa Mar&#237;a">Now Santa Mar&#237;a</a></h4>                                
                                        </hgroup>
                                        <div class="pull-right">                            
                                            <div class="slider-fixed-actions proyecto-slider">                                
                                                <span class="fixed-action user-login-required user-fav-toggle " data-login-interaction="favorite" data-pid="4981" data-gid="1" id="favoritoSuperior"
                                                      rel="tooltip" data-login-interaction="favorite" data-original-title="Agregar a favoritos" data-placement="left"><i class="fa fa-heart"></i></span>
                                            </div>    
                                        </div>
                                    </div>
                                </li>                
                                <li>
                                    <div class="flexslider subslider" id="head-subslider-2">
                                        <ul class="slides">
                                                <li>
                                                    <div class="subslide" data-pyimg="3015" data-pid="6035" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3704_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="3014" data-pid="6035" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3703_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="3013" data-pid="6035" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3702_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="3011" data-pid="6035" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3700_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="3012" data-pid="6035" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3701_w1200.jpg"></div>
                                                </li>
                                        </ul>
                                    </div>
                                    <div class="subslider-thumbs" id="head-subslider-thumbs-2" data-idpp="21365">
                                        <ul class="cf">
                            
                                                <li class="subslider-thumb" data-pyimg="3015" data-pid="6035" data-tnr="0" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3704_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="3014" data-pid="6035" data-tnr="1" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3703_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="3013" data-pid="6035" data-tnr="2" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3702_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="3011" data-pid="6035" data-tnr="3" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3700_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="3012" data-pid="6035" data-tnr="4" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3701_h40.jpg"></li>
                                        </ul>
                                    </div>
                                    <hgroup class="topslide-heading">
                                            <h3><a  data-pid="6035" class="project-link" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/6035-suecia23-nva?pp=21365&amp;ei=3015">Suecia23</a></h3>                            
                                            <p>Miradores privados en departamentos del último piso y jardines privados en el primer piso.</p>
                                            <p>
                                
                                                <a class="btn btn-medium btn-primary pull-right btn-cotizar-list" data-cotizar="6035" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/6035-suecia23-nva?pp=21365&amp;ei=3015&amp;ctz=1">Cotizar</a>
                                            </p>
                                        </hgroup>
                                    <div class="topslide-actions-bar">
                                        <img class="project-logo" style="height: 62px;" src="http://www.portalinmobiliario.com/Handler/ImagenHandler.ashx?path=/proyimgs/6035_lg.jpg&amp;h=62" />                                                                                                                                            
                                        <hgroup>
                                            <h4 class="subtitle">Proyecto en Providencia</h4>                            
                                            <h4><a class="project-link" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/6035-suecia23-nva?pp=21365&amp;ei=3015" data-pid="6035" title ="Suecia23">Suecia23</a></h4>                                
                                        </hgroup>
                                        <div class="pull-right">                            
                                            <div class="slider-fixed-actions proyecto-slider">                                
                                                <span class="fixed-action user-login-required user-fav-toggle " data-login-interaction="favorite" data-pid="6035" data-gid="1" id="favoritoSuperior"
                                                      rel="tooltip" data-login-interaction="favorite" data-original-title="Agregar a favoritos" data-placement="left"><i class="fa fa-heart"></i></span>
                                            </div>    
                                        </div>
                                    </div>
                                </li>                
                                <li>
                                    <div class="flexslider subslider" id="head-subslider-3">
                                        <ul class="slides">                           
                                                <li>
                                                    <div class="subslide" data-pyimg="3017" data-pid="6234" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3706_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="3020" data-pid="6234" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3709_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="3018" data-pid="6234" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3792_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="3016" data-pid="6234" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3705_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="3019" data-pid="6234" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3708_w1200.jpg"></div>
                                                </li>
                                        </ul>
                                    </div>
                                    <div class="subslider-thumbs" id="head-subslider-thumbs-3" data-idpp="21366">
                                        <ul class="cf">
                            
                                                <li class="subslider-thumb" data-pyimg="3017" data-pid="6234" data-tnr="0" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3706_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="3020" data-pid="6234" data-tnr="1" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3709_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="3018" data-pid="6234" data-tnr="2" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3792_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="3016" data-pid="6234" data-tnr="3" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3705_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="3019" data-pid="6234" data-tnr="4" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3708_h40.jpg"></li>
                                        </ul>
                                    </div>
                                    <hgroup class="topslide-heading">
                                            <h3><a  data-pid="6234" class="project-link" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/6234-edificio-bloom-nva?pp=21366&amp;ei=3017">Edificio Bloom</a></h3>                            
                                            <p>A dos cuadras del metro Manuel Montt. Deptos. de 2 dorms. con sala de estar y 3 dorms. con 3 baños. Terrazas panorámicas, quincho, piscina, sala de niños y mucho más.</p>
                                            <p>
                                
                                                <a class="btn btn-medium btn-primary pull-right btn-cotizar-list" data-cotizar="6234" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/6234-edificio-bloom-nva?pp=21366&amp;ei=3017&amp;ctz=1">Cotizar</a>
                                            </p>
                                        </hgroup>
                                    <div class="topslide-actions-bar">
                                        <img class="project-logo" style="height: 62px;" src="http://www.portalinmobiliario.com/Handler/ImagenHandler.ashx?path=/proyimgs/6234_lg.jpg&amp;h=62" />                                                                                                                                            
                                        <hgroup>
                                            <h4 class="subtitle">Proyecto en Providencia</h4>                            
                                            <h4><a class="project-link" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/6234-edificio-bloom-nva?pp=21366&amp;ei=3017" data-pid="6234" title ="Edificio Bloom">Edificio Bloom</a></h4>                                
                                        </hgroup>
                                        <div class="pull-right">                            
                                            <div class="slider-fixed-actions proyecto-slider">                                
                                                <span class="fixed-action user-login-required user-fav-toggle " data-login-interaction="favorite" data-pid="6234" data-gid="1" id="favoritoSuperior"
                                                      rel="tooltip" data-login-interaction="favorite" data-original-title="Agregar a favoritos" data-placement="left"><i class="fa fa-heart"></i></span>
                                            </div>    
                                        </div>
                                    </div>
                                </li>                
                                <li>
                                    <div class="flexslider subslider" id="head-subslider-4">
                                        <ul class="slides">
                                                <li>
                                                    <div class="subslide" data-pyimg="940" data-pid="5668" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3398_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="942" data-pid="5668" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3400_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="2776" data-pid="5668" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3402_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="2777" data-pid="5668" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3403_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="941" data-pid="5668" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3399_w1200.jpg"></div>
                                                </li>
                                                <li>
                                                    <div class="subslide" data-pyimg="939" data-pid="5668" data-img="http://image.portalinmobiliario.cl/Portal/Proyectos/3397_w1200.jpg"></div>
                                                </li>
                                        </ul>
                                    </div>
                                    <div class="subslider-thumbs" id="head-subslider-thumbs-4" data-idpp="21368">
                                        <ul class="cf">
                                                <li class="subslider-thumb" data-pyimg="940" data-pid="5668" data-tnr="0" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3398_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="942" data-pid="5668" data-tnr="1" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3400_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="2776" data-pid="5668" data-tnr="2" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3402_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="2777" data-pid="5668" data-tnr="3" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3403_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="941" data-pid="5668" data-tnr="4" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3399_h40.jpg"></li>
                                                <li class="subslider-thumb" data-pyimg="939" data-pid="5668" data-tnr="5" data-thumb="http://image.portalinmobiliario.cl/Portal/Proyectos/3397_h40.jpg"></li>
                                        </ul>
                                    </div>
                                    <hgroup class="topslide-heading">
                                            <h3><a  data-pid="5668" class="project-link" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/5668-edificio-parque-pocuro-nva?pp=21368&amp;ei=940">Edificio Parque Pocuro</a></h3>                            
                                            <p>Salón gourmet, jacuzzi con sauna y bicicletas de libre uso para propietarios. Salón pool bar, 3 salas de estudio, gimnasio equipado, sala fitness y de juegos para niños con muro de escalada.</p>
                                            <p>
                                
                                                <a class="btn btn-medium btn-primary pull-right btn-cotizar-list" data-cotizar="5668" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/5668-edificio-parque-pocuro-nva?pp=21368&amp;ei=940&amp;ctz=1">Cotizar</a>
                                            </p>
                                        </hgroup>
                                    <div class="topslide-actions-bar">
                                        <img class="project-logo" style="height: 62px;" src="http://www.portalinmobiliario.com/Handler/ImagenHandler.ashx?path=/proyimgs/5668_lg.jpg&amp;h=62" />                                                                                                                                            
                                        <hgroup>
                                            <h4 class="subtitle">Proyecto en Providencia</h4>                            
                                            <h4><a class="project-link" href="http://www.portalinmobiliario.com/venta/departamento/providencia-metropolitana/5668-edificio-parque-pocuro-nva?pp=21368&amp;ei=940" data-pid="5668" title ="Edificio Parque Pocuro">Edificio Parque Pocuro</a></h4>                                
                                        </hgroup>
                                        <div class="pull-right">                            
                                            <div class="slider-fixed-actions proyecto-slider">                                
                                                <span class="fixed-action user-login-required user-fav-toggle " data-login-interaction="favorite" data-pid="5668" data-gid="1" id="favoritoSuperior"
                                                      rel="tooltip" data-login-interaction="favorite" data-original-title="Agregar a favoritos" data-placement="left"><i class="fa fa-heart"></i></span>
                                            </div>    
                                        </div>
                                    </div>
                                </li>                
                        </ul>
                        <div class="headslider-toggle-holder">
                            <div class="headslider-close-btn">Cerrar <span class="headslider-close-icon"><i class="fa fa-remove"></i></span></div>
                            <div class="headslider-open-btn">Abrir <span class="headslider-open-icon"><i class="fa fa-chevron-down"></i></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        <a class="page-nav-action page-nav-prev disabled" style="display:none" rel="tooltip prev" data-title="Anterior" data-placement="right" href=""></a>
        <a class="page-nav-action page-nav-next" style="display:none"  rel="tooltip next" data-title="Siguiente" data-placement="left" href="/arriendo/departamento/providencia-metropolitana?ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;pg=2"></a>

<section class="content-section content-sidedar-equals">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 span-fix-content">
                <article role="main" class="main-content">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="results-title">
                                <h1 role="heading" aria-level="1">
                                    Departamentos en
                                    Arriendo  en
                                    <span class="comuna-name" data-val="Providencia-Metropolitana">Providencia</span>
                                </h1>
                                <ol class="breadcrumb">
                                    <li><a href="/">Inicio</a></li>
                                    <li><a href="/arriendo">Arriendo</a></li>
                                    <li><a href="/arriendo/departamento">Departamento</a></li>
                                    <li ><a href="/arriendo/departamento/metropolitana">Metropolitana</a></li>
                                    <li class="active">Providencia</li>
                                </ol>
                                <div class="descr" role="heading" aria-level="3">
                                    Actualmente tenemos
                                    130
                                    publicaciones de
                                    <span class="portal-branded">Departamento</span> 
                                    en
                                    <span class="portal-branded">Arriendo</span>
                                    disponibles para ti.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 results-sorting-container">
                            <div class="form-group">
                                <ul class="nav clearfix">
                                    <li class="dropdown pull-left">
                                        <button id="filters-sort-direction" data-toggle="dropdown" class="btn btn-default dropdown-toggle text-left fix-drop" data-val="" type="button">
                                            <span class="current-value">Ordena tu resultado</span>&nbsp;<i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu js-autochange">
                                        <li id="p-asc"><a data-val="p-asc" href="#">precio menor a mayor</a></li>
                                        <li id="p-des"><a data-val="p-des" href="#">precio mayor a menor</a></li>
                                        <li id="s-asc"><a data-val="s-asc" href="#">superficie menor a mayor</a></li>
                                        <li id="s-des"><a data-val="s-des" href="#">superficie mayor a menor</a></li>
                                        <li id="f-asc"><a data-val="f-asc" href="#">las m&aacute;s antiguas</a></li>
                                        <li id="f-des"><a data-val="f-des" href="#">las m&aacute;s nuevas</a></li>
                                    </ul>
                                    </li>
                                    <li class="dropdown pull-left" rel="tooltip" title="Selecciona la moneda en que se mostrarán los precios" data-placement="left" data-delay="400">
                                        <button id="filters-moneda-actual" data-toggle="dropdown" class="btn btn-default dropdown-toggle text-left fix-drop" data-val="1" type="button" name="moneda">
                                            <span class="current-value">$</span>&nbsp;<i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu js-autochange"> 
                                                <li><a data-val=1 href="#">$</a></li> 
                                                <li><a data-val=2 href="#">UF</a></li> 
                                                <li><a data-val=3 href="#">US$</a></li> 
                                        </ul>
                                    </li>
                                </ul>                                
                            </div>
                            <div class="form-group">                                
                                <div>
                                    <input id="chkSoloConFotos" class="prettify-checkbox" type="checkbox" value="" checked='checked'/>
                                    <label class="checkbox control-label" for="chkSoloConFotos">Sólo con fotos</label>
                                </div>
                                <div>
                                        <input id="chkSoloPagadas" class="prettify-checkbox" type="checkbox" value="" />
                                        <label class="checkbox control-label" for="chkSoloPagadas">Oculta publicaciones gratuitas</label>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 hidden-xs hidden-sm">
                            <a href="/propiedades/mapa" class="btn btn-primary" id="linkMapa" data-provide="map-direct-search">Mostrar en Mapa</a>
                        </div>
                        <div class="col-md-8">
                            <div id="PaginacionSuperior">
                                    <div class="pagination-right"><span class="textual-pager text-muted">Resultado 1 a 25 de 130</span><ul class="pagination"><li class="active" data-num="1" data-val="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0"><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=1">1</a></li><li  data-num="2" data-val="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0"><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=2">2</a></li><li  data-num="3" data-val="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0"><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=3">3</a></li><li  data-num="4" data-val="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0"><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=4">4</a></li><li class='siguiente'><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=2" title="Siguiente">&rsaquo;</a></li><li class='ultima'><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=6" title="Última">&raquo;</a></li></ul></div>
                            </div>
                        </div>
                    </div>
                    <div class="products-list">
                        <div class="row product-item propiedad destacada pagada" data-product-id="2327562">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo/departamento/providencia-metropolitana/2327562-roman-diaz-641-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=0">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2327562_rfc2am0fei4_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento amoblado</p>
                        <h4 data-pid="2327562" data-gid="2" data-destacada="destacada"><a  href="/arriendo/departamento/providencia-metropolitana/2327562-roman-diaz-641-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=0">Rom&#225;n D&#237;az 641, Providencia</a></h4>

                    <p>C&oacute;digo: 2327562</p>
                        <p><span class="label label-default" rel="tooltip" data-title="2 Dormitorios / 1 Ba&#241;o" data-placement="right">2D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="0.8500"
                                data-price-currency="2"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 21.611</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="59,96m&amp;sup2; &#218;til / 73,34m&amp;sup2; Total">59,96 - 73,34 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2327562" data-gid="2" data-destacada="destacada" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
        <div class='clearfix'></div>
    </div>

    <div class="row product-item propiedad destacada pagada" data-product-id="2320142">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo/departamento/providencia-metropolitana/2320142-roman-diaz-641-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=1">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2320142_kei3myapk1b_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento amoblado</p>
                        <h4 data-pid="2320142" data-gid="2" data-destacada="destacada"><a  href="/arriendo/departamento/providencia-metropolitana/2320142-roman-diaz-641-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=1">Rom&#225;n D&#237;az 641, Providencia</a></h4>

                    <p>C&oacute;digo: 2320142</p>
                        <p><span class="label label-default" rel="tooltip" data-title="2 Dormitorios / 2 Ba&#241;os" data-placement="right">2D/2B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="1.0500"
                                data-price-currency="2"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 26.696</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="69,15m&amp;sup2; &#218;til / 77,20m&amp;sup2; Total">69,15 - 77,20 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2320142" data-gid="2" data-destacada="destacada" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
            <div class='clearfix'></div>
    </div>
    <div class="row product-item propiedad destacada pagada" data-product-id="2283036">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2283036-en-providencia-y-las-condes-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=2">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/3b54f38f-2c57-4f50-a290-dfb52a2a66a6_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2283036" data-gid="2" data-destacada="destacada"><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2283036-en-providencia-y-las-condes-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=2">En Providencia y Las Condes, Providencia</a></h4>

                    <p>C&oacute;digo: 2283036</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="38000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 37.999</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="40m&amp;sup2; &#218;til / 40m&amp;sup2; Total">40 - 40 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2283036" data-gid="2" data-destacada="destacada" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
            <div class='clearfix'></div>
    </div>
    <div class="row product-item propiedad destacada pagada" data-product-id="2397672">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo/departamento/providencia-metropolitana/2397672-andres-de-fuenzalida-69-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=3">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/a9eadccc-1793-47ff-82af-2011234263d5_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento</p>
                        <h4 data-pid="2397672" data-gid="2" data-destacada="destacada"><a  href="/arriendo/departamento/providencia-metropolitana/2397672-andres-de-fuenzalida-69-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=3">Andr&#233;s de Fuenzalida 69, Providencia</a></h4>

                    <p>C&oacute;digo: 2397672</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 2 Ba&#241;os" data-placement="right">1D/2B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="290000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 290.000</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="69m&amp;sup2; &#218;til / 69m&amp;sup2; Total">69 - 69 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2397672" data-gid="2" data-destacada="destacada" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
            <div class='clearfix'></div>
    </div>
        <div class='commercials-block'>
            

    <div     >
<a target='_blank' href='/Handler/ClickBannerHandler.ashx?URL=http://www.portalinmobiliario.com/catalogo/fichas.asp?ProyectoID=5225&IDProductoEmpresa=11186&IDBanner=1480&IDPagina=42&Pagina=Nuevo Resultado de Búsqueda&PersonaID=0' >                        <img style="width: 728px; height: 90px" height="90" width="728" data-lazy="http://image.portalinmobiliario.cl/Banners/1480_20140428094558.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" border="0" alt="Visite Holanda 1500" />
</a>    </div>       


        </div>
    <div class="row product-item propiedad destacada pagada" data-product-id="2389381">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo/departamento/providencia-metropolitana/2389381-suecia-705-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=4">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/f73a8e13-1e8b-4fe9-911f-040b35aa2f0c_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento</p>
                        <h4 data-pid="2389381" data-gid="2" data-destacada="destacada"><a  href="/arriendo/departamento/providencia-metropolitana/2389381-suecia-705-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=4">Suecia 705, Providencia</a></h4>

                    <p>C&oacute;digo: 2389381</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="300000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 299.999</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="31m&amp;sup2; &#218;til / 33m&amp;sup2; Total">31 - 33 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2389381" data-gid="2" data-destacada="destacada" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
            <div class='clearfix'></div>
    </div>
    <div class="row product-item propiedad destacada pagada" data-product-id="2385844">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo/departamento/providencia-metropolitana/2385844-jose-manuel-infante-1155-departamento-701-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=5">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/1fe0c093-c36b-46ba-9312-3de5032871a5_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento</p>
                        <h4 data-pid="2385844" data-gid="2" data-destacada="destacada"><a  href="/arriendo/departamento/providencia-metropolitana/2385844-jose-manuel-infante-1155-departamento-701-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=5">Jos&#233; Manuel Infante 1155 - Departamento 701, Providencia</a></h4>

                    <p>C&oacute;digo: 2385844</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="320000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 320.001</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="33m&amp;sup2; &#218;til / 35m&amp;sup2; Total">33 - 35 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2385844" data-gid="2" data-destacada="destacada" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
            <div class='clearfix'></div>
    </div>
    <div class="row product-item propiedad destacada pagada" data-product-id="2395720">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo/departamento/providencia-metropolitana/2395720-avda-suecia-diego-de-almagro-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=6">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/0ba1d212-5779-419c-a066-e1ccc5e48c7f_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento</p>
                        <h4 data-pid="2395720" data-gid="2" data-destacada="destacada"><a  href="/arriendo/departamento/providencia-metropolitana/2395720-avda-suecia-diego-de-almagro-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=6">Avda. Suecia / Diego de Almagro, Providencia</a></h4>

                    <p>C&oacute;digo: 2395720</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="330000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 330.000</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="40m&amp;sup2; &#218;til / 43m&amp;sup2; Total">40 - 43 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2395720" data-gid="2" data-destacada="destacada" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
            <div class='clearfix'></div>
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2293161">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo/departamento/providencia-metropolitana/2293161-pedro-de-valdivia-nortelos-espanoles-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=7">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/REUR_202015341_15341_img_9134-copia-112498174_1_7725935_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento</p>
                        <h4 data-pid="2293161" data-gid="2" data-destacada=""><a  href="/arriendo/departamento/providencia-metropolitana/2293161-pedro-de-valdivia-nortelos-espanoles-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=7">Pedro de Valdivia Norte/Los Espa&#241;oles, Providencia</a></h4>

                    <p>C&oacute;digo: 2293161</p>
                        <p><span class="label label-default" rel="tooltip" data-title="2 Dormitorios / 3 Ba&#241;os" data-placement="right">2D/3B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="350.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 351</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="200m&amp;sup2; &#218;til / 200m&amp;sup2; Total">200 - 200 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2293161" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
        <div class='commercials-block'>
            

    <div     >
<a target='_self' href='/Handler/ClickBannerHandler.ashx?URL=http://www.portalinmobiliario.com/data/promos/otras/espacio.asp&IDProductoEmpresa=21386&IDBanner=2286&IDPagina=42&Pagina=Nuevo Resultado de Búsqueda&PersonaID=0' >                        <img style="width: 728px; height: 90px" height="90" width="728" data-lazy="http://image.portalinmobiliario.cl/Banners/2286_20150608123732.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" border="0" alt="espacios" />
</a>    </div>       


        </div>
    <div class="row product-item propiedad  pagada" data-product-id="2293162">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo/departamento/providencia-metropolitana/2293162-los-espanoles-pedro-de-valdivia-norte-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=8">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/REUR_202015342_15342_casasdelcerro19-copia-400-1152641711_1_2623856_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento</p>
                        <h4 data-pid="2293162" data-gid="2" data-destacada=""><a  href="/arriendo/departamento/providencia-metropolitana/2293162-los-espanoles-pedro-de-valdivia-norte-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=8">Los Espa&#241;oles / Pedro de Valdivia Norte, Providencia</a></h4>

                    <p>C&oacute;digo: 2293162</p>
                        <p><span class="label label-default" rel="tooltip" data-title="2 Dormitorios / 2 Ba&#241;os" data-placement="right">2D/2B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="6500.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 6.501</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="200m&amp;sup2; &#218;til / 200m&amp;sup2; Total">200 - 200 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2293162" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2388669">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2388669-avenida-pedro-de-valdivia-150-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=9">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/b81081de-f8a5-48f4-80b7-f90300753402_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento</p>
                        <h4 data-pid="2388669" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2388669-avenida-pedro-de-valdivia-150-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=9">Avenida Pedro de Valdivia 150, Providencia</a></h4>

                    <p>C&oacute;digo: 2388669</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="23000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 22.999</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="45m&amp;sup2; &#218;til / 45m&amp;sup2; Total">45 - 45 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2388669" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2220706">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2220706-carmen-sylva-con-suecia-metro-los-leones-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=10">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2220706_ilbkmfzanku_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2220706" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2220706-carmen-sylva-con-suecia-metro-los-leones-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=10">Carmen Sylva con Suecia Metro Los Leones, Providencia</a></h4>

                    <p>C&oacute;digo: 2220706</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="28000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 28.000</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="30m&amp;sup2; &#218;til / 30m&amp;sup2; Total">30 - 30 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2220706" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2401937">
        <div class="col-sm-3 product-item-image nuevo">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2401937-costanera-center-arriendo-temporal-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=11">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2401937_2homktmnoi0_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2401937" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2401937-costanera-center-arriendo-temporal-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=11">COSTANERA CENTER - ARRIENDO TEMPORAL, Providencia</a></h4>

                    <p>C&oacute;digo: 2401937</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="30000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 30.001</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="40m&amp;sup2; &#218;til / 40m&amp;sup2; Total">40 - 40 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2401937" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2220619">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2220619-carmen-sylva-con-suecia-metro-los-leones-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=12">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2220619_4g1ryawnxbz_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2220619" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2220619-carmen-sylva-con-suecia-metro-los-leones-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=12">Carmen Sylva con Suecia Metro Los Leones, Providencia</a></h4>

                    <p>C&oacute;digo: 2220619</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="30000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 30.001</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="30m&amp;sup2; &#218;til / 30m&amp;sup2; Total">30 - 30 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2220619" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2220728">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2220728-metro-los-leones-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=13">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2220728_3dknpvoce2q_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2220728" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2220728-metro-los-leones-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=13">Metro Los Leones, Providencia</a></h4>

                    <p>C&oacute;digo: 2220728</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="30000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 30.001</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="30m&amp;sup2; &#218;til / 30m&amp;sup2; Total">30 - 30 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2220728" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2379359">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2379359-plaza-loreto-club-providencia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=14">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2379359_cqclobtqh3r_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2379359" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2379359-plaza-loreto-club-providencia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=14">PLAZA LORETO -CLUB PROVIDENCIA, Providencia</a></h4>

                    <p>C&oacute;digo: 2379359</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="30000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 30.001</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="57m&amp;sup2; &#218;til / 57m&amp;sup2; Total">57 - 57 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2379359" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2319488">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2319488-metro-pedro-de-valdivia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=15">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2319488_4zzmruetb1g_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2319488" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2319488-metro-pedro-de-valdivia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=15">Metro Pedro de Valdivia, Providencia</a></h4>

                    <p>C&oacute;digo: 2319488</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="35000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 34.999</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="30m&amp;sup2; &#218;til / 35m&amp;sup2; Total">30 - 35 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2319488" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2209212">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2209212-metro-los-leones-providencia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=16">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2209212_yxdfwsubwwq_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2209212" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2209212-metro-los-leones-providencia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=16">Metro los leones, Providencia, Providencia</a></h4>

                    <p>C&oacute;digo: 2209212</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="35000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 34.999</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="30m&amp;sup2; &#218;til / 30m&amp;sup2; Total">30 - 30 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2209212" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="1463593">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/1463593-pedro-de-valdivia-263-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=17">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/8ea8b314-bb91-4894-9d2d-c7bf55dddf6b_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="1463593" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/1463593-pedro-de-valdivia-263-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=17">Pedro de Valdivia 263, Providencia</a></h4>

                    <p>C&oacute;digo: 1463593</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="35000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 34.999</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="38m&amp;sup2; &#218;til / 40m&amp;sup2; Total">38 - 40 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="1463593" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2094257">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2094257-fco-antonio-encina-1781-c-la-concepcion-santiago-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=18">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2094257_nwjpgxfv0wo_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2094257" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2094257-fco-antonio-encina-1781-c-la-concepcion-santiago-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=18">Fco Antonio Encina 1781 c/ La Concepci&#243;n Santiago, Providencia</a></h4>

                    <p>C&oacute;digo: 2094257</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="35000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 34.999</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="45m&amp;sup2; &#218;til / 50m&amp;sup2; Total">45 - 50 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2094257" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2331929">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2331929-francisco-antonio-encina-1781-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=19">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2331929_hfq3cx031lf_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2331929" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2331929-francisco-antonio-encina-1781-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=19">Francisco Antonio Encina 1781, Providencia</a></h4>

                    <p>C&oacute;digo: 2331929</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="35000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 34.999</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="30m&amp;sup2; &#218;til / 30m&amp;sup2; Total">30 - 30 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2331929" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="712101">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/712101-ricardo-lyon-costanera-andres-bello-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=20">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/712101_DSC03997_h100.JPG" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento</p>
                        <h4 data-pid="712101" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/712101-ricardo-lyon-costanera-andres-bello-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=20">Ricardo Lyon / Costanera Andres Bello, Providencia</a></h4>

                    <p>C&oacute;digo: 712101</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="40000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 40.000</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="36m&amp;sup2; &#218;til / 42m&amp;sup2; Total">36 - 42 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="712101" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2147259">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2147259-metro-tobalaba-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=21">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2147259_5nydoxigfto_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2147259" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2147259-metro-tobalaba-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=21">Metro Tobalaba, Providencia</a></h4>

                    <p>C&oacute;digo: 2147259</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="40000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 40.000</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="50m&amp;sup2; &#218;til / 50m&amp;sup2; Total">50 - 50 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2147259" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2403457">
        <div class="col-sm-3 product-item-image nuevo">
            <a href="/arriendo/departamento/providencia-metropolitana/2403457-andres-bello-providencia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=22">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/57e0bef9-136f-48cd-b2a5-7804a895b440_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo, Departamento amoblado</p>
                        <h4 data-pid="2403457" data-gid="2" data-destacada=""><a  href="/arriendo/departamento/providencia-metropolitana/2403457-andres-bello-providencia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=22">Andr&#233;s Bello, Providencia, Providencia</a></h4>

                    <p>C&oacute;digo: 2403457</p>
                        <p><span class="label label-default" rel="tooltip" data-title="2 Dormitorios / 2 Ba&#241;os" data-placement="right">2D/2B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="40000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 40.000</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="70m&amp;sup2; &#218;til / 70m&amp;sup2; Total">70 - 70 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2403457" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="2137934">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/2137934-la-concepcion-santiago-departamento-120-departamento-120-departamento-120-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=23">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2137934_mdf0pmhahkb_h100.jpg" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="2137934" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/2137934-la-concepcion-santiago-departamento-120-departamento-120-departamento-120-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=23">La Concepci&#243;n, Santiago - Departamento 120 - Departamento 120 - Departamento 120, Providencia</a></h4>

                    <p>C&oacute;digo: 2137934</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="40000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 40.000</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="30m&amp;sup2; &#218;til / 30m&amp;sup2; Total">30 - 30 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="2137934" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>
    <div class="row product-item propiedad  pagada" data-product-id="716901">
        <div class="col-sm-3 product-item-image ">
            <a href="/arriendo-de-temporada/departamento/providencia-metropolitana/716901-ricardo-lyonavenida-costanera-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=24">
                <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/716901_DSC03994_h100.JPG" /></a>
        </div>
        <div class="col-sm-9 product-item-data">
            <div class="row">
                <div class="col-sm-6 product-item-summary">
                    <p><span class="product-type-title">Propiedad usada, </span>Arriendo de Temporada, Departamento amoblado</p>
                        <h4 data-pid="716901" data-gid="2" data-destacada=""><a  href="/arriendo-de-temporada/departamento/providencia-metropolitana/716901-ricardo-lyonavenida-costanera-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;sf=1&amp;sp=0&amp;at=0&amp;i=24">Ricardo Ly&#243;n/Avenida Costanera, Providencia</a></h4>

                    <p>C&oacute;digo: 716901</p>
                        <p><span class="label label-default" rel="tooltip" data-title="1 Dormitorio / 1 Ba&#241;o" data-placement="right">1D/1B</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Valor: <span
                                class="product-property-value product-price-value"
                                data-price="50000.0000"
                                data-price-currency="1"
                                data-price-persquare="0"
                                data-price-square="1"
                            >$ 50.000</span></p>
                </div>
                <div class="col-sm-3">
                        <p class="product-property">Superficie:
                            <span class="product-property-value"  rel="tooltip" data-placement="left" data-title="52m&amp;sup2; &#218;til / 58m&amp;sup2; Total">52 - 58 m&sup2;</span>
                        </p>
                </div>
            </div>            
        </div>    
        <div class="product-bottom-bar pushed-bottom"> 
            <div class="pull-left product-programs-list">				
            </div>
                            <span class="btn btn-default btn-sm pull-right user-fav-add user-login-required" data-pid="716901" data-gid="2" data-destacada="" data-login-interaction="favorite"><i class="fa fa-heart-o"></i>&nbsp;Agregar a favoritos</span>
        </div>                    
    </div>

                    </div>
                    <div id="PaginacionInferior">
                        <div class="pagination-right"><span class="textual-pager text-muted">Resultado 1 a 25 de 130</span><ul class="pagination"><li class="active" data-num="1" data-val="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0"><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=1">1</a></li><li  data-num="2" data-val="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0"><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=2">2</a></li><li  data-num="3" data-val="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0"><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=3">3</a></li><li  data-num="4" data-val="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0"><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=4">4</a></li><li class='siguiente'><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=2" title="Siguiente">&rsaquo;</a></li><li class='ultima'><a href="/arriendo/departamento/providencia-metropolitana?ca=3&ph=350000&ts=1&mn=1&or=&sf=1&sp=0&at=0&pg=6" title="Última">&raquo;</a></li></ul></div>
                    </div>
                </article>
            </div>
            <div class="col-sm-3 span-fix-aside">
                <aside class="page-sidebar" role="complementary">
                    <div class="search-filters-box">
                        <form class="form-horizontal" method="post" id="search-filters-form" action="#">
                            <input id="filter-idComuna" name="filter-idComuna" type="hidden" value="" />
                            <input id="filter-orden" name="filter-orden" type="hidden" value="" />
                            <input id="filter-operacion" name="filter-operacion" type="hidden" value="" />
                            <input id="filter-tipo" name="filter-tipo" type="hidden" value="" />
                            <input id="filter-caracteristica" name="filter-caracteristica" type="hidden" value="" />
                            <input id="filter-precioDesde" name="filter-precioDesde" type="hidden" value="" />
                            <input id="filter-precioHasta" name="filter-precioHasta" type="hidden" value="" />
                            <input id="filter-superficieDesde" name="filter-superficieDesde" type="hidden" value="" />
                            <input id="filter-superficieHasta" name="filter-superficieHasta" type="hidden" value="" />
                            <input id="filter-dormitorioDesde" name="filter-dormitorioDesde" type="hidden" value="" />
                            <input id="filter-dormitorioHasta" name="filter-dormitorioHasta" type="hidden" value="" />
                            <input id="filter-banoDesde" name="filter-banoDesde" type="hidden" value="" />
                            <input id="filter-banoHasta" name="filter-banoHasta" type="hidden" value="" />

                            
<div class="search-filters-form">
    <div class="combo-filters">
        <div class="row" >
            <div class="btn-group" id="divOperacion">
                <button id="cmbOperacion" data-toggle="dropdown" class="btn btn-default dropdown-toggle text-left" data-sync-dropdown="filterOperation" data-val="1" type="button" name="operacion">
                    <span class="current-value" data-search="Venta">Venta</span>&nbsp;
                    <i class="fa fa-angle-down"></i>
                </button>
                <ul class="dropdown-menu js-autochange">
                    <li id="liVenta"><a data-val="1" data-search="Venta" href=" #">Venta</a></li>
                    <li id="liArriendo"><a data-val="2" data-search="Arriendo" href=" #">Arriendo</a></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="btn-group" id="divTipos">
                <button id="cmbTipo" data-toggle="dropdown" class="btn btn-default dropdown-toggle text-left" data-sync-dropdown="filterProductType" data-val="2" type="button" name="tipo">
                    <span class="current-value">Departamento</span>&nbsp;
                    <i class="fa fa-angle-down"></i>
                </button>
                <ul class="dropdown-menu js-autochange">
                    <li><a data-val="1" href="#">Casa</a></li>
                    <li><a data-val="2" href="#">Departamento</a></li>
                    <li><a data-val="3" href="#">Oficina</a></li>
                    <li><a data-val="4" href="#">Sitio</a></li>
                    <li><a data-val="5" href="#">Comercial</a></li>
                    <li><a data-val="8" href="#">Industrial</a></li>
                    <li><a data-val="10" href="#">Agrícola</a></li>
                    <li><a data-val="9" href="#">Loteo</a></li>
                    <li><a data-val="6" href="#">Bodega</a></li>
                    <li><a data-val="14" href="#">Parcela</a></li>
                    <li><a data-val="7" href="#">Estacionamiento</a></li>
                    <li><a data-val="16" href="#">Terreno construcción</a></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="btn-group" id="divCaracteristica">
                <button id="cmbCaracteristica" data-toggle="dropdown" class="btn btn-default dropdown-toggle text-left" data-val="3" data-sync-dropdown="filterCaracteristica" type="button" name="caracteristica">
                    <span class="current-value">Nuevas y Usadas</span>&nbsp;
                    <i class="fa fa-angle-down"></i>
                </button>
                <ul class="dropdown-menu js-autochange">
                    <li><a data-val="3" href="#">Nuevas y Usadas</a></li>
                    <li class="divider"></li>
                    <li><a data-val="1" href="#">Nuevas</a></li>
                    <li><a data-val="2" href="#">Usadas</a></li>
                </ul>
            </div>
        </div>
        
    </div>

    <div class="range-filters-group">
        <div class="form-group" id="filter-precios">
            <label id="filter-precios-text" class="control-label text-left" style="margin-bottom: 0">Precio en <span class="moneda-actual-label">pesos</span>:</label>
            <div class="controls" style="margin-left: 0">
                <div class="btn-group">
                    <input class="form-control" type="tel" id="filter-precios-range-desde" placeholder="Desde" maxlength="12" value="">
                    <input class="form-control" type="tel" id="filter-precios-range-hasta" placeholder="Hasta" maxlength="12" value="350.000,00">
                </div>
            </div>
        </div>
        
        <div class="form-group" id="filter-superficie">
            <label id="filter-superficie-text" class="control-label text-left" style="">Superficie m&sup2;:</label>
            <div class="controls" style="margin-left: 0">
                <div class="btn-group">
                    <button id="filter-superficie-tipo" data-toggle="dropdown" class="btn btn-default dropdown-toggle text-left" data-val="1" type="button">
                        <span class="current-value">m&sup2;</span>&nbsp;
                        <i class="fa fa-angle-down"></i>
                    </button>
                    <ul class="dropdown-menu js-autochange">
                        <li><a data-val="1" href="#">m&sup2;</a></li>
                        <li><a data-val="2" href="#">ha</a></li>
                        <li><a data-val="3" href="#">sq ft</a></li>
                    </ul>
                    <input class="form-control" type="tel" id="filter-superficie-range-desde" placeholder="Desde" maxlength="8" value="0,00">
                    <input class="form-control" type="tel" id="filter-superficie-range-hasta" placeholder="Hasta" maxlength="8" value="">
                </div>
            </div>
        </div>
        
        <div class="form-group" id="filter-dormitorios">
            <label style="margin-bottom: 14px" class="control-label text-left" id="filter-dormitorios-text"
                data-i18n-dormitorios="Dormitorios" data-i18n-privados="Privados">Dormitorios:</label>
            <div class="clearfix"></div>
            <input class="invisible" value="0;6" name="dormitorio" id="filter-dormitorios-range" />
        </div>

        <div class="form-group" id="filter-banos">
            <label style="margin-bottom: 14px" class="control-label text-left" id="filter-banos-text">Baños:</label>
            <div class="clearfix"></div>
            <input class="invisible" value="0;6" name="bano" id="filter-banos-range" />
        </div>
    </div>
    <br />
    <div class="combo-filters">
        <div class="row">
            <div class="btn-group" id="divAmoblado">
                <input id="chkAmoblado" class="prettify-checkbox" type="checkbox" value="" >
                <label class="checkbox control-label" for="chkAmoblado">Sólo amoblados</label>
            </div>
        </div>
        <div class="row">
            <div class="btn-group" id="divArriendoTemporada">
                <input id="chkArriendoTemporada" class="prettify-checkbox" type="checkbox" value="" >
                <label class="checkbox control-label" for="chkArriendoTemporada">Sólo arriendo de temporada</label>
            </div>
        </div>
    </div>
    <p class="text-center filters-submit-cnt">
        <button style="padding-left: 46px; padding-right: 46px;" type="submit" class="btn btn-primary btn-lg btn-filter"><strong>Filtrar</strong></button>
    </p>

</div>
                        </form>                        
                        
                        <div class="sidebar-hr"></div>
                    </div>

                    <div id="divPropiedadesDestacadas">
                            <h5>Propiedades destacadas</h5>


    <div class="slider media-slider flex-nav-internal">
        <ul class="slides clearfix">

                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="Jos&#233; Manuel Infante 1155 - Departamento 701" href="/arriendo/departamento/providencia-metropolitana/2385844-jose-manuel-infante-1155-departamento-701-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2385844">
                                            <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/1fe0c093-c36b-46ba-9312-3de5032871a5_w270.jpg" alt="Jos&#233; Manuel Infante 1155 - Departamento 701">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 320.000</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2385844" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2385844-jose-manuel-infante-1155-departamento-701-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="Jos&#233; Manuel Infante 1155 - Departamento 701" data-id="2385844">Jos&#233; Manuel Infante 1155 - Departamento 701</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="ENTRE SUECIA Y BUCAREST" href="/arriendo/departamento/providencia-metropolitana/2246047-entre-suecia-y-bucarest-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2246047">
                                            <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/PCAJ_23463_23463_foto1-301615091_1_2458492_w270.jpg" alt="ENTRE SUECIA Y BUCAREST">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 395.000</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2246047" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2246047-entre-suecia-y-bucarest-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="ENTRE SUECIA Y BUCAREST" data-id="2246047">ENTRE SUECIA Y BUCAREST</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="Marcel Duhaut" href="/arriendo/departamento/providencia-metropolitana/2378141-marcel-duhaut-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2378141">
                                            <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/1f91041e-cda0-4477-82a8-ab5fd39a234e_w270.jpg" alt="Marcel Duhaut">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 480.000</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2378141" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2378141-marcel-duhaut-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="Marcel Duhaut" data-id="2378141">Marcel Duhaut</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="Holanda / Pocuro" href="/arriendo/departamento/providencia-metropolitana/2365691-holanda-pocuro-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2365691">
                                            <img src="http://image.portalinmobiliario.cl/Portal/Propiedades/2365691_pessol4z1gy_w270.jpg" alt="Holanda / Pocuro">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 698.000</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2365691" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2365691-holanda-pocuro-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="Holanda / Pocuro" data-id="2365691">Holanda / Pocuro</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="Barrio Italia Providencia" href="/arriendo/departamento/providencia-metropolitana/2399549-barrio-italia-providencia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2399549">
                                            <img src="http://dah6q9sgmyn3o.cloudfront.net/images/phs/blank.gif" data-src="http://image.portalinmobiliario.cl/Portal/Propiedades/176847b4-da37-4b24-99bc-03062773cedc_w270.jpg" alt="Barrio Italia Providencia">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 737.311</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2399549" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2399549-barrio-italia-providencia-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="Barrio Italia Providencia" data-id="2399549">Barrio Italia Providencia</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento amoblado en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="DUOC ANTONIO VARAS" href="/arriendo/departamento/providencia-metropolitana/2383211-duoc-antonio-varas-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2383211">
                                            <img src="http://dah6q9sgmyn3o.cloudfront.net/images/phs/blank.gif" data-src="http://image.portalinmobiliario.cl/Portal/Propiedades/2383211_shdyo3jwt0j_w270.jpg" alt="DUOC ANTONIO VARAS">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 695.000</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2383211" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2383211-duoc-antonio-varas-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="DUOC ANTONIO VARAS" data-id="2383211">DUOC ANTONIO VARAS</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="General Flores 30" href="/arriendo/departamento/providencia-metropolitana/2393124-general-flores-30-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2393124">
                                            <img src="http://dah6q9sgmyn3o.cloudfront.net/images/phs/blank.gif" data-src="http://image.portalinmobiliario.cl/Portal/Propiedades/3cb9aed7-3312-4fc3-861e-165808702081_w270.jpg" alt="General Flores 30">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 650.000</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2393124" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2393124-general-flores-30-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="General Flores 30" data-id="2393124">General Flores 30</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento amoblado en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="Andr&#233;s de Fuenzalida 98 - Departamento 601" href="/arriendo/departamento/providencia-metropolitana/2372382-andres-de-fuenzalida-98-departamento-601-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2372382">
                                            <img src="http://dah6q9sgmyn3o.cloudfront.net/images/phs/blank.gif" data-src="http://image.portalinmobiliario.cl/Portal/Propiedades/f7a1fcfe-2edc-4180-8c28-3d7242c227b3_w270.jpg" alt="Andr&#233;s de Fuenzalida 98 - Departamento 601">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 585.000</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2372382" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2372382-andres-de-fuenzalida-98-departamento-601-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="Andr&#233;s de Fuenzalida 98 - Departamento 601" data-id="2372382">Andr&#233;s de Fuenzalida 98 - Departamento 601</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="Holanda - Pocuro" href="/arriendo/departamento/providencia-metropolitana/2341087-holanda-pocuro-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2341087">
                                            <img src="http://dah6q9sgmyn3o.cloudfront.net/images/phs/blank.gif" data-src="http://image.portalinmobiliario.cl/Portal/Propiedades/2341087_q20b455o2j4_w270.jpg" alt="Holanda - Pocuro">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 850.000</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2341087" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2341087-holanda-pocuro-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="Holanda - Pocuro" data-id="2341087">Holanda - Pocuro</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento en arriendo</p>
                            </div>
                        </div>
                    </li>
                    <li class='media-block'>
                            <div class="media-block-thumb has-overlay">
                                    <a class="media-block-img" title="Lota 2400" href="/arriendo/departamento/providencia-metropolitana/2332899-lota-2400-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="2332899">
                                            <img src="http://dah6q9sgmyn3o.cloudfront.net/images/phs/blank.gif" data-src="http://image.portalinmobiliario.cl/Portal/Propiedades/2332899_tjdrjlcksvg_w270.jpg" alt="Lota 2400">
                                    </a>


                                <div class="media-block-overlay">
                                    <p><span class="product-price-label">Valor</span> <span class="product-price">$ 711.886</span></p>

                                        <div class="actions-local"><span class="action-local action-favorite remove user-login-required user-fav-toggle" data-pid="2332899" data-gid="2" data-login-interaction="favorite"><i class="fa fa-heart"></i></span></div>
                                </div>


                            </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/arriendo/departamento/providencia-metropolitana/2332899-lota-2400-uda?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="Lota 2400" data-id="2332899">Lota 2400</a>

                            </h4>
                            <div class="media-block-descr">
                                    <p class="all-in-line">Providencia</p>
                                <p>Departamento amoblado en arriendo</p>
                            </div>
                        </div>
                    </li>
        </ul>

    </div>
                            <div class="text-right">
                                <small>
                                    <a id="linkDestacadas" class="text-muted" href="/Propiedades/Destacadas.aspx?comuna=323">Más destacadas</a>
                                </small>
                            </div>
                            <div class="sidebar-hr hidden-xs"></div>
                    </div>
                    
                        <br />
                        <div class="commercials-block">
                            

    <div     >
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="220" height="100" id="flash_2344">
                        <param name="movie" value="http://image.portalinmobiliario.cl/Banners/2345_20150728161252.swf?PaginaID=42"/>
                        <param name="wmode" value="opaque" />
                        <param name="quality" value="high" />
                        <param name="AllowScriptAccess" value="always" />
                        <embed wmode="opaque" src="http://image.portalinmobiliario.cl/Banners/2345_20150728161252.swf?PaginaID=42" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="220" height="100" AllowScriptAccess="always"></embed>
                    </object>
    </div>       
    <div     >
<a target='_self' href='/Handler/ClickBannerHandler.ashx?URL=http://www.portalinmobiliario.com/venta/departamento/macul-metropolitana/5465-alto-vespucio-nva&IDProductoEmpresa=21418&IDBanner=2511&IDPagina=42&Pagina=Nuevo Resultado de Búsqueda&PersonaID=0' >                        <img style="width: 220px; height: 100px" height="100" width="220" data-lazy="http://image.portalinmobiliario.cl/Banners/2511_20151002160732.gif" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" border="0" alt="Alto Vespucio" />
</a>    </div>       
    <div     >
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="220" height="100" id="flash_977">
                        <param name="movie" value="http://image.portalinmobiliario.cl/Banners/1793_20150618175944.swf?PaginaID=42"/>
                        <param name="wmode" value="opaque" />
                        <param name="quality" value="high" />
                        <param name="AllowScriptAccess" value="always" />
                        <embed wmode="opaque" src="http://image.portalinmobiliario.cl/Banners/1793_20150618175944.swf?PaginaID=42" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="220" height="100" AllowScriptAccess="always"></embed>
                    </object>
    </div>       
    <div     >
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="220" height="100" id="flash_2479">
                        <param name="movie" value="http://image.portalinmobiliario.cl/Banners/2493_20150925123908.swf?PaginaID=42"/>
                        <param name="wmode" value="opaque" />
                        <param name="quality" value="high" />
                        <param name="AllowScriptAccess" value="always" />
                        <embed wmode="opaque" src="http://image.portalinmobiliario.cl/Banners/2493_20150925123908.swf?PaginaID=42" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="220" height="100" AllowScriptAccess="always"></embed>
                    </object>
    </div>       

                        </div>
                        <div class="sidebar-hr hidden-xs"></div>
                    <div id="divPremiunLateral">
                            <br />


    <div class="slider media-slider">
        <ul class="slides clearfix">

                    <li class='media-block'>
                        <div class="media-block-thumb">
                                <a title="Edificio EY 32" href="/venta/departamento/providencia-metropolitana/5380-edificio-ey-32-nva?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" data-id="5380">
                                    <img src="/Data/Catalogo/Ads/5380_banner.gif" alt="Edificio EY 32">
                                </a>
                        </div>
                        <div class="media-block-meta">
                            <h4 class="media-block-title">
                                    <a href="/venta/departamento/providencia-metropolitana/5380-edificio-ey-32-nva?tp=2&amp;op=2&amp;iug=323&amp;ca=3&amp;ph=350000&amp;ts=1&amp;mn=1&amp;or=&amp;pg=1&amp;sf=1&amp;sp=0&amp;at=0&amp;pdes=1" title="Edificio EY 32" data-id="5380">Edificio EY 32</a>

                            </h4>
                            <div class="media-block-descr">
                                <p> Cada departamento se transforma en una planta adaptable a los distintos programas seg&#250;n el gusto... </p>
                            </div>
                        </div>
                    </li>
        </ul>

    </div>
                            <div class="sidebar-hr hidden-xs"></div>
                    </div>

                </aside>
            </div>
        </div>
    </div>
</section>

    </div>

    
<footer class="footer">
    <div class="container">

        <div class="row separator-after">
            <div class="col-sm-12 col-md-3">
                <h3>¡Publica con nosotros!</h3>
            </div>
            <div class="col-sm-8 col-md-6">
                    <p class="">¿Eres&nbsp;<a href="/info/portal/inmobiliarias" id="footer-link-inmobiliaria">inmobiliaria</a>&nbsp;o&nbsp;<a href="/info/portal/corredores" id="footer-link-corredor">corredor</a>?</p>
                    <p>Conoce los planes y productos especializados que hemos desarrollado para potenciar tu negocio.</p>
            </div>
            <div class="col-sm-4 col-md-3 text-center">
                <a class="btn btn-primary" href="/info/publicacion" id="footer-link-publicar">Publica tus propiedades</a>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-md-9">
                <nav role="navigation">
                    <ul class="footer-nav" role="menu">
                        <li class="footer-nav-item" role="presentation" data-ga-label="Menu Nuevas">
                            <a href="/catalogo/inicio.asp" title="Propiedades Nuevas / Proyectos Inmobiliarios" class="" role="menuitem" id="menu-nuevas">Nuevas&nbsp;</a>
                            <ul class="footer-sub-nav" role="menu">
                                <li>
                                    <a title="Proyectos inmobiliarios - Propiedades nuevas" href="/catalogo/inicio.asp" role="menuitem" id="menu-nuevas-home">P&aacute;gina principal</a>
                                </li>
                                <li>
                                    <a title="Proyectos inmobiliarios por Comunas de todo Chile" href="/catalogo/default.asp" role="menuitem" id="menu-nuevas-comunas">Por Comunas</a>
                                </li>
                                <li>
                                    <a title="Proyectos inmobiliarios destacados de casas y departamentos" href="/catalogo/destacados.aspx" role="menuitem" id="menu-nuevas-destacados">Destacados</a>
                                </li>
                                    <li>
                                        <a title="Ver proyectos inmobiliarios con Google Maps" href="/Mapas/GMaps/default.asp" role="menuitem" id="menu-nuevas-mapa">Mapa de proyectos</a>
                                    </li>
                                <li>
                                    <a title="Cotice en línea para obtener precios y formas de pago de casas, departamentos y oficinas" href="/Catalogo/Cotol.asp" role="menuitem" id="menu-nuevas-cotizaciones">Cotizaciones en línea</a>
                                </li>
                                <li>
                                    <a title="Proyectos de oficinas" href="/catalogo/oficinas.asp" role="menuitem" id="menu-nuevas-oficinas">Oficinas</a>
                                </li>
                                    <li>
                                        <a title="Proyectos en regiones de segunda vivienda" href="/catalogo/SegundaVivienda.aspx" role="menuitem" id="menu-nuevas-segunda">Segunda Vivienda</a>
                                    </li>
                                <li>
                                    <a title="Promociones y lanzamientos de proyectos inmobiliarios" href="/promos/default.aspx" role="menuitem" id="menu-nuevas-promociones">Promociones</a>
                                </li>
                                <li>
                                    <a title="Inmobiliarias presentes en Portalinmobiliario.com" href="/empresas/inmobiliarias.asp" role="menuitem" id="menu-nuevas-empresas">Por Empresas</a>
                                </li>
                                    <li>
                                        <a title="Software para la gestión inmobiliaria " href="/productos/software.asp" role="menuitem" id="menu-nuevas-software">Software</a>
                                    </li>
                            </ul>
                        </li>
                        <li class="footer-nav-item" role="presentation" data-ga-label="Menu Usadas">
                            <a href="/propiedades/default.asp" title="Propiedades usadas para venta o arriendo" class="" role="menuitem" id="menu-usadas">Usadas&nbsp;</a>
                            <ul class="footer-sub-nav" role="menu" id="propiedades-usadas-nav">
                                <li>
                                    <a title="Casas, departamentos, sitios, oficinas y otras propiedades, nuevas y usadas para venta o arriendo" href="/propiedades/default.asp" role="menuitem" id="menu-usadas-home">P&aacute;gina principal</a>
                                </li>
                                <li>
                                    <a title="Casas y departamentos destacados por Comunas" href="/propiedades/destacadas.aspx" role="menuitem" id="menu-usadas-destacadas">Propiedades destacadas</a>
                                </li>
                                    <li>
                                        <a title="Casas y departamentos para arrendar en vacaciones o fines de semana" href="/propiedades/temporada/default.asp" role="menuitem" id="menu-usadas-temporada">Arriendos de temporada</a>
                                    </li>
                                <li>
                                    <a title="Corredores de propiedades presentes en Portalinmobiliario.com" href="/Empresas/Corredoras.aspx" role="menuitem" id="menu-usadas-empresas">Por Empresas</a>
                                </li>
                                <li>
                                    <a title="Hoteles, residenciales, hosterías, complejos turísticos y otros tipos de propiedades" href="/buscar_resp.asp?TId=20&BusEn=2" role="menuitem" id="menu-usadas-otros">Otros tipos</a>
                                </li>
                                    <li>
                                        <a title="Software para corretaje de propiedades" href="/productos/software.asp" role="menuitem" id="menu-usadas-software">Software</a>
                                    </li>
                            </ul>
                        </li>
                        <li class="footer-nav-item" role="presentation" data-ga-label="Menu Analisis y Noticias">
                            <a title="Noticias e información del mercado inmobiliario" href="/diario/default.asp" class="" role="menuitem" id="menu-noticias">An&#225;lisis y Noticias&nbsp;</a>
                            <ul class="footer-sub-nav" role="menu" id="diario-nav">
                                        <li>
                                            <a title="Noticias, reportajes e informaci&#243;n del mercado inmobiliario" href="/diario/Default.asp" role="menuitem">P&#225;gina principal</a>
                                        </li>
                                        <li>
                                            <a title="Informe de actividad inmobiliaria en Chile" href="/diario/revisar.asp?CanalID=11" role="menuitem">An&#225;lisis</a>
                                        </li>
                                        <li>
                                            <a title="Reportajes y entrevistas" href="/diario/revisar.asp?CanalID=5" role="menuitem">Reportajes y entrevistas</a>
                                        </li>
                                        <li>
                                            <a title="Buscador de noticias de nuestra secci&#243;n An&#225;lisis y Noticias" href="/Diario/buscar.asp" role="menuitem">Buscador de noticias</a>
                                        </li>
                                        <li>
                                            <a title="Subscr&#237;base para recibir las noticias del bolet&#237;n de an&#225;lisis y noticias" href="/Diario/correo_noticias.asp" role="menuitem">Correo de noticias</a>
                                        </li>
                                        <li>
                                            <a title="Opini&#243;n de clientes y usuarios" href="/diario/revisar.asp?CanalID=9" role="menuitem">Clientes opinan</a>
                                        </li>
                                        <li>
                                            <a title="Nuevos proyectos o informaci&#243;n en Portalinmobiliario.com" href="/diario/revisar.asp?CanalID=10" role="menuitem">Nuevo en Portal</a>
                                        </li>
                                        <li>
                                            <a title="Noticias sobre Propiedades Nuevas" href="/diario/revisar.asp?CanalID=24" role="menuitem">Propiedades Nuevas</a>
                                        </li>
                                        <li>
                                            <a title="Noticias sobre Propiedades Usadas" href="/diario/revisar.asp?CanalID=25" role="menuitem">Propiedades Usadas</a>
                                        </li>
                                        <li>
                                            <a title="Noticias sobre Financiamiento" href="/diario/revisar.asp?CanalID=19" role="menuitem">Financiamiento</a>
                                        </li>
                                        <li>
                                            <a title="Noticias sobre Hogar y Decoraci&#243;n" href="/diario/revisar.asp?CanalID=17" role="menuitem">Hogar y Decoraci&#243;n</a>
                                        </li>
                            </ul>
                        </li>
                        <li class="footer-nav-item" role="presentation" data-ga-label="Menu Financiamiento">
                            <a href="/financiamiento/default.aspx" title="Financiamiento de la vivienda" class="" role="menuitem" id="menu-financiamiento">Financiamiento&nbsp;</a>
                            <ul class="footer-sub-nav" role="menu" id="financiamiento-nav">
                                <li>
                                    <a title="Todo acerca de financiamiento con créditos hipotecarios" href="/financiamiento/default.aspx" role="menuitem" id="menu-financiamiento-home">Página principal</a>
                                </li>
                                <li>
                                    <a title="Preguntas frecuentes relacionadas con el financiamiento de una vivienda con créditos hipotecarios" href="/financiamiento/faq.asp" role="menuitem" id="menu-financiamiento-faq">Preguntas frecuentes</a>
                                </li>
                                <li>
                                    <a title="Definición de términos comúnmente usados en relación al financiamiento de una vivienda" href="/financiamiento/glosario/default.asp" role="menuitem" id="menu-financiamiento-glosario">Glosario de términos</a>
                                </li>
                                <li>
                                    <a title="Información acerca de las fuentes de financiamiento para la vivienda" href="/financiamiento/base_a.asp" role="menuitem" id="menu-financiamiento-fuentes">Fuentes de financiamiento</a>
                                </li>
                                <li>
                                    <a title="Información acerca de las empresas presentes de financiamiento para la vivienda" href="/empresas/empresas.asp?Et=5" role="menuitem" id="menu-financiamiento-empresas">Por Empresas</a>
                                </li>
                                <li>
                                    <a title="Acerca de la oferta hipotecaria" href="/financiamiento/oferta_hipotecaria.asp" role="menuitem" id="menu-financiamiento-oferta">Oferta hipotecaria</a>
                                </li>
                            </ul>
                        </li>

                            <li class="footer-nav-item footer-nav-item-the-very-special" role="presentation" data-ga-label="Menu Hogar y Decoracion">
                                <a title="Productos y servicios para el hogar" href="/productos/default.aspx" role="menuitem" id="menu-hogar">Hogar y decoración</a>
                            </li>
                        <li class="footer-nav-item" role="presentation">
                            <span>En latinoamérica</span>
                            <ul class="footer-sub-nav counties-list" role="menu">

                                    <li role="presentation"><a href="http://ar.portalinmobiliario.com" role="menuitem" id="footer-link-argentina">Argentina</a></li>
                                    <li role="presentation"><a href="http://www.portalinmobiliario.com.co" role="menuitem" id="footer-link-colombia">Colombia</a></li>
                                    <li role="presentation"><a href="http://www.portalinmobiliario.com.ec" role="menuitem" id="footer-link-ecuador">Ecuador</a></li>
                                    <li role="presentation"><a href="http://www.GUIADINMUEBLES.com" role="menuitem" id="footer-link-mexico">M&#233;xico</a></li>
                                    <li role="presentation"><a href="http://www.portalinmobiliario.com.pa" role="menuitem" id="footer-link-panama">Panam&#225;</a></li>
                                    <li role="presentation"><a href="http://www.portalinmobiliario.com.pe" role="menuitem" id="footer-link-peru">Per&#250;</a></li>
                                    <li role="presentation"><a href="http://uy.portalinmobiliario.com" role="menuitem" id="footer-link-uruguay">Uruguay</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-sm-12 col-md-3 footer-social">
                <h5>Síguenos:</h5>
                <div class="row">
                    <div class="col-md-12 col-sm-6"><div class="fb-like-box" data-href="https://www.facebook.com/portalinmobiliario" data-width="230" data-colorscheme="light" data-show-faces="false" data-header="false" data-stream="false" data-show-border="false"></div></div>
                    
                    <div class="col-md-12 col-sm-6 twitter-widget"><a href="https://twitter.com/intent/follow?screen_name=portal_inmob" class="btn btn-sm btn-tw btn-tw-share">Seguir a &#64;portal_inmob</a></div>
                </div>
            </div>
        </div>
    </div>
</footer>
<section class="footnote-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-8">
                <p class="footnote-copyright">
                    &#169; 1999-2015 Portalinmobiliario.com.
                    Todos los derechos reservados. Prohibida su reproducción total o parcial por cualquier medio.
                </p>
            </div>
            <div class="col-md-6 col-lg-4">
                <ul class="footer-legal-stuff">
                    <li><a href="/info/portal/acercade" id="footer-link-quienes">Quiénes Somos</a></li>
                    <li>
                        <a href="/info/portal/condiciones/" class="piform-dialog"
                           data-dialog-button-submit="false"
                           data-dialog-button-cancel="false"
                           data-dialog-type="CondicionesUso"
                           data-dialog-size="large"
                           data-dialog-title="Condiciones de uso"
                           aria-haspopup="true"
                           id="footer-link-Condiciones">Condiciones de uso</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<div id="fb-root"></div>


    </form>
</body>


</html>


<table class="table-rg cell" style="height:120px;width:100%;">
                            <tr style="height:0px">
                                <td rowspan="6" style="width:18%"><img alt="" style="width: 150px;height: 100px;box-shadow: 5PX 5PX 15px 1px GRAY;" src="/img_prop/<%# Eval("codigo") %>.jpg" /></td>
                                <td style="width:2%">&nbsp;</td>
                                <td style="width:30%" colspan="3"><span class="label label-info"><asp:Label ID="l_estado" runat="server" Text='<%# Eval("estado_str") %>' /></span>&nbsp;<span class="label label-danger"><asp:Label ID="l_tipo" runat="server" Text='<%# Eval("nom_tipo") %>' /></span></td>
                                <td style="width:25%;text-align:right" colspan="2"><span class="glyphicon glyphicon-user" aria-hidden="true" />&nbsp;<span class="glyphicon glyphicon-earphone" aria-hidden="true" />&nbsp;<span class="glyphicon glyphicon-phone-alt" aria-hidden="true" />&nbsp;<span class="glyphicon glyphicon-envelope" aria-hidden="true" /></td>
                                <td style="width:16%;text-align:right"><asp:Label ID="Label2" runat="server" Font-Bold="true"  Text="VALOR ($)" /></td>
                                <td style="width:9%;text-align:center"><asp:Label ID="l_precio_peso" runat="server" Font-Bold="true" Font-Size="Medium" CssClass="label label-danger" Width="80px" Text='<%# Eval("valor_peso", "{0:0,000}") %>' /></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="3"><asp:Label ID="l_calle" runat="server" Font-Bold="true" Text='<%# Eval("calle") %>' />&nbsp;<asp:Label ID="l_numero" runat="server" Font-Bold="true" Text='<%# Eval("numero") %>' />,&nbsp;<asp:Label ID="l_comuna" runat="server"  Font-Bold="true"  Text='<%# Eval("comuna_str") %>' /></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td style="text-align:right">VALOR (UF)</td>
                                <td style="text-align:right"><asp:Label ID="l_precio_uf" runat="server" Text='<%# Eval("valor_uf", "{0:0,000}") %>' /></tdstyle="text-align:right>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="3"><asp:Label ID="l_villa_condominio" runat="server" Text='<%# Eval("villa_condominio") %>' /></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td style="text-align: right">Código</td>
                                <td style="text-align:left"><asp:Label ID="l_codigo" CssClass="label label-warning" Width="80px" runat="server" Text='<%# Eval("codigo") %>' /></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="text-align:left"><span class="label label-primary"><asp:Label ID="l_habitaciones" runat="server" Text='<%# Eval("habitaciones") %>' /> Habitacion(es)</span>&nbsp;<span class="label label-success"><asp:Label ID="l_banos" runat="server" Text='<%# Eval("banos") %>' /> Baño(s)</span>&nbsp;<span class="label label-default"><asp:Label ID="Label3" runat="server" Text='<%# Eval("estacionamiento") %>' /> Estacionamiento(s)</span></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td style="text-align:right"><button runat="server" class="btn btn-primary" style="border:0px;border-spacing:0px;margin:0px;box-shadow: 5PX 5PX 15px 1px GRAY;"><span aria-hidden="true" class="glyphicon glyphicon-thumbs-up"></span>&nbsp;Me gusta</button></td>
                            </tr>
                        </table>