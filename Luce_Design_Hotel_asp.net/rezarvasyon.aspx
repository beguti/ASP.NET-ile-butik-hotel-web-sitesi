<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rezarvasyon.aspx.cs" Inherits="rezarvasyon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Rezarvasyon</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 163px;
            height: 57px;
        }
        .style3
        {
            height: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="top_menu1" Runat="Server">
<div id="ust-kapsayici7">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="top_menu2" Runat="Server">
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="icerik" Runat="Server">
  <!--Yazı metinleri kapsayıcı başlangıç-->
	<div id="yazi-metinleri-kapsayici2">
		<div id="giris-kapsa">
		<h3>Yapmak İstediğiniz İşleme Tıklayınız.</h3>
			<table>
				<tr>
					<td class="style2">
                        <asp:Button ID="BtnRezarvasyon_yap" runat="server" 
                            Text="Rezarvasyon Yap" Width="177px" 
                            BackColor="#BB0036" BorderColor="#BB0036" Font-Names="eurofurence light" 
                            Font-Size="22px" ForeColor="White" Height="62px" 
                            onclick="BtnRezarvasyon_yap_Click" /></td>
					<td style="text-align: left" class="style3">
                        <asp:Button ID="BtnRezarvasyon_goruntule" runat="server" 
                            Text="Rezarvasyon Görüntüle" Width="185px" 
                            BackColor="#BB0036" BorderColor="#BB0036" Font-Names="eurofurence light" 
                            Font-Size="22px" ForeColor="White" Height="62px" 
                            onclick="BtnRezarvasyon_goruntule_Click" />
                    </td>
				</tr>
				<tr>
					<td class="style1">
                        <asp:Button ID="BtnRezarvasyon_sil" runat="server" 
                            Text="Rezarvasyon Sil" Width="177px" 
                            BackColor="#BB0036" BorderColor="#BB0036" Font-Names="eurofurence light" 
                            Font-Size="22px" ForeColor="White" Height="62px" 
                            onclick="BtnRezarvasyon_sil_Click" /></td>
					<td style="text-align: left">
                        <asp:Button ID="BtnBilgilerimi_guncelle0" runat="server" 
                            Text="Bilgilerimi Güncelle" Width="185px" 
                            BackColor="#BB0036" BorderColor="#BB0036" Font-Names="eurofurence light" 
                            Font-Size="22px" ForeColor="White" Height="62px" 
                            onclick="BtnUye_guncelle_Click" style="text-align: center" />
                    </td>
				</tr>
				</table>
		</div>
    </div>
</asp:Content>

