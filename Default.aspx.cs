using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Text;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    String ConnectionString = "server=127.0.0.1;uid=root;pwd=401240;database=portal;";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (var conn = new MySqlConnection(ConnectionString))
            {
                conn.Open();
                /* LLENA EL DROPBOXLIST OPERACION */
                using (var cmd = new MySqlCommand("select id_negocio, nom_negocio from negocio", conn))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            negocio.DataSource = reader;
                            negocio.DataValueField = "id_negocio";
                            negocio.DataTextField = "nom_negocio";
                            negocio.DataBind();
                        }
                    }
                }
                /* LLENA EL DROPBOXLIST TIPO DE PROPIEDAD */
                using (var cmd1 = new MySqlCommand("select id_tipo, nom_tipo from tipo", conn))
                {
                    using (var reader1 = cmd1.ExecuteReader())
                    {
                        if (reader1.HasRows)
                        {
                            tipo.DataSource = reader1;
                            tipo.DataValueField = "id_tipo";
                            tipo.DataTextField = "nom_tipo";
                            tipo.DataBind();
                        }
                    }
                }
                /* LLENA EL DROPBOXLIST REGION */
                using (var cmd2 = new MySqlCommand("select id_re, str_descripcion from region_cl", conn))
                {
                    using (var reader2 = cmd2.ExecuteReader())
                    {
                        if (reader2.HasRows)
                        {
                            region.DataSource = reader2;
                            region.DataValueField = "id_re";
                            region.DataTextField = "str_descripcion";
                            region.DataBind();
                        }
                    }
                }
                conn.Close();
            }
        }
    }

    protected void region_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (var conn = new MySqlConnection(ConnectionString))
        {
            ciudad.Enabled = true;
            conn.Open();
            /* LLENA EL DROPBOXLIST COMUNA */
            string otro = region.Items[region.SelectedIndex].Value;
            string union = "SELECT comuna_cl.id_co, comuna_cl.str_descripcion FROM region_cl LEFT JOIN (provincia_cl LEFT JOIN comuna_cl ON provincia_cl.id_pr = comuna_cl.id_pr) ON region_cl.id_re = provincia_cl.id_re WHERE ((region_cl.id_re)=" + otro + ")";
            using (var cmd4 = new MySqlCommand(union, conn))
            {
                using (var reader4 = cmd4.ExecuteReader())
                {
                    if (reader4.HasRows)
                    {
                        ciudad.DataSource = reader4;
                        ciudad.DataValueField = "id_co";
                        ciudad.DataTextField = "str_descripcion";
                        ciudad.DataBind();
                    }
                }
            }
            conn.Close();
        }
    }

    protected void negocio_SelectedIndexChanged(object sender, EventArgs e)
    {
        tipo.Enabled = true;
    }

    protected void tipo_SelectedIndexChanged(object sender, EventArgs e)
    {
        region.Enabled = true;
    }

    protected void ciudad_SelectedIndexChanged(object sender, EventArgs e)
    {
        desde.Enabled = true;
        hasta.Enabled = true;
    }

    protected void Nueva_tabla(String neg, String tip, String reg, String ciu, double de, double ha)
    {

        MySqlConnection objConn = new MySqlConnection(ConnectionString);
        objConn.Open();

        /*String strSQL = "SELECT propiedades.codigo, negocio.nom_negocio, tipo.nom_tipo, region_cl.str_descripcion, comuna_cl.str_descripcion as comuna_str, estado.str_descripcion as estado_str, propiedades.calle, propiedades.numero, propiedades.villa_condominio, propiedades.habitaciones, propiedades.banos, propiedades.estacionamiento, propiedades.valor_peso, propiedades.valor_uf, tipo_tramitante.nombre_tipo_tramitante, propiedades.fecha, propiedades.vigente FROM((((((propiedades LEFT JOIN comuna_cl ON propiedades.comuna_ciudad = comuna_cl.id_co) LEFT JOIN negocio ON propiedades.operacion = negocio.id_negocio) LEFT JOIN tipo ON propiedades.tipo = tipo.id_tipo) LEFT JOIN region_cl ON propiedades.region = region_cl.id_re) LEFT JOIN estado ON propiedades.estado = estado.id_estado) LEFT JOIN tramitante ON propiedades.tramitante = tramitante.id_tramitante) LEFT JOIN tipo_tramitante ON tramitante.tipo_tramitante = tipo_tramitante.id_tipo_tramitante WHERE(((negocio.nom_negocio) = 'ARRENDAR') AND((tipo.nom_tipo) = 'CASA') AND((region_cl.str_descripcion) = 'METROPOLITANA DE SANTIAGO') AND((comuna_cl.str_descripcion) = 'MAIPÚ'))";*/

        if (ha == 0)
        {
            if (reg != "0")
            {
                if (ciu != "0")
                {
                    String strSQL = String.Format("SELECT propiedades.codigo, negocio.nom_negocio, tipo.nom_tipo, region_cl.str_descripcion, comuna_cl.str_descripcion as comuna_str, estado.str_descripcion as estado_str, propiedades.calle, propiedades.numero, propiedades.villa_condominio, propiedades.habitaciones, propiedades.banos, propiedades.estacionamiento, propiedades.valor_peso, propiedades.valor_uf, tipo_tramitante.nombre_tipo_tramitante, propiedades.fecha, propiedades.vigente FROM((((((propiedades LEFT JOIN comuna_cl ON propiedades.comuna_ciudad = comuna_cl.id_co) LEFT JOIN negocio ON propiedades.operacion = negocio.id_negocio) LEFT JOIN tipo ON propiedades.tipo = tipo.id_tipo) LEFT JOIN region_cl ON propiedades.region = region_cl.id_re) LEFT JOIN estado ON propiedades.estado = estado.id_estado) LEFT JOIN tramitante ON propiedades.tramitante = tramitante.id_tramitante) LEFT JOIN tipo_tramitante ON tramitante.tipo_tramitante = tipo_tramitante.id_tipo_tramitante WHERE(((negocio.id_negocio) = {0}) AND((tipo.id_tipo) = {1}) AND((region_cl.id_re) = {2}) AND((comuna_cl.id_co) = {3}));", neg, tip, reg, ciu);
                    MySqlCommand objCmd = new MySqlCommand(strSQL, objConn);
                    System.Diagnostics.Debug.WriteLine(strSQL);
                    var dtReader = objCmd.ExecuteReader();
                    DataList1.DataSource = dtReader;
                    DataList1.DataBind();
                    dtReader.Close();
                    dtReader = null;
                }
                else
                {
                    String strSQL = String.Format("SELECT propiedades.codigo, negocio.nom_negocio, tipo.nom_tipo, region_cl.str_descripcion, comuna_cl.str_descripcion as comuna_str, estado.str_descripcion as estado_str, propiedades.calle, propiedades.numero, propiedades.villa_condominio, propiedades.habitaciones, propiedades.banos, propiedades.estacionamiento, propiedades.valor_peso, propiedades.valor_uf, tipo_tramitante.nombre_tipo_tramitante, propiedades.fecha, propiedades.vigente FROM((((((propiedades LEFT JOIN comuna_cl ON propiedades.comuna_ciudad = comuna_cl.id_co) LEFT JOIN negocio ON propiedades.operacion = negocio.id_negocio) LEFT JOIN tipo ON propiedades.tipo = tipo.id_tipo) LEFT JOIN region_cl ON propiedades.region = region_cl.id_re) LEFT JOIN estado ON propiedades.estado = estado.id_estado) LEFT JOIN tramitante ON propiedades.tramitante = tramitante.id_tramitante) LEFT JOIN tipo_tramitante ON tramitante.tipo_tramitante = tipo_tramitante.id_tipo_tramitante WHERE(((negocio.id_negocio) = {0}) AND((tipo.id_tipo) = {1}) AND((region_cl.id_re) = {2}));", neg, tip, reg);
                    MySqlCommand objCmd = new MySqlCommand(strSQL, objConn);
                    System.Diagnostics.Debug.WriteLine(strSQL);
                    var dtReader = objCmd.ExecuteReader();
                    DataList1.DataSource = dtReader;
                    DataList1.DataBind();
                    dtReader.Close();
                    dtReader = null;
                }
            }
            else
            {
                String strSQL = String.Format("SELECT propiedades.codigo, negocio.nom_negocio, tipo.nom_tipo, region_cl.str_descripcion, comuna_cl.str_descripcion as comuna_str, estado.str_descripcion as estado_str, propiedades.calle, propiedades.numero, propiedades.villa_condominio, propiedades.habitaciones, propiedades.banos, propiedades.estacionamiento, propiedades.valor_peso, propiedades.valor_uf, tipo_tramitante.nombre_tipo_tramitante, propiedades.fecha, propiedades.vigente FROM((((((propiedades LEFT JOIN comuna_cl ON propiedades.comuna_ciudad = comuna_cl.id_co) LEFT JOIN negocio ON propiedades.operacion = negocio.id_negocio) LEFT JOIN tipo ON propiedades.tipo = tipo.id_tipo) LEFT JOIN region_cl ON propiedades.region = region_cl.id_re) LEFT JOIN estado ON propiedades.estado = estado.id_estado) LEFT JOIN tramitante ON propiedades.tramitante = tramitante.id_tramitante) LEFT JOIN tipo_tramitante ON tramitante.tipo_tramitante = tipo_tramitante.id_tipo_tramitante WHERE(((negocio.id_negocio) = {0}) AND((tipo.id_tipo) = {1}));", neg, tip);
                MySqlCommand objCmd = new MySqlCommand(strSQL, objConn);
                System.Diagnostics.Debug.WriteLine(strSQL);
                var dtReader = objCmd.ExecuteReader();
                DataList1.DataSource = dtReader;
                DataList1.DataBind();
                dtReader.Close();
                dtReader = null;
            }
        }
        else
        {
            String strSQL = String.Format("SELECT propiedades.codigo, negocio.nom_negocio, tipo.nom_tipo, region_cl.str_descripcion, comuna_cl.str_descripcion as comuna_str, estado.str_descripcion as estado_str, propiedades.calle, propiedades.numero, propiedades.villa_condominio, propiedades.habitaciones, propiedades.banos, propiedades.estacionamiento, propiedades.valor_peso, propiedades.valor_uf, tipo_tramitante.nombre_tipo_tramitante, propiedades.fecha, propiedades.vigente FROM((((((propiedades LEFT JOIN comuna_cl ON propiedades.comuna_ciudad = comuna_cl.id_co) LEFT JOIN negocio ON propiedades.operacion = negocio.id_negocio) LEFT JOIN tipo ON propiedades.tipo = tipo.id_tipo) LEFT JOIN region_cl ON propiedades.region = region_cl.id_re) LEFT JOIN estado ON propiedades.estado = estado.id_estado) LEFT JOIN tramitante ON propiedades.tramitante = tramitante.id_tramitante) LEFT JOIN tipo_tramitante ON tramitante.tipo_tramitante = tipo_tramitante.id_tipo_tramitante WHERE(((negocio.id_negocio) = {0}) AND((tipo.id_tipo) = {1}) AND((region_cl.id_re) = {2}) AND((comuna_cl.id_co) = {3}) AND ((propiedades.valor_peso) Between {4} And {5}));", neg, tip, reg, ciu, de, ha);
            MySqlCommand objCmd = new MySqlCommand(strSQL, objConn);
            System.Diagnostics.Debug.WriteLine(strSQL);
            var dtReader = objCmd.ExecuteReader();
            DataList1.DataSource = dtReader;
            DataList1.DataBind();
            dtReader.Close();
            dtReader = null;
        }

        objConn.Close();

    }


    protected void buscar_btn_Click(object sender, EventArgs e)
    {
        String neg = "0", tip = "0", reg = "0", ciu = "0";
        double de = 0, ha = 0;

        /* VALIDAR LOS CAMPOS ANTES DE BUSCAR */
        /* tipo de negocio opcion 0: " + negocio.Items[negocio.SelectedIndex].Text; */

        if (negocio.SelectedIndex == 0)
        {
            label_botton.Visible = true;
            req_negocio.Visible = true;
            label_botton.Text = "ERROR - CAMPOS REQUERIDOS";
        }
        else
        {
            label_botton.Visible = false;
            req_negocio.Visible = false;
            label_botton.Text = "";
            neg = negocio.Items[negocio.SelectedIndex].Value;
        }

        if (tipo.Enabled == true)
        {
            if (tipo.SelectedIndex == 0)
            {
                label_botton.Visible = true;
                req_tipo.Visible = true;
                label_botton.Text = "ERROR - CAMPOS REQUERIDOS";
            }
            else
            {
                label_botton.Visible = false;
                req_tipo.Visible = false;
                label_botton.Text = "";
                tip = tipo.Items[tipo.SelectedIndex].Value;
            }
        }
        /* CARGAR EL LISTADO */
        reg = region.Items[region.SelectedIndex].Value;
        ciu = ciudad.Items[ciudad.SelectedIndex].Value;

        /*verificar q sea string el campo desde y hasta*/
        if (desde.Text.Length > 1)
        {
            if (desde.Text != "Desde")
            {
                de = Convert.ToDouble(desde.Text);
            }
            else
            {
                de = 0;
            }
        }
        else
        {
            de = 0;
        }

        if (hasta.Text.Length > 1)
        {
            if (hasta.Text != "Hasta")
            {
                ha = Convert.ToDouble(hasta.Text);
            }
            else
            {
                ha = 0;
            }
        }
        else
        {
            ha = 0;
        }

        if (de > ha)
        {
            ha = de;
            label_botton.Visible = true;
            label_botton.Text = "VALOR 'HASTA' MENOR QUE 'DESDE'";
        }


        System.Diagnostics.Debug.WriteLine("neg:" + neg + " tip:" + tip + " reg:" + reg + " ciu:" + ciu + " de:" + de + " ha:" + ha);
        if (label_botton.Text.Length < 2)
        {
            this.Nueva_tabla(neg, tip, reg, ciu, de, ha);
        }


    }
}