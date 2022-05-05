<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="uploadVideo.aspx.cs" Inherits="YokyoOlympicGames.Admin.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center;">Upload Video</h1>
    <div>
        <table>
            <tr>
                <td>Game Name:</td>
                <td><asp:DropDownList ID="ddlGames" runat="server" DataSourceID="gameDatasourceNew" DataTextField="GameName" DataValueField="GameId"></asp:DropDownList>
                    <asp:SqlDataSource ID="gameDatasourceNew" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [GameTable]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="gameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:YokyoGamesDBConnectionString3 %>" SelectCommand="SELECT * FROM [VideoTable]"></asp:SqlDataSource>
                </td>
          </tr>
          <tr>
              <td>Video Name:</td>
              <td><asp:TextBox ID="txtVideoName" runat="server"></asp:TextBox></td>
          </tr>
           
            <tr>
                <td>Description:</td>
                <td><asp:TextBox ID="txtDescription" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Upload File:</td><td><asp:FileUpload ID="fUpload" runat="server" /></td></tr>
            
            <tr>
                <td colspan="4">
                    <asp:Button ID="btnUpload" runat="server" Text="Upload Video"  OnClick="btnUpload_Click" BackColor="Green" />
                    <asp:Button ID ="btnEditVideo" runat="server" Text="Edit Video"  BackColor="Blue" OnClick="btnEditVideo_Click"/>

                </td>
            </tr>
            <tr><td colspan="4"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
        </table>
    </div>
</asp:Content>
