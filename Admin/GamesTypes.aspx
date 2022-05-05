<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="GamesTypes.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Games Types Management Form</h2>
    <div>
        <table>
            
              <tr><td>Game Type Name:</td>
                <td><asp:TextBox ID="txtGamesTypeName" runat="server" CssClass="input"></asp:TextBox></td>
            </tr>
              <tr><td>Description:</td>
                <td><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="input" Rows="5"></asp:TextBox></td>
            </tr>
            <tr><td colspan="6"><asp:Button ID="btnCreateGameType" Text="Create Game Type" runat="server" CssClass="btn" OnClick="btnCreateGameType_Click" BackColor="Lime" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black"/>
                <asp:Button ID="btnDetails" Text="Details" runat="server" CssClass="btn" OnClick="btnDetails_Click" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black"/>
               
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
