using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rezarvasyon_yap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LblKullanici.Text = Session["isim"].ToString();

        //Çocuk 1 için yaş yazdırma
        for (int i = 0; i <= 15; i++)
        {
            DdlCocuk1_yas.Items.Add(i.ToString());
        }

        //Çocuk 2 için yaş yazdırma
        for (int i = 0; i <= 15; i++)
        {
            DdlCocuk2_yas.Items.Add(i.ToString());
        }

        //Çocuk 3 için yaş yazdırma
        for (int i = 0; i <= 15; i++)
        {
            DdlCocuk3_yas.Items.Add(i.ToString());
        }
        PnlCocukSayisi.Visible = false;

        //Oda fiyatı
        LblFiyat.Text = "80 TL";

        //Gece sayısı
        for (int i = 1; i <= 31; i++)
        {
            DdlGece_sayisi.Items.Add(i.ToString());
        }
    }

    //Çocuk sayısı seçildiğinde panel göster veya gösterme.
    protected void DdlCocuk_sayisi_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DdlCocuk_sayisi.SelectedIndex == 0)
        {
            PnlCocukSayisi.Visible=false;
        }
        else if (DdlCocuk_sayisi.SelectedIndex == 1)
        {
            PnlCocukSayisi.Visible = true;
            PanelCocuk1.Visible = true;
            PanelCocuk2.Visible = false;
            PanelCocuk3.Visible = false;
        }
        else if (DdlCocuk_sayisi.SelectedIndex == 2)
        {
            PnlCocukSayisi.Visible = true;
            PanelCocuk1.Visible = true;
            PanelCocuk2.Visible = true;
            PanelCocuk3.Visible = false;
        }
        else
        {
            PnlCocukSayisi.Visible = true;
            PanelCocuk1.Visible = true;
            PanelCocuk2.Visible = true;
            PanelCocuk3.Visible = true;
        }
    }

    //Odaların seçimine göre geceliğinin fiyatı.
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DdlOda_turu.SelectedIndex == 1)
        {
            LblFiyat.Text = "100 TL";
        }
        else if (DdlOda_turu.SelectedIndex == 2)
        {
            LblFiyat.Text = "120 TL";
        }
        else if (DdlOda_turu.SelectedIndex == 3)
        {
            LblFiyat.Text = "150 TL";
        }
        else
        {
            LblFiyat.Text = "80 TL";
        }

        
    }
 
    protected void BtnRezarvasyon_Click(object sender, EventArgs e)
    {
        uye_girisTableAdapters.oda_sayisiTableAdapter kontrol = new uye_girisTableAdapters.oda_sayisiTableAdapter();
        int oda=DdlOda_turu.SelectedIndex;
        int sayi=int.Parse(kontrol.GetDataBySayi(oda).Rows[0][2].ToString());
        if(0 < sayi)
        {
            sayi--;
            kontrol.UpdateQuery(sayi.ToString(), oda);
            uye_girisTableAdapters.rezervasyon_yapTableAdapter ekle = new uye_girisTableAdapters.rezervasyon_yapTableAdapter();
            ekle.Insert(Session["isim"].ToString(), int.Parse(DdlKisi_sayisi.Text), int.Parse(DdlCocuk_sayisi.Text), 
            int.Parse(DdlCocuk1_yas.Text), int.Parse(DdlCocuk2_yas.Text), int.Parse(DdlCocuk3_yas.Text),
            DdlOda_turu.Text, txtGiris.Text, txtCikis.Text, int.Parse(DdlGece_sayisi.Text), Session["uye_adi"].ToString());
            LblRezarvasyon.Text = "Rezarvasyonunuz yapılmıştır!";
       }
        else
            LblRezarvasyon.Text = "Oda rezervelidir!";
    }
}