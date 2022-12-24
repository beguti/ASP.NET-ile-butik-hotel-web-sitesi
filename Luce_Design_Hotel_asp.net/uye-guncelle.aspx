<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uye-guncelle.aspx.cs" Inherits="uye_guncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Üyelik Güncelle</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="top_menu1" Runat="Server">
<div id="ust-kapsayici7">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="top_menu2" Runat="Server">
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="icerik" Runat="Server">
<!--Yazı metinleri kapsayıcı başlangıç-->
	<div id="yazi-metinleri-kapsayici3">
		<div id="uye-kapsa">
		<h3 style="font-family: 'eurofurence light'">Üye Bilgilerini Güncelle</h3><br /><br />
			<table style="margin: 10px auto 10px auto; font-family: 'eurofurence light'; font-size: 22px; color: #FFFFFF; text-align: right;">
				<tr>
					<td>Ad:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtAd" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TxtAd" ErrorMessage="Boş bırakmayınız!"></asp:RequiredFieldValidator>
                    </td>
				</tr>
				<tr>
					<td>Soyad:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtSoyad" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TxtSoyad" ErrorMessage="Boş bırakmayınız!"></asp:RequiredFieldValidator>
                    </td>
				</tr>
				<tr>
					<td>E-posta:</td>
                    <td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtEposta" runat="server"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TxtEposta" ErrorMessage="Doğru giriniz!" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
				</tr>
				<tr>
					<td>Sifre:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtUyeSifre" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TxtUyeSifre" ErrorMessage="Boş bırakmayınız!"></asp:RequiredFieldValidator>
                    </td>
				</tr>
				<tr>
					<td>Sifre Tekrar:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtUyeSifreTekrar" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TxtUyeSifre" ControlToValidate="TxtUyeSifreTekrar" 
                            ErrorMessage="Şifreler eşleşmiyor!"></asp:CompareValidator>
                    </td>
				</tr>
				<tr>
                    <td>
                        <asp:Label ID="LblMesaj" runat="server"></asp:Label>
                    </td>
					<td class="style1" style="text-align: left">
                        <asp:Button ID="BtnGuncelle" runat="server" 
                            Text="Güncelle" Width="150px" 
                            BackColor="#BB0036" BorderColor="#BB0036" Font-Names="eurofurence light" 
                            Font-Size="22px" ForeColor="White" Height="45px" onclick="uye_guncelle_Click" /></td>
				</tr>
			</table>
		    <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="eurofurence light" 
                Font-Size="24px" Font-Underline="False" ForeColor="White" 
                NavigateUrl="~/rezarvasyon.aspx">Menüye Dön!</asp:HyperLink>
		</div>
	</div>
	<!--Yazı metinleri kapsayıcı bitiş-->
</asp:Content>

