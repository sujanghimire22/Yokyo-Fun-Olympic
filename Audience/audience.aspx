<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="audience.aspx.cs" Inherits="YokyoOlympicGames.Audience.audience" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Yokyo Games</title>
    <style>
        #audienceLogin{
           position:absolute;top:30%;left:50%;transform:translate(-50%,-50%);
        }
        #audienceLogin .input{
            font-size:30px;
            border:none;
            border-bottom:2px solid green;
            color:green;
            text-align:center;
            width:400px;
        }
        .btn{font-size:30px;text-align:center;background:green;color:#fff;width:195px;}
        .auto-style1 {
            font-size: 30px;
            text-align: center;
            background: green;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;font-family:Dubai; color:#FF0000; font-size: 50px; background-color: #0000FF; text-decoration: underline blink; text-transform: capitalize; font-style: normal; font-weight: bold;">&nbsp;Welcome to Yokyo Games</h1>
            <hr style="width:50%" />
        &nbsp;</div>
        <div id="audienceLogin">
            <table>
                <tr><td><asp:TextBox ID="txtUserName" runat="server" placeholder="User Name" CssClass="input"></asp:TextBox></td></tr>
                <tr><td><asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="input" TextMode="password"></asp:TextBox></td></tr>
                <tr><td colspan="4"><asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn" OnClick="btnLogin_Click" />
                    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" BackColor="Blue" CssClass="btn" OnClick="btnSignUp_Click" />
                    <asp:Button ID="btnForgot" runat="server" Text="Forgot Password?" BackColor="Red" CssClass="auto-style1" Height="44px" OnClick="btnForgot_Click" Width="387px" />
                    </td></tr>
                <tr><td colspan="4"><asp:Label id="lblMessage" runat="server" Text=""></asp:Label></td></tr>
            </table>
        </div>
    </form>
</body>
</html>
