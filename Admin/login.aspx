<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="YokyoOlympicGames.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yokyo Games Registration System</title>
    <style>
        h1,h2 {
            text-align: center;
            font-family: Verdana;
            color: #ff6a00;
        }

        .input {
            height: 40px;
            width: 500px;
            text-align: center;
            border: none;
            border-bottom: 2px solid #570505;
            font-size: 30px;
            font-family: Verdana;
        }

        .btn {
            height: 50px;
            width: 500px;
            text-align: center;
            font-size: 30px;
            font-family: Verdana;
            line-height:50px;
            background:#ff6a00;
            color:#fff;
        }

        .form {
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%,-50%)
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="font-size: 400%; font-weight: bold; color: #0000FF; text-decoration: underline; font-family: 'Times New Roman', Times, serif;">Yokyo Games Registration System</h1>
            <hr style="width:50%" />
            <h2 style="margin-top:5px; color: #FF0000;">Admin Panel</h2>
        </div>
        <div class="form">
            <table>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtUserName" CssClass="input" placeholder="User Name"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="input" placeholder="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" BackColor="Green" />
                        <tr><td colspan="4"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
