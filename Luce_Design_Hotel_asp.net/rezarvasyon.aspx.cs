using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rezarvasyon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnRezarvasyon_goruntule_Click(object sender, EventArgs e)
    {
        Response.Redirect("rezarvasyon-goruntule.aspx");
    }
    protected void BtnRezarvasyon_yap_Click(object sender, EventArgs e)
    {
        Response.Redirect("rezarvasyon-yap.aspx");
    }
    protected void BtnRezarvasyon_sil_Click(object sender, EventArgs e)
    {
        Response.Redirect("rezarvasyon-sil.aspx");
    }
    protected void BtnUye_guncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("uye-guncelle.aspx");
    }
}