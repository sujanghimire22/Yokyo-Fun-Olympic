<%@ Page Title="" Language="C#" MasterPageFile="~/Audience/AudienceMaster.Master" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="YokyoOlympicGames.Audience.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:scroll">
        <asp:GridView ID="gvBookingDetails" runat="server" width="100%" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BookingId" DataSourceID="bookingDataSource" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
                <asp:BoundField DataField="BroadCastId" HeaderText="BroadCastId" SortExpression="BroadCastId" />
                <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
                <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="bookingDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [BookingTable]">
        </asp:SqlDataSource>
        
    </div>
   <div style="position:absolute;top:60%;left:5%">
        <asp:Button ID="btnVideo" Text="Live Video" runat="server" Height="40px" Width="400px" BackColor="Red" ForeColor="Black" Font-Size="30px" OnClick="btnVideo_Click"/>
     
           
           
   </div>
</asp:Content>

