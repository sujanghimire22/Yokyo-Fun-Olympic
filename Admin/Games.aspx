<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>User Management Form</h2>
    <div>
        <table>
            <tr><td>Game Type:</td>
                <td><asp:DropDownList ID="ddlGameType" runat="server" CssClass="input"></asp:DropDownList></td>
            </tr>
              <tr><td>Game Name:</td>
                <td><asp:TextBox ID="txtGameName" runat="server"  CssClass="input"></asp:TextBox></td>
            </tr>
              <tr><td>Description:</td>
                <td><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="5" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr><td colspan="6"><asp:Button ID="btnCreateGames" Text="Add Games" runat="server" CssClass="btn" OnClick="btnCreateGames_Click" BackColor="Lime" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black"/>
                <asp:Button ID="btnDetails" Text="Game Details" runat="server" CssClass="btn" OnClick="btnDetails_Click" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black"/>
               </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>
