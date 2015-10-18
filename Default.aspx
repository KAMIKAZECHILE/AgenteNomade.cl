<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>AGENTE NOMADE - Buscadir de Ofertas Inmobiliarias / Compra - Vende - Arrienda</title>

    <meta name="description" content="Source code generated using layoutit.com"/>
    <meta name="author" content="LayoutIt!"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>

  </head>
  <body>
  <form runat="server">
    <%--Barra superior--%>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbarCollapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><asp:Image runat="server" ID="Image1" ImageUrl="~/img/logo_h.png" /></a>
				    </div>
				    <div class="collapse navbar-collapse navbarCollapse">
					    <ul class="nav navbar-nav navbar-right1">
						    <li>
							    <button class="btn btn-success" type="button">Publicar</button>&nbsp;&nbsp;
						    </li>
						    <li class="dropdown">
                                <div class="btn-group">
                                    <a class="btn btn-primary" href="#"><i class="icon-user icon-white"></i> Nosotros</a>
                                    <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>&nbsp;&nbsp;
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Quienes Somos</a></li>
                                        <li><a href="#">Vision</a></li>
	                                    <li><a href="#">Mision</a></li>
                                        <li><a href="#">Estructura</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Contactenos</a></li>
                                    </ul>
                                </div>
						    </li>
					    </ul>
				    </div>
			    </nav>

    <%--Pagina Principal--%>
    <div class="container-fluid">
	    <div class="row2">
		    <div class="col-md-12">
			    <div class="page-header">
                    <h3><small>Buscador de Ofertas Inmobiliarias</small><br />Compra / Vende / Arrienda</h3>
			    </div>
		    </div>
	    </div>
        <div class="row3">
            <div class="col-md-2">
                <div class="espacio_chico">
                    <p><asp:Label ID="label_titulo" CssClass="titulo-centrado" runat="server" Text="CUADRO DE BUSQUEDA" Font-Bold="true" /></p>
                    <p><asp:Label ID="label_negocio" runat="server" Text="OPERACIÓN" Font-Size="X-Small" /></p>
                    <p><asp:Label ID="req_negocio" runat="server" Text="REQUERIDO" Font-Bold="true" Font-Size="X-Small" Font-Names="ARIAL" ForeColor="White" BackColor="Red" Visible="false" CssClass="text-center label label-default"  /></p>
                    <p><asp:DropDownList id="negocio" runat="server" CssClass="btn btn-warning" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="negocio_SelectedIndexChanged" /></p>
                    <p><asp:Label ID="label_tipo" runat="server" Text="TIPO DE PROPIEDAD" Font-Size="X-Small" /></p>
                    <p><asp:Label ID="req_tipo" runat="server" Text="REQUERIDO" Font-Bold="true" Font-Size="X-Small" Font-Names="ARIAL" ForeColor="White" BackColor="Red" Visible="false" CssClass="text-center label label-default"  /></p>
                    <p><asp:DropDownList id="tipo" runat="server" CssClass="btn btn-primary" Width="100%" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="tipo_SelectedIndexChanged" /></p>
                    <p><asp:Label ID="label_region" runat="server" Text="REGIÓN" Font-Size="X-Small" /></p>
                    <p><asp:Label ID="req_region" runat="server" Text="REQUERIDO" Font-Bold="true" Font-Size="X-Small" Font-Names="ARIAL" ForeColor="White" BackColor="Red" Visible="false" CssClass="text-center label label-default"  /></p>
                    <p><asp:DropDownList id="region" runat="server" CssClass="btn btn-primary" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="region_SelectedIndexChanged" Enabled="false" /></p>
                    <p><asp:Label ID="label_ciudad" runat="server" Text="CIUDAD/COMUNA" Font-Size="X-Small" /></p>
                    <p><asp:Label ID="rep_region" runat="server" Text="REQUERIDO" Font-Bold="true" Font-Size="X-Small" Font-Names="ARIAL" ForeColor="White" BackColor="Red" Visible="false" CssClass="text-center label label-default"  /></p>
                    <p><asp:DropDownList id="ciudad" runat="server" CssClass="btn btn-primary" Width="100%" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="ciudad_SelectedIndexChanged">
                        <asp:ListItem Text="(Seleccione)" Value="0" />
                    </asp:DropDownList></p>
                    <table class="col-md-12">
                        <tr>
                            <td class="text-left">
                                <p><asp:Label ID="label_monto_desde" runat="server" Text="DESDE ($)" Font-Size="X-Small" /></p>
                                <p><asp:TextBox ID="desde" runat="server" Text="Desde" Width="90px" Enabled="false" TextMode="Number" /></p>
                            </td>
                            <td class="text-right">
                                <p><asp:Label ID="label_monto_hasta" runat="server" Text="HASTA ($)" Font-Size="X-Small" /></p>
                                <p><asp:TextBox ID="hasta" runat="server" Text="Hasta" Width="90px" Enabled="false" TextMode="Number" /></p>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="buscar_btn" runat="server" Text="Buscar" Width="100%" Height="22px" OnClick="buscar_btn_Click"/>
                    <asp:Label ID="label_botton" runat="server" Text="" CssClass="text-center label label-default" Width="100%" Font-Bold="true" Font-Size="X-Small" Font-Names="ARIAL" ForeColor="White" BackColor="Red" Visible="false" />
                    <p>&nbsp;</p>
                </div>
                <p>&nbsp;</p>
		    </div><%--columna de busqueda--%>
		    <div class="col-md-10">
                <div class="row3">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="codigo" Width="100%" ShowHeader="true" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px" CellPadding="3" ShowFooter="False" HeaderStyle-Height="35px" HeaderStyle-HorizontalAlign="left">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="modal-backdrop.in"/>
                    <HeaderTemplate>&nbsp;&nbsp;Resultados de su Busqueda:&nbsp;</HeaderTemplate>
                    <ItemStyle ForeColor="#000066" CssClass="linea-abajo"/>
                    <ItemTemplate>
                        <div class="row-detalle center">
                            <div class="col-sm-3">
                                <img alt="" class="img-detalle" src="/img_prop/<%# Eval("codigo") %>.jpg" />
                            </div>
                            <div class="col-sm-9">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p><asp:Label ID="Label5" CssClass="label label-info" runat="server" Text='<%# Eval("estado_str") %>' />&nbsp;<asp:Label ID="Label6" runat="server" CssClass="label label-danger" Text='<%# Eval("nom_tipo") %>' /></p>
                                        <h4><asp:Label ID="Label7" runat="server" Font-Bold="true" Text='<%# Eval("calle") %>' />&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="true" Text='<%# Eval("numero") %>' />,&nbsp;<asp:Label ID="Label9" runat="server"  Font-Bold="true"  Text='<%# Eval("comuna_str") %>' /></h4>
                                        <p><asp:Label ID="Label10" runat="server" Text='<%# Eval("villa_condominio") %>' /></p>
                                        <p><span class="label label-primary"><asp:Label ID="Label11" runat="server" Text='<%# Eval("habitaciones") %>' /> Habitacion(es)</span>&nbsp;<span class="label label-success"><asp:Label ID="Label12" runat="server" Text='<%# Eval("banos") %>' /> Baño(s)</span>&nbsp;<span class="label label-default"><asp:Label ID="Label13" runat="server" Text='<%# Eval("estacionamiento") %>' /> Estacionamiento(s)</span></p>
                                    </div>
                                    <div class="col-sm-3">
                                        <p><asp:Button runat="server" ID="btn_ver" CssClass="btn btn-danger" Text="Ver" />&nbsp;<asp:Button runat="server" ID="btn_guardar" CssClass="btn btn-warning" Text="Seleccionar" /></p>
                                        <p><span class="glyphicon glyphicon-user" aria-hidden="true" />&nbsp;<span class="glyphicon glyphicon-earphone" aria-hidden="true" />&nbsp;<span class="glyphicon glyphicon-phone-alt" aria-hidden="true" />&nbsp;<span class="glyphicon glyphicon-envelope" aria-hidden="true" /></p>
                                    </div>
                                    <div class="col-sm-3">
                                        <p class="letra-chica">VALOR ($):</p>
                                        <p><asp:Label ID="Label14" runat="server" width="90px" Font-Bold="true" Font-Size="Medium" Text='<%# Eval("valor_peso", "{0:0,000}") %>' /></p>
                                        <p class="letra-chica">VALOR (UF):</p>
                                        <p><asp:Label ID="Label4" runat="server" Font-Bold="true" Font-Size="Medium" Width="80px" Text='<%# Eval("valor_uf", "{0:0,000}") %>' /></p>
                                        <p class="letra-chica">CODIGO: <asp:Label ID="Label15" Width="80px" runat="server" Text='<%# Eval("codigo") %>' /></p>
                                    </div>
                                </div>            
                            </div>    
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle Font-Names="Sans Serif" BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                </div>
		    </div><%--pagina de resultados--%>
        </div>
    </div>

    <div class="clearfix" />

    <%--Barra Inferior--%>
    <nav class="navbar navbar-default" role="banner" >
        <div class="form-group">
            <table class="col-md-12">
                <tr>
                    <td class="col-md-6 text-left">
						<asp:Label runat="server" ID="Label_Suscribete" Text="SUSCRIBA SU EMAIL" Font-Bold="true" /><br /><asp:Label runat="server" ID="Label1" Text="Reciba Ofertas Inmobiliarias seleccionadas para Usted." Font-Size="small" /><br />
                        <asp:TextBox runat="server" ID="Mail_Suscripcion" />&nbsp;&nbsp;<asp:Button runat="server" ID="Suscribir" Text="Suscribirse" />
                    </td>
                    <td class="col-md-6 text-right">
                        <address><br /><strong>AGENTE NOMADE</strong><br/> Marin 227, Providencia<br /> Santiago, Chile<br /> CP 7501337<br/> <abbr title="Phone"></abbr></address>
                    </td>
                </tr>
            </table>
        </div>
    </nav>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </form>
  </body>
</html>