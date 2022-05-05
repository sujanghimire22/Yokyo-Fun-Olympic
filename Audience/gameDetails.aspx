<%@ Page Title="" Language="C#" MasterPageFile="~/Audience/AudienceMaster.Master" AutoEventWireup="true" CodeBehind="gameDetails.aspx.cs" Inherits="YokyoOlympicGames.Audience.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:scroll">
    <asp:GridView Width="100%" ID="gvGameDetail" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="GameId" DataSourceID="gameTypeDetails" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="GameId" HeaderText="GameId" InsertVisible="False" ReadOnly="True" SortExpression="GameId" />
            <asp:BoundField DataField="GameTypeId" HeaderText="GameTypeId" SortExpression="GameTypeId" />
            <asp:BoundField DataField="GameName" HeaderText="GameName" SortExpression="GameName" />
            <asp:BoundField DataField="GameDescription" HeaderText="GameDescription" SortExpression="GameDescription" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="gameTypeDetails" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [GameTable]"></asp:SqlDataSource>
</div>
</asp:Content>
