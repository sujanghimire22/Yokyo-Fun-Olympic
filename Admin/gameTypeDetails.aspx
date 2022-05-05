<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="gameTypeDetails.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:scroll">
        <asp:GridView  Width="100%" ID="gvGameTypeDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="GameTypeId" DataSourceID="gameTypeDataSource" EnableModelValidation="True" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="GameTypeId" HeaderText="GameTypeId" InsertVisible="False" ReadOnly="True" SortExpression="GameTypeId" />
                <asp:BoundField DataField="GameTypeName" HeaderText="GameTypeName" SortExpression="GameTypeName" />
                <asp:BoundField DataField="GameTypeDescription" HeaderText="GameTypeDescription" SortExpression="GameTypeDescription" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:GridView>
        <asp:SqlDataSource ID="gameTypeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" DeleteCommand="DELETE FROM [GameTypeTable] WHERE [GameTypeId] = @GameTypeId" InsertCommand="INSERT INTO [GameTypeTable] ([GameTypeName], [GameTypeDescription]) VALUES (@GameTypeName, @GameTypeDescription)" SelectCommand="SELECT * FROM [GameTypeTable]" UpdateCommand="UPDATE [GameTypeTable] SET [GameTypeName] = @GameTypeName, [GameTypeDescription] = @GameTypeDescription WHERE [GameTypeId] = @GameTypeId">
            <DeleteParameters>
                <asp:Parameter Name="GameTypeId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GameTypeName" Type="String" />
                <asp:Parameter Name="GameTypeDescription" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GameTypeName" Type="String" />
                <asp:Parameter Name="GameTypeDescription" Type="String" />
                <asp:Parameter Name="GameTypeId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
