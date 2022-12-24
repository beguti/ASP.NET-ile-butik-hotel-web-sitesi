using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rezarvasyon_sil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSil_Click(object sender, EventArgs e)
    {
        uye_girisTableAdapters.rezervasyon_yapTableAdapter sil = new uye_girisTableAdapters.rezervasyon_yapTableAdapter();
        sil.DeleteQueryRezarvasyon(int.Parse(TxtSil.Text));
        LblMesaj.Text = "Kayıt Silindi!";
        GridView1.DataBind();
    }
}