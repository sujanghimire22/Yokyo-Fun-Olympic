<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:scroll">
    <asp:GridView  Width="100%" ID="gvGameDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="GameId" DataSourceID="gameDetailsDataSource" EnableModelValidation="True" GridLines="None">
        <Columns>
            <asp:BoundField DataField="GameId" HeaderText="GameId" InsertVisible="False" ReadOnly="True" SortExpression="GameId" />
            <asp:BoundField DataField="GameTypeId" HeaderText="GameTypeId" SortExpression="GameTypeId" />
            <asp:BoundField DataField="GameName" HeaderText="GameName" SortExpression="GameName" />
            <asp:BoundField DataField="GameDescription" HeaderText="GameDescription" SortExpression="GameDescription" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="gameDetailsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [GameTable]">
    </asp:SqlDataSource>
</div>
</asp:Content>
