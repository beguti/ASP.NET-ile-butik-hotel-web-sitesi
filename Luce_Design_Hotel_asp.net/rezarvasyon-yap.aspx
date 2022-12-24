<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rezarvasyon-yap.aspx.cs" Inherits="rezarvasyon_yap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Rezarvasyon</title>
    <link href="css/calendar-blue.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
    <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
    <link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    $(document).ready(function () {
        $("#<%=txtCikis.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
        $("#<%=txtGiris.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="top_menu1" Runat="Server">
    <div id="ust-kapsayici6">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="top_menu2" Runat="Server">
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="icerik" Runat="Server">
    <div id="yazi-metinleri-kapsayici3">
        <div id="uye-kapsa">
            <h3 style="font-family: 'eurofurence light'; font-size: 22px">Rezarvasyon</h3><br />
            <p style="font-family: 'eurofurence light'; font-size: 22px">Sn.
                <asp:Label ID="LblKullanici" runat="server"></asp:Label>
            </p>
            <table style="margin: 10px auto 10px auto; font-family: 'eurofurence light'; font-size: 22px; color: #FFFFFF; text-align: right;">
                <tr>
                    <td>
                        Kisi Sayisi(Yetişkin):</td>
                    <td>
                        <asp:DropDownList ID="DdlKisi_sayisi" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Kisi Sayisi(Çocuk):</td>
                    <td>
                        <asp:DropDownList ID="DdlCocuk_sayisi" runat="server" 
                            onselectedindexchanged="DdlCocuk_sayisi_SelectedIndexChanged" 
                            AutoPostBack="True">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <asp:Panel ID="PnlCocukSayisi" runat="server" Visible="False">
                <tr>
                    <td>
                        Çocuk Yaslari:
                    </td>
                    <td>
                        <asp:Panel ID="PanelCocuk1" runat="server">
                            <asp:DropDownList ID="DdlCocuk1_yas" runat="server">
                            </asp:DropDownList>
                        </asp:Panel>
                        <asp:Panel ID="PanelCocuk2" runat="server">
                            <asp:DropDownList ID="DdlCocuk2_yas" runat="server">
                            </asp:DropDownList>
                        </asp:Panel>
                        <asp:Panel ID="PanelCocuk3" runat="server">
                            <asp:DropDownList ID="DdlCocuk3_yas" runat="server">
                            </asp:DropDownList>
                        </asp:Panel>
                    </td>
                </tr> 
               </asp:Panel>
                <tr>
                    <td>
                        Oda Türü:</td>
                    <td>
                        <asp:DropDownList ID="DdlOda_turu" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Junior Suit Odamız</asp:ListItem>
                            <asp:ListItem>Jakuzili Çatı Suiti</asp:ListItem>
                            <asp:ListItem>Cumbalı Odalarımız</asp:ListItem>
                            <asp:ListItem>Delux Suit Odamız</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:Label ID="LblHata" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Fiyati:</td>
                    <td>
                        <asp:Label ID="LblFiyat" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Giris Tarihi:</td>
                    <td>
                        <asp:TextBox ID="txtGiris" runat="server"></asp:TextBox><img src="img/calendar.png" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtGiris" ErrorMessage="Boş bırakmayınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Çikis Tarihi:</td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtCikis" runat="server" /><img src="img/calendar.png" />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCikis" ErrorMessage="Boş bırakmayınız!" 
                            Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Gece Sayisi:</td>
                    <td>
                        <asp:DropDownList ID="DdlGece_sayisi" runat="server" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnRezarvasyon" runat="server" Text="Rezarvasyon Yap" Width="150px" 
                            BackColor="#BB0036" BorderColor="#BB0036" Font-Names="eurofurence light" 
                            Font-Size="22px" ForeColor="White" Height="45px" 
                            onclick="BtnRezarvasyon_Click" />
                    </td>
                    <td>
                        <asp:Label ID="LblRezarvasyon" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="eurofurence light" 
            Font-Size="24px" Font-Underline="False" ForeColor="White" 
            NavigateUrl="~/rezarvasyon.aspx">Menüye Dön!</asp:HyperLink>
        </div>
    </div>
	<!--Yazı metinleri kapsayıcı bitiş-->
</asp:Content>

