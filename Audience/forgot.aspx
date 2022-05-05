<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="YokyoOlympicGames.Audience.forgot" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #audienceLogin {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }

            #audienceLogin .input {
                font-size: 20px;
                color: green;
                text-align: center;
                margin-top:2px;
            }

        .btn {
            font-size: 30px;
            text-align: center;
            background: green;
            color: #fff;
            width: 195px;
        }
    </style>
    <title>Welcome to Yokyo Games Registration System</title>
</head>
<body>
    <form id="form1" runat="server">

        <h1 style="text-align: center; font-family: Verdana; color: green;">Welcome to Yokyo Games</h1>
        <hr style="width: 50%" />
        <h2 style="text-align: center; font-family: Verdana; color: red; padding: 20px;">Forgot Password</h2>
        <div id="ForgotPassword">
            <table style="font-size: 20px;">
                <tr>
                    
                    <td>Email Address:</td>
                    <td>
                        <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please provide email address" ControlToValidate="txtEmailAddress"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                
                <tr>
                    
                </tr>
                <tr><td colspan="4"><asp:Button ID="btnSendEmail" Text="Send Email" runat="server" CssClass="btn" Width="400px" OnClick="btnSendEmail_Click"  /></td></tr>
                <tr><td colspan="4"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
            </table>
        </div>
    </form>

</body>
</html>
