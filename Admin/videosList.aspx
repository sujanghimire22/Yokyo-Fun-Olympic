<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="videosList.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><asp:DataList ID="dlVideoList" runat="server" DataKeyField="VideoId" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal">
      <ItemTemplate>
          VideoId:
          <asp:Label ID="VideoIdLabel" runat="server" Text='<%# Eval("VideoId") %>' />
          <br />
          GameId:
          <asp:Label ID="GameIdLabel" runat="server" Text='<%# Eval("GameId") %>' />
          <br />
          VideoName:
          <asp:Label ID="VideoNameLabel" runat="server" Text='<%# Eval("VideoName") %>' />
          <br />
          VideoPath:
          <asp:Label ID="VideoPathLabel" runat="server" Text='<%# Eval("VideoPath") %>' />
          <br />
          Description:
          <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
          <br />
<br />
      </ItemTemplate>
      </asp:DataList></div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [VideoTable]"></asp:SqlDataSource>
    </div>
</asp:Content>
