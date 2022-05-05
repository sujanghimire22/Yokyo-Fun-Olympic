<%@ Page Title="" Language="C#" MasterPageFile="~/Audience/AudienceMaster.Master" AutoEventWireup="true" CodeBehind="broadCastDetails.aspx.cs" Inherits="YokyoOlympicGames.Audience.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:scroll">
    <asp:GridView ID="gvbroadCastDetails" Width="100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BroadCastId" DataSourceID="broadCastDataSource" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BroadCastId" HeaderText="BroadCastId" InsertVisible="False" ReadOnly="True" SortExpression="BroadCastId" />
            <asp:BoundField DataField="BroadCastName" HeaderText="BroadCastName" SortExpression="BroadCastName" />
            <asp:BoundField DataField="GameId" HeaderText="GameId" SortExpression="GameId" />
            <asp:BoundField DataField="BroadCastDate" HeaderText="BroadCastDate" SortExpression="BroadCastDate" />
            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="broadCastDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [GameBroadCastTable]"></asp:SqlDataSource>
</div>
</asp:Content>
