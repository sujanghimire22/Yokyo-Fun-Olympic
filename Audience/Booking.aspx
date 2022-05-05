<%@ Page Title="" Language="C#" MasterPageFile="~/Audience/AudienceMaster.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="YokyoOlympicGames.Audience.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table><tr>
        <td>Broadcast Name:</td>
        <td><asp:DropDownList ID="ddlBroadCast" runat="server" CssClass="input"></asp:DropDownList></td>
           </tr>
        <tr><td>Booking Date:</td>
            <td><asp:TextBox ID="txtBookingDate" runat="server" CssClass="input"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Remarks:</td>
            <td><asp:TextBox runat="server" ID="txtRemarks" TextMode="MultiLine" Rows="5" CssClass="input"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4"><asp:Button ID="btnCreateBooking" runat="server" Text="Book" CssClass="btn" OnClick="btnCreateBooking_Click" BackColor="Lime" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black" />
                <asp:Button ID="btnBookingDetails" runat="server" Text="Booking Details" CssClass="btn" OnClick="btnBookingDetails_Click" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black" />
            </td>
        </tr>
        <tr><td colspan="4"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
    </table>
</div>
</asp:Content>
