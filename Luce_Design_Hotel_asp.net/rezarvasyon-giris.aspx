<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rezarvasyon-giris.aspx.cs" Inherits="rezarvasyon_giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Üye Giris</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="top_menu1" Runat="Server">
    <div id="ust-kapsayici6">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="top_menu2" Runat="Server">
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="icerik" Runat="Server">
    <!--Yazı metinleri kapsayıcı başlangıç-->
	<div id="yazi-metinleri-kapsayici2">
		<div id="giris-kapsa">
		<h3>Üye Giris</h3>
			<table style="margin: 10px auto 10px auto; font-family: 'eurofurence light'; font-size: 22px; color: #FFFFFF; text-align: right;">
				<tr>
					<td>Üye Girisi:</td>
					<td style="text-align: left">
                        <asp:TextBox ID="TxtUye_adi" runat="server"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Sifre:</td>
					<td style="text-align: left">
                        <asp:TextBox ID="TxtSifre" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>
                        <asp:Label ID="LblMesaj" runat="server"></asp:Label>
                    </td>
                    <td style="text-align: left"><asp:Button ID="BtnUye_giris" runat="server" 
                            Text="GİRİŞ" Width="150px" 
                            BackColor="#BB0036" BorderColor="#BB0036" Font-Names="eurofurence light" 
                            Font-Size="22px" ForeColor="White" Height="45px" onclick="uye_giris_Click" /></td>
				</tr>
				<tr>
					<td>
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                            ForeColor="White" NavigateUrl="~/rezarvasyon-uye-ol.aspx">Üye Ol</asp:HyperLink>
                    </td>
				</tr>
			</table>
		</div>
	</div>
	<!--Yazı metinleri kapsayıcı bitiş-->
</asp:Content>

