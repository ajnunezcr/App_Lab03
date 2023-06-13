using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Lab03.Data;

namespace App_Lab03.Pages
{
    public partial class ListaProvincias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using(PV2021C3_Lab03Entities db = new PV2021C3_Lab03Entities())
                {
                    var listaProvincias = db.spConsultarProvincias().ToList();
                    
                    grdProvincias.DataSource = listaProvincias;                   
                    grdProvincias.DataBind();
                    
                }
                    
            }  
            catch
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }
        protected void gvTablaProvincias_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[2].Visible = false;
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[2].Visible = false;
            }
        }
    }

}