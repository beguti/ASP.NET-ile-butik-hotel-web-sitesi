<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rezarvasyon-uye-ol.aspx.cs" Inherits="rezarvasyon_uye_ol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Üye Ol</title> 
    <style type="text/css">
        .style1
        {
            width: 246px;
        }
        .style2
        {
            width: 96px;
        }
        .style3
        {
            width: 96px;
            height: 76px;
        }
        .style4
        {
            width: 246px;
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="top_menu1" Runat="Server">
    <div id="ust-kapsayici6">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="top_menu2" Runat="Server">
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="icerik" Runat="Server">
    <!--Yazı metinleri kapsayıcı başlangıç-->
	<div id="yazi-metinleri-kapsayici3">
		<div id="uye-kapsa">
		<h3 style="font-family: 'eurofurence light'">Üye Ol</h3>
			<table style="margin: 10px auto 10px auto; font-family: 'eurofurence light'; font-size: 22px; color: #FFFFFF; text-align: right; height: 632px;">
				<tr>
					<td class="style2">Ad:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtAd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TxtAd" ErrorMessage="Boş bırakmaınız!" Font-Size="Medium"></asp:RequiredFieldValidator>
                        <br />
                    </td>
				</tr>
				<tr>
					<td class="style2">Soyad:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtSoyad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TxtSoyad" ErrorMessage="Boş bırakmaınız!" Font-Size="Medium"></asp:RequiredFieldValidator>
                        <br />
                    </td>
				</tr>
				<tr>
					<td class="style2">Dogum TarihiDoğum Tarihi:</td>
					<td class="style1" style="text-align: left">
					&nbsp;<asp:DropDownList ID="DdlDogum_gunu" runat="server" Height="19px" 
                            Width="52px">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DdlDogum_ayi" runat="server" Height="21px" Width="46px">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DdlDogum_yili" runat="server">
                        </asp:DropDownList>
&nbsp;
					    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="DdlDogum_gunu" ErrorMessage="Boş bırakmaınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="DdlDogum_ayi" ErrorMessage="Boş bırakmaınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DdlDogum_yili" ErrorMessage="Boş bırakmaınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
					    <br />
					</td>
				</tr>
				<tr>
					<td class="style2">Cinsiyet:<td class="style1" style="text-align: left">
						<asp:RadioButtonList ID="RblCinsiyet" runat="server" Font-Size="14px" 
                            Height="34px" RepeatDirection="Horizontal" TextAlign="Left" Width="149px">
                            <asp:ListItem>Kadın</asp:ListItem>
                            <asp:ListItem>Erkek</asp:ListItem>
                        </asp:RadioButtonList>
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="RblCinsiyet" ErrorMessage="Boş bırakmaınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
					    <br />
					</td>
				</tr>
				<tr>
					<td class="style2">Telefon:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtTelefon" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="TxtTelefon" ErrorMessage="Boş bırakmaınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
                        <br />
                    </td>
				</tr>
				<tr>
					<td class="style2">E-posta:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtEposta" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="TxtEposta" ErrorMessage="Boş bırakmaınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TxtEposta" ErrorMessage="Doğru giriniz!" Font-Size="Medium" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
				</tr>
				<tr>
					<td class="style2">Üye Adi:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtUyeAdi" runat="server" AutoPostBack="True" 
                            ontextchanged="TxtUyeAdi_TextChanged"></asp:TextBox>
                        <asp:Label ID="LblUyeMesaj" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="TxtUyeAdi" ErrorMessage="Boş bırakmaınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
				</tr>
				<tr>
					<td class="style2">Sifre:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtUyeSifre" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="TxtUyeSifre" ErrorMessage="Boş bırakmaınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
                        <br />
                    </td>
				</tr>
				<tr>
					<td class="style2">Sifre Tekrar:</td>
					<td class="style1" style="text-align: left">
                        <asp:TextBox ID="TxtUyeSifreTekrar" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TxtUyeSifre" ControlToValidate="TxtUyeSifreTekrar" 
                            ErrorMessage="Şifreler uyuşmuyor!" Font-Size="Medium"></asp:CompareValidator>
                        <br />
                    </td>
				</tr>
				<tr>
                    <td class="style3">
                        <a style="text-decoration:none"  href="rezarvasyon-giris.aspx"><asp:Label ID="LblMesaj" runat="server" 
                            Font-Size="Medium"  Font-Names="eurofurence light" ForeColor="White" ></asp:Label></a>
                    </td>
					<td class="style4" style="text-align: left">
                        <asp:Button ID="uye_ol" runat="server" 
                            Text="Üye Ol" Width="150px" 
                            BackColor="#BB0036" BorderColor="#BB0036" Font-Names="eurofurence light" 
                            Font-Size="22px" ForeColor="White" Height="45px" onclick="uye_ol_Click" /></td>
				</tr>
			</table>
		</div>
	</div>
	<!--Yazı metinleri kapsayıcı bitiş-->
</asp:Content>

