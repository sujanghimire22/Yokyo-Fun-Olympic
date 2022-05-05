<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="audienceDetails.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:scroll">
        <asp:GridView ID="gvAudienceDetails" runat="server" Width="100%" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="AudienceId" DataSourceID="audienceDataSource" EnableModelValidation="True" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="gvAudienceDetails_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="AudienceId" HeaderText="AudienceId" InsertVisible="False" ReadOnly="True" SortExpression="AudienceId" />
                <asp:BoundField DataField="AudienceName" HeaderText="AudienceName" SortExpression="AudienceName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:GridView>
        <asp:SqlDataSource ID="audienceDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [AudienceTable]" OnSelecting="audienceDataSource_Selecting">
        </asp:SqlDataSource>
</div>
</asp:Content>
