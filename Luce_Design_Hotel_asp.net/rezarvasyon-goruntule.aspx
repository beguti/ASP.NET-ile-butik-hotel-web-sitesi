<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rezarvasyon-goruntule.aspx.cs" Inherits="rezarvasyon_goruntule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Rezarvasyonlarım</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="top_menu1" Runat="Server">
    <div id="ust-kapsayici2">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="top_menu2" Runat="Server">
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="icerik" Runat="Server">
<div id="yazi-metinleri-kapsayici3">
    <div id="rezarvasyon-goruntule">
		<h3>Rezarvasyonlarınız</h3><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="AccessDataSource1" Font-Size="Large" 
            ForeColor="Black" GridLines="Horizontal" Font-Names="eurofurence light" 
            AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="ad" HeaderText="Adı" SortExpression="ad" />
                <asp:BoundField DataField="kisi_sayisi" HeaderText="Kişi Adeti" 
                    SortExpression="kisi_sayisi" />
                <asp:BoundField DataField="cocuk_sayisi" HeaderText="Çocuk Adeti" 
                    SortExpression="cocuk_sayisi" />
                <asp:BoundField DataField="cocuk_yasi_1" HeaderText="1. Çocuk Yaşı" 
                    SortExpression="cocuk_yasi_1" />
                <asp:BoundField DataField="cocuk_yasi_2" HeaderText="2. Çocuk Yaşı" 
                    SortExpression="cocuk_yasi_2" />
                <asp:BoundField DataField="cocuk_yasi_3" HeaderText="3. Çocuk Yaşı" 
                    SortExpression="cocuk_yasi_3" />
                <asp:BoundField DataField="oda_turu" HeaderText="Oda Türü" 
                    SortExpression="oda_turu" />
                <asp:BoundField DataField="giris_tarihi" HeaderText="Giriş Tarihi" 
                    SortExpression="giris_tarihi" />
                <asp:BoundField DataField="cıkıs_tarihi" HeaderText="Çıkış Tarihi" 
                    SortExpression="cıkıs_tarihi" />
                <asp:BoundField DataField="gece_sayisi" HeaderText="Gece Sayısı" 
                    SortExpression="gece_sayisi" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
	    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/butik-hotel-veritabani.accdb" 
            SelectCommand="SELECT [ad], [kisi_sayisi], [cocuk_sayisi], [cocuk_yasi_1], [cocuk_yasi_2], [cocuk_yasi_3], [oda_turu], [giris_tarihi], [cıkıs_tarihi], [gece_sayisi] FROM [rezervasyon] WHERE ([uye_adi] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="uye_adi" Name="uye_adi" 
                    SessionField="uye_adi" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
	    <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="eurofurence light" 
            Font-Size="24px" Font-Underline="False" ForeColor="White" 
            NavigateUrl="~/rezarvasyon.aspx">Menüye Dön!</asp:HyperLink>
	</div>
</div>
</asp:Content>

