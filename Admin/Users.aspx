<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>User Management Form</h2>
    <div>
        <table>
            <tr><td>User Name:</td>
                <td><asp:TextBox ID="txtUserName" runat="server" CssClass="input"></asp:TextBox></td>
            </tr>
              <tr><td>Password:</td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input"></asp:TextBox></td>
            </tr>
              <tr><td>Confirm Password:</td>
                <td><asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                
                <td colspan="6"><asp:Button ID="btnCreateUser" Text="Create User" runat="server" CssClass="btn" OnClick="btnCreateUser_Click" BackColor="Lime" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black"/>
                <asp:Button ID="btnDetails" Text="User Details" runat="server" CssClass="btn" OnClick="btnDetails_Click" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black"/>
                <asp:Button ID="btnEditUsers" Text="Edit User" runat="server" CssClass="btn" BackColor="Yellow" BorderColor="Yellow" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black" OnClick="btnEditUsers_Click"/></td>
                
                </tr>
            <tr>
                <td colspan="4"><asp:Label ID="lblMessage" runat="server" CssClass="input"></asp:Label></td>
            </tr>
        </table>
    </div>
   
</asp:Content>
