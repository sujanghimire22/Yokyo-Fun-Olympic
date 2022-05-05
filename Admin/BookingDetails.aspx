<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:scroll">
    <asp:GridView ID="gvBookingDetails" runat="server" Width="100%" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BookingId" DataSourceID="bookingDataSource" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <asp:SqlDataSource ID="bookingDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" DeleteCommand="DELETE FROM [BookingTable] WHERE [BookingId] = @BookingId" InsertCommand="INSERT INTO [BookingTable] ([CustomerId], [BroadCastId], [BookingDate], [Remarks]) VALUES (@CustomerId, @BroadCastId, @BookingDate, @Remarks)" SelectCommand="SELECT * FROM [BookingTable]" UpdateCommand="UPDATE [BookingTable] SET [CustomerId] = @CustomerId, [BroadCastId] = @BroadCastId, [BookingDate] = @BookingDate, [Remarks] = @Remarks WHERE [BookingId] = @BookingId">
        <DeleteParameters>
            <asp:Parameter Name="BookingId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerId" Type="Int32" />
            <asp:Parameter Name="BroadCastId" Type="Int32" />
            <asp:Parameter Name="BookingDate" DbType="Date" />
            <asp:Parameter Name="Remarks" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerId" Type="Int32" />
            <asp:Parameter Name="BroadCastId" Type="Int32" />
            <asp:Parameter Name="BookingDate" DbType="Date" />
            <asp:Parameter Name="Remarks" Type="String" />
            <asp:Parameter Name="BookingId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>

    <div style="position:absolute;top:60%;left:5%">
        <asp:Button ID="btnUploadVideo" Text="Upload Video" runat="server" Height="40px" Width="400px" BackColor="Green" Font-Size="30px" OnClick="btnUploadVideo_Click"/>
     
           
           
   </div>
</asp:Content>
