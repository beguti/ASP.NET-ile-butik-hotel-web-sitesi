using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rezarvasyon_giris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void uye_giris_Click(object sender, EventArgs e)
    {
        uye_girisTableAdapters.uyelerTableAdapter sorgula = new uye_girisTableAdapters.uyelerTableAdapter();
        if (sorgula.GetDataByKullaniciSorgu(TxtUye_adi .Text).Count > 0)
        {
            if (TxtUye_adi.Text == sorgula.GetDataByKullaniciSorgu(TxtUye_adi.Text).Rows[0][9].ToString() &&
               TxtSifre.Text == sorgula.GetDataByKullaniciSorgu(TxtUye_adi.Text).Rows[0][10].ToString())
            {

                Session["isim"] = sorgula.GetDataByKullaniciSorgu(TxtUye_adi.Text).Rows[0][1];
                Session["uye_adi"] = sorgula.GetDataByKullaniciSorgu(TxtUye_adi.Text).Rows[0][9];
                Response.Redirect("rezarvasyon.aspx");
            }
            else
            {
                LblMesaj.Text = "Kullanıcı adı ya da parola hatalı";
            }
        }
        else
        {
            LblMesaj.Text = "Bu kullanıcı yok";
        }
    }
}