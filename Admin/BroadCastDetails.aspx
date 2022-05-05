<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BroadCastDetails.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:scroll">
       <asp:GridView Width="100%" ID="gvBroadCastDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BroadCastId" DataSourceID="broadCastSqlDataSource" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical">
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
        <asp:SqlDataSource ID="broadCastSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [GameBroadCastTable]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="broadCastSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString %>" SelectCommand="SELECT * FROM [GameBroadCastTable]"></asp:SqlDataSource>
   </div>
</asp:Content>
