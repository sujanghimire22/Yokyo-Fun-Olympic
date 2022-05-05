<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BroadCast.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>User Management Form</h2>
    <div>
        <table>
            <tr><td>Broad Cast Name:</td>
                <td><asp:TextBox ID="txtBroadCastName" runat="server" CssClass="input"></asp:TextBox></td>
            </tr>
              <tr><td>Game:</td>
                <td><asp:DropDownList ID="ddlGames" runat="server" CssClass="input"></asp:DropDownList></td>
            </tr>
              <tr><td>BroadCast Date:</td>
                <td><asp:TextBox ID="txtBroadCastDate" runat="server" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Remarks:</td>
                <td><asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" CssClass="input" Rows="5"></asp:TextBox></td>
            </tr>
            <tr><td colspan="6"><asp:Button ID="btnAddBroadCastDetails" Text="Add BroadCast" runat="server" CssClass="btn" OnClick="btnAddBroadCastDetails_Click" BackColor="Lime" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black"/>
                <asp:Button ID="btnDetails" Text="BroadCast Details" runat="server" CssClass="btn" OnClick="btnDetails_Click" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Black"/>
                </td>
            </tr>
            <tr><td colspan="4"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
        </table>
    </div>
</asp:Content>
