using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class uye_guncelle : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string ad = Session["uye_adi"].ToString();
        uye_girisTableAdapters.uyelerTableAdapter baglan = new uye_girisTableAdapters.uyelerTableAdapter();
        if (baglan.GetDataByKullaniciSorgu(ad).Count > 0)
        {
            TxtAd.Text = baglan.GetDataByKullaniciSorgu(ad).Rows[0][1].ToString();
            TxtSoyad.Text = baglan.GetDataByKullaniciSorgu(ad).Rows[0][2].ToString();
            TxtEposta.Text = baglan.GetDataByKullaniciSorgu(ad).Rows[0][8].ToString();
            TxtUyeSifre.Text= baglan.GetDataByKullaniciSorgu(ad).Rows[0][10].ToString();
            TxtUyeSifreTekrar.Text= baglan.GetDataByKullaniciSorgu(ad).Rows[0][11].ToString();
        }
    }

    protected void uye_guncelle_Click(object sender, EventArgs e)
    {
       string ad = Session["uye_adi"].ToString();
       uye_girisTableAdapters.uyelerTableAdapter guncelle = new uye_girisTableAdapters.uyelerTableAdapter();
       guncelle.UpdateQuery(TxtAd.Text, TxtSoyad.Text, TxtEposta.Text,
           TxtUyeSifre.Text, TxtUyeSifreTekrar.Text, ad);
        LblMesaj.Text = "Üyelik bilgileriniz güncellendi!";
    }
}