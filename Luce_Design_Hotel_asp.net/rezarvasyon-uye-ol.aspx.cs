using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rezarvasyon_uye_ol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Günü yazdırma
        for (int i = 1; i <= 31; i++)
        {
            DdlDogum_gunu.Items.Add(i.ToString());
        }

        //Ayı yazdırma
        for (int i = 1; i <= 12; i++)
        {
            DdlDogum_ayi.Items.Add(i.ToString());
        }

        //DateTime.Now.Year diyerek şu andaki sistem takvimimdeki güncel yıl bilgisini alıyorum.
        for (int i = 1928; i <= DateTime.Now.Year; i++)
        {
            DdlDogum_yili.Items.Add(i.ToString());
        }
    }
    protected void uye_ol_Click(object sender, EventArgs e)
    {
        uye_girisTableAdapters.uyelerTableAdapter ekle = new uye_girisTableAdapters.uyelerTableAdapter();
        ekle.Insert(TxtAd.Text, TxtSoyad.Text,DdlDogum_gunu.SelectedValue ,DdlDogum_ayi.SelectedValue,DdlDogum_yili.SelectedValue, RblCinsiyet.Text, TxtTelefon.Text, TxtEposta.Text,
        TxtUyeAdi.Text, TxtUyeSifre.Text, TxtUyeSifreTekrar.Text);
        LblMesaj.Text = "Üye olunmuştur! Devam etmek için tıklayınız...";
    }
    protected void  TxtUyeAdi_TextChanged(object sender, EventArgs e)
    {
        uye_girisTableAdapters.uyelerTableAdapter sorgu = new uye_girisTableAdapters.uyelerTableAdapter();
        if (sorgu.GetDataByKullaniciSorgu(TxtUyeAdi.Text).Count > 0)
        {
            if (TxtUyeAdi.Text == sorgu.GetDataByKullaniciSorgu(TxtUyeAdi.Text).Rows[0][9].ToString())
            {
                LblUyeMesaj.Text = "Bu Kullanıcı ismi bulunmaktadır.";
                TxtUyeAdi.Text = "";
            }
            else
                LblUyeMesaj.Text = " ";
        }
    }
}
